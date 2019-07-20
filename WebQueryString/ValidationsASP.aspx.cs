using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQueryString
{
    public partial class ValidationsASP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            Response.Write("Custom validator called");

            TimeSpan ts = DateTime.Today - Convert.ToDateTime(txtDOB.Text);
            
            //DateTime db = Convert.ToDateTime(txtDOB.Text);
            //int diffAge = DateTime.Today.Year - db.Year;

            if(ts.Days/365==Convert.ToInt32(txtAge.Text))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Write("You are a valid user");
            }
            else
            {
                Response.Write("Invalid");
            }
        }
    }
}