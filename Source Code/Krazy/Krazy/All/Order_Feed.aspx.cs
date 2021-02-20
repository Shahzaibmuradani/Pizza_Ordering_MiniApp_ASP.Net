using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Krazy
{
    public partial class Order_Feed : System.Web.UI.Page
    {
        feedback feed;
        OrderRepository repo;

        protected void Page_Load(object sender, EventArgs e)
        {
            repo = new OrderRepository();
        }

        protected void btnsavefeed_Click(object sender, EventArgs e)
        {
            feed = new feedback();
            feed.Flavour_Rating = DropDownList1.SelectedValue.ToString();
            feed.Delivery_Rating = RadioButtonList1.SelectedValue.ToString();
            feed.Comments = txtcomments.Text;
            repo.Insert_feed(feed);
            lblmsg.Text = "Done Successfully";
        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Feed.aspx");
        }

        protected void btnclearfeed_Click(object sender, EventArgs e)
        {
            DropDownList1.ClearSelection();
            RadioButtonList1.SelectedIndex = -1;
            txtcomments.Text = "";
            lblmsg.Text = "";
        }
    }
}