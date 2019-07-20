using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQueryString
{
    public partial class Session2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSessionId.Text = Session.SessionID;
            lblUName.Text = Session["uname"].ToString();
            lblPass.Text = Session["password"].ToString();
        }
    }
}