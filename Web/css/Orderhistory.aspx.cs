using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Lib;

namespace Web
{
    public partial class Orderhistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["UserId"] != null))
                Response.Redirect("Login.aspx");

            if (!IsPostBack)
            {
                ViewState["PageNo"] = 1;
                ViewState["PageSize"] = ddlFindDisplay.SelectedValue;
                ViewState["TotalPage"] = 0;
                GetOrder();
            }

        }
        protected void iBtnGo_Click(object sender, EventArgs e)
        {
            ViewState["PageNo"] = 1;
            ViewState["PageSize"] = ddlFindDisplay.SelectedValue;
            GetOrder();

        }




        private void GetOrder()
        {
            System.Globalization.CultureInfo enGB = new System.Globalization.CultureInfo("en-GB");

            using (OrderDataContext loDC = new OrderDataContext())
            {
                DateTime? ldtFromDate = null, ldtToDate = null; 
                if (!string.IsNullOrEmpty(txtFromDate.Text) && !string.IsNullOrEmpty(txtToDate.Text))
                {
                    ldtFromDate = Convert.ToDateTime(txtFromDate.Text, enGB);
                    ldtToDate = Convert.ToDateTime(txtToDate.Text, enGB);
                }

                List<OrderMas_SelectAllResult> loOrder = loDC.OrderMas_SelectAll(null, null, Convert.ToInt32(Session["UserId"]),
                    ldtFromDate, ldtToDate, Convert.ToInt16(ViewState["PageNo"]), Convert.ToInt16(ViewState["PageSize"])).ToList();

                if (loOrder != null && loOrder.Count > 0)
                {
                    int liTotalRec = 0;

                    liTotalRec = Convert.ToInt16(loOrder[0].iTotalRec);
                    ViewState["TotalPage"] = Math.Ceiling(Convert.ToSingle(liTotalRec / Convert.ToSingle(ViewState["PageSize"])));

                    lblPageNo.Text = Convert.ToString(ViewState["PageNo"]) + "/" + Convert.ToString(ViewState["TotalPage"]);

                    if (liTotalRec > Convert.ToInt16(ViewState["PageSize"]) * Convert.ToInt16(ViewState["PageNo"]))
                        lbNext.Enabled = lbLast.Enabled = true;
                    else
                        lbNext.Enabled = lbLast.Enabled = false;

                    if (Convert.ToInt16(ViewState["PageNo"]) == 1)
                        lbFirst.Enabled = lbPrev.Enabled = false;
                    else
                        lbFirst.Enabled = lbPrev.Enabled = true;

                    rptOrder.DataSource = loOrder;
                    rptOrder.DataBind();
                }
                else
                {
                    //trNoRec.Visible = true;
                    rptOrder.DataSource = null;
                    rptOrder.DataBind();
                }
            }
        }

        protected void rptOrder_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}
