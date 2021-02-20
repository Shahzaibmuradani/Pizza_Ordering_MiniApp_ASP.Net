using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Krazy
{
    public partial class View_Feed : System.Web.UI.Page
    {
        Pizza db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new Pizza();
            if (!IsPostBack)
            {
                view();
            }

        }

        public void view()
        {
            var feed = (from s in db.feedbacks
                        select s).ToList();
            Repeater1.DataSource = feed;
            Repeater1.DataBind();
        }
    }
}