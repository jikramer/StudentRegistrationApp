using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationApplication
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                if(!(string.IsNullOrEmpty((string)Session["user"])))
                lbllogin.Text = "Logout";
            }

        }

        protected void OpenClose_Click(object sender, EventArgs e)
        {

            Response.Redirect("StudentLogin.aspx");
        }
       
    }
}