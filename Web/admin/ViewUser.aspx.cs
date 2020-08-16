using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Lib;

namespace Web.admin
{
    public partial class ViewUser1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCountry.Items.Insert(0, new ListItem("IND", "1"));

                using (StateDataContext loDc = new StateDataContext())
                {
                    ddlState.DataSource = loDc.StateMas_SelectAll(null);
                    ddlState.DataValueField = "Id";
                    ddlState.DataTextField = "Name";
                    ddlState.DataBind();
                    ddlState.Items.Insert(0, new ListItem("Select", "0"));
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Update();
        }

        private void Update()
        {
            try
            {
               UserDataContext loDataContext = new UserDataContext();

                string lsImgExt = null;
                if (fileImage.HasFile)
                    lsImgExt = fileImage.FileName.Substring(fileImage.FileName.LastIndexOf('.')).ToLower();

                loDataContext.UserMas_Update(Convert.ToInt32(Request.QueryString["Id"]), txtName.Text, txtAddress.Text, txtCity.Text, Convert.ToInt32(ddlState.SelectedValue),
                   Convert.ToInt16(ddlCountry.SelectedValue), Convert.ToInt16(ddlZipcode.SelectedValue), txtPhone.Text, ((Lib.CurrentUser)Session["CurrentUser"]).UserType, true);
           
                lblMessage.Text = "User Updated succusfully.";
                lblMessage.CssClass = "msg";
                lblMessage.Visible = true;
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                if (ex.Message.ToLower().Contains("uk_usermas"))
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "Username is already exist.";
                }
            }
        }


    }
}