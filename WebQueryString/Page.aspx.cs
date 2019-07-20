using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQueryString
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["cnt"] = (int)Session["cnt"] + 1;
            lblSC.Text = Session["cnt"].ToString();

            Application["count"] = (int)Application["count"] + 1;
            lblAC.Text = Session["cnt"].ToString();
        }
    }
}