using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Lib;

namespace Web
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadMenu();
            LoadCart();
            LoadWishlist();

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserDataContext loDataContext = new UserDataContext();
            UserMas_SelectByUsernameResult loUserMas = loDataContext.UserMas_SelectByUsername(txtUserName.Text.Trim(), txtPassword.Text, 3).FirstOrDefault();
            if
                (loUserMas == null)
            {
                lblMsg.Text = "Invalid Username or Password.";
               // divMsg.Visible = true;
            }
            else
            {
                if (loUserMas.IsActive)
                {
                    CurrentUser olUser = new CurrentUser(loUserMas.Id, loUserMas.Username, loUserMas.Name, loUserMas.UserType);
                    Session["CurrentUser"] = olUser;

                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lblMsg.Text = "Inactive user. Please contact out Administrator.";
                   // divMsg.Visible = true;
                }
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        public void LoadCart()
        {
            //Cart data 
        }

        private void LoadWishlist()
        {
            //Wishlist data
        }

        private void LoadMenu()
        {
            //Menu build from database
        }

    }
}