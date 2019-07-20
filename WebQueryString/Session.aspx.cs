using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQueryString
{
    public partial class Session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSessionId.Text = Session.SessionID;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["uname"] = txtUName.Text;
            Session["password"] = txtPass.Text;

            Response.Redirect("Session2.aspx");
        }
    }
}