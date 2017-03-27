using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationApplication
{
    public partial class AdmnAddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("StudentLogin.aspx");
            }
        }

        protected void StudentDetails_Click(object sender, EventArgs e)
        {
            StudentMultiView.ActiveViewIndex = 0;
        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }
    }
}