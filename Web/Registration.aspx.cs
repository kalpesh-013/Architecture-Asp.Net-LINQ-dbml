using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using Lib;


namespace Web
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Insert())
            {
                Response.Redirect("~/Cart.aspx");
            }
        }


        public bool Insert()
        {
            int? iId = null;
            string strImgName = "";
            using (UserDataContext loDc = new UserDataContext())
            {
                loDc.UserMas_Insert(txtUserName.Text, txtPassword.Text, strImgName, txtName.Text, txtAddress.Text,
                   txtCity.Text, Convert.ToInt32(ddlState.SelectedValue), Convert.ToInt16(ddlCountry.SelectedValue),
                   Convert.ToInt32(txtZipCode.Text), txtPhoneNo.Text, 3, true, ref iId);
            }

            CurrentUser olUser = new CurrentUser(iId.Value, txtUserName.Text, txtName.Text, 3);
            Session["CurrentUser"] = olUser;
            return true;
        }
    }

}
  
