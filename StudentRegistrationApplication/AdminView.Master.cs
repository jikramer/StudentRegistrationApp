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

        public string HeaderText {
            set { lblHeaderPage.Text = value; }
        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/Signup");
        }

        protected void StudentDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StudentDetails");
            
        }

        protected void OpenClose_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null && Session["role"] != null)
            {
                if (Session["role"].ToString() == "admin")
                {
                    Session.Clear();
                    Response.Redirect("~/Home.aspx");
                }

            }
        }
    }
}