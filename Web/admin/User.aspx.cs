using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Lib;

namespace Web.admin
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetUser();
            }

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ViewState["PageNo"] = 1;
            ViewState["PageSize"] = ddlUserType.SelectedValue;
            GetUser();
        }

        private void GetUser()
        {
            byte? UserType = null;
            if (!ddlUserType .SelectedValue .Equals ("0"))
                UserType = Convert.ToByte(ddlUserType.SelectedValue);

            string lsName = null;
            if (!String.IsNullOrEmpty(txtName.Text))
                lsName = txtName.Text.Trim();

            using (UserDataContext loDC = new UserDataContext())
            {
                List<UserMas_SelectAllResult> loUserMas = loDC.UserMas_SelectAll(null, UserType, true, null, txtName.Text).ToList();

                if (loUserMas != null && loUserMas.Count > 0)
                {
                    rptUser.DataSource = loUserMas;
                    rptUser.DataBind();
                }
                else
                {
                    rptUser.DataSource = null;
                    rptUser.DataBind();
                }
            }
        }

        

        protected void rptUser_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void btnSearch_click(object sender, EventArgs e)
        {
            GetUser();
        }
    }




}
    
