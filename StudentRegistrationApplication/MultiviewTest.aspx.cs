using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationApplication
{
    public partial class MultiviewTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                lblWelcome.Text = "Welcome " + HttpContext.Current.Session["username"].ToString();
        }

        protected void ViewProfileButton_Click(object sender, EventArgs e)
        {
            StudentMultiView.ActiveViewIndex = 0;
        }

        protected void EditProfileButton_Click(object sender, EventArgs e)
        {
            StudentMultiView.ActiveViewIndex = 1;
        }
    }
}