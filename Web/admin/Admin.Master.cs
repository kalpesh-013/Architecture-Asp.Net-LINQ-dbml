using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["CurrentUser"] == null)
                {
                    lbLogout.Visible = false;
                }
                else
                {
                    lbLogout.Visible = true;
                    //lblUsername.Text = ((Lib.CurrentUser)Session["CurrentUser"]).DisplayName;
                }
            }
        }
        protected void lbLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            Response.Redirect("~/Login.aspx");
        }
    }
}