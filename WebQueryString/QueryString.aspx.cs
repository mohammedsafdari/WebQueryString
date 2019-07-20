using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQueryString
{
    public partial class QueryString : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string str = "QueryString2.aspx?fName=" + txtFName.Text;
            str += "&lName=" + txtLName.Text;

            Response.Redirect(str);
        }
    }
}