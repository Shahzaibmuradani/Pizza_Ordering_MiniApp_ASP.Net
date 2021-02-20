using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Krazy
{
    public partial class Place_order : System.Web.UI.Page
    {
        Customer ord;
        OrderRepository repo;

        protected void Page_Load(object sender, EventArgs e)
        {
            repo = new OrderRepository();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            ord = new Customer();
            ord.Flavor = DropDownList1.SelectedValue.ToString();
            ord.Size = DropDownList2.SelectedValue.ToString();
            ord.Toppings = RadioButtonList1.SelectedItem.ToString();
            ord.Drinks = RadioButtonList2.SelectedItem.ToString();
            ord.Cust_name = txtname.Text;
            ord.Cust_num = Convert.ToInt64(txtnum.Text);
            ord.Cust_add = txtadd.Text;
            ord.Date = DateTime.Now;
            ord.Status = true;
            repo.Insert(ord);
            lblmsg.Text = "Your Order has been Placed";
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtnum.Text = "";
            txtadd.Text = "";
            lblmsg.Text = "";

            RadioButtonList1.SelectedIndex = -1;
            RadioButtonList2.SelectedIndex = -1;
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();
        }
    }
}