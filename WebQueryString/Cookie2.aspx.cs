using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQueryString
{
    public partial class Cookie2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie ck = Request.Cookies["testCookie"];
            lblName.Text = ck["name"];
            lblAge.Text = ck["age"];
            lblCity.Text = ck["city"];

            HttpCookie ck1 = Request.Cookies["Colour"];
            if (ck1 != null)
                lblColour.BackColor = System.Drawing.Color.FromName(ck1.Value);
            else
                lblColour.BackColor = System.Drawing.Color.Honeydew;
        }
    }
}