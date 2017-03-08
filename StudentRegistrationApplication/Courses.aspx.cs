using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationApplication
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewEnrolledClassButton_Click(object sender, EventArgs e)
        {
            CoursesMultiView.ActiveViewIndex = 0;
        }

        protected void BrowseClassButton_Click(object sender, EventArgs e)
        {
            CoursesMultiView.ActiveViewIndex = 1;
        }

        protected void RegisterClassButton_Click(object sender, EventArgs e)
        {
            CoursesMultiView.ActiveViewIndex = 2;
        }

        protected void PlanAheadButton_Click(object sender, EventArgs e)
        {

        }
    }
}