using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

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

        protected void ddlBrowseTerm_SelectedIndexChanged(object sender, EventArgs e)
        {
             
     
        }

        protected void BrowseBtn_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                if (ddlBrowseTerm.SelectedValue.Equals("Spring 2016"))
                {
                    if (ddlBrowseMajor.SelectedValue.Equals("Software Engineering"))
                    {
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "Select * from SoftwareEng where CRN_No='401' or CRN_No='402' or CRN_No='410' or CRN_No='412' or CRN_No='415'";
                        cmd.Connection = con;
                        con.Open();
                        BrowseGridView.DataSource = cmd.ExecuteReader();
                        BrowseGridView.DataBind();
                    }
                }
            }

        }

        protected void ViewListBtn_Click(object sender, EventArgs e)
        {
            CourseList.Items.Clear();

            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                if (ddlRegisterTerm.SelectedValue.Equals("Spring 2016"))
                {
                    if (ddlRegisterMajor.SelectedValue.Equals("Software Engineering"))
                    {
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "Select Subject_Name from SoftwareEng where CRN_No='401' or CRN_No='402' or CRN_No='410' or CRN_No='412' or CRN_No='415'";
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader dr = cmd.ExecuteReader();
                        while (dr.Read())
                        {
                            CourseList.Items.Add(dr[0].ToString());                            
                        }
                    }
                }
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            if (CourseList.SelectedIndex > -1)
            {
                if (RegCourseList.Items.Count < 3)
                {
                    //string coursename = CourseList.SelectedItem.ToString();
                    if (RegCourseList.Items.Contains(CourseList.SelectedItem))
                    {
                        LblMessage.Text = "You cannot add same course twice!";
                    }
                    else
                    {
                        LblMessage.Text = " ";
                        RegCourseList.Items.Add(CourseList.SelectedItem.ToString());
                    }
                }
                else
                {
                    LblMessage.Text = "You can register only 3 courses at this time.";
                }
            }
            else
            {
                LblMessage.Text = "Please select a course from the course list";
            }
        }
    }
}