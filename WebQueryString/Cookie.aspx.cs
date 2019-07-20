using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQueryString
{
    public partial class Cookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HttpCookie ck = new HttpCookie("testCookie");
            ck["name"] = txtName.Text;
            ck["age"] = txtAge.Text;
            ck["city"] = txtCity.Text;

            Response.Cookies.Add(ck);
            Response.Redirect("Cookie2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie ck1 = new HttpCookie("colour", DropDownList1.SelectedValue);
            ck1.Expires = DateTime.Now.AddSeconds(10);

            Response.Cookies.Add(ck1);
            Response.Redirect("Cookie2.aspx");
        }
    }
}