using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationApplication
{
    public partial class AdminView : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/Signup.aspx");
        }

        protected void StudentDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StudentDetails.aspx");
            
        }
    }
}