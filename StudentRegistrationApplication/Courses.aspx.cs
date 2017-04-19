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
        private string username;
        private string subject1, subject2, subject3;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Label masterMsgLabel = (Label)Master.FindControl("lblUserMessage");
                if (masterMsgLabel != null)
                {
                    masterMsgLabel.Text = "<strong>Error!</strong> Please log in first!";
                    Response.Redirect("StudentLogin");
                }
                else
                    Response.Write("Please Log in First!");
            }
            else
                username = Session["user"].ToString();

            Control c = Master.FindControl("masterNavBarDiv");// "masterDiv"= the Id of the div.
            c.Visible = false;//to set the div to be hidden.

        }

        protected void ViewEnrolledClassButton_Click(object sender, EventArgs e)
        {
            CoursesMultiView.ActiveViewIndex = 0;
            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select Course1, Course2, Course3 from StudentData where Student_UserID = '" + username + "'";
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    MessageLbl.Text = " ";
                    subject1 = dr[0].ToString();
                    subject2 = dr[1].ToString();
                    subject3 = dr[2].ToString();                   
                }
                else
                {
                    MessageLbl.Text = "<h2>You have not registered any classes yet!</h2>";
                }
            }
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand comnd = new SqlCommand();
                comnd.CommandText = "Select * from SoftwareEng where Subject_Name = '" + subject1 + "' or Subject_Name = '" + subject2 + "' or Subject_Name = '" + subject3 + "'";
                comnd.Connection = conn;
                conn.Open();
                EnrolledClassesGridView.DataSource = comnd.ExecuteReader();
                EnrolledClassesGridView.DataBind();
            }
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
            CoursesMultiView.ActiveViewIndex = 3;

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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (RegCourseList.Items.Count < 3)
            {
                LblMessage.Text = "You must select atleast 3 courses.";
            }
            else
            {
                LblMessage.Text = " ";
                           
                 ListItem[] listItemArray = new ListItem[RegCourseList.Items.Count];
                 RegCourseList.Items.CopyTo(listItemArray, 0);
                  string course1 = listItemArray[0].ToString();
                  string course2 = listItemArray[1].ToString();
                  string course3 = listItemArray[2].ToString();
                int Amount = 7200;

                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                  using (SqlConnection con = new SqlConnection(CS))
                  {               
                      SqlCommand cmd = new SqlCommand();
                      cmd.CommandText = "UPDATE StudentData SET Course1 = @course1, Course2 = @course2, Course3 = @course3, Amount = @Amount where Student_UserID = '" + username + "'";
                      cmd.Parameters.AddWithValue("@course1", course1);
                      cmd.Parameters.AddWithValue("@course2", course2);
                      cmd.Parameters.AddWithValue("@course3", course3);
                    cmd.Parameters.AddWithValue("@Amount", Amount);

                    cmd.Connection = con;
                      con.Open();
                      cmd.ExecuteNonQuery();


                    Label masterMsgLabel = (Label)Master.FindControl("lblUserMessage");
                    if (masterMsgLabel != null)
                    {
                        masterMsgLabel.Text = "<strong>Success!</strong> You have registered for your courses successfully!";
                    }
                    else
                        Response.Write("You have registered for your courses successfully!");

                    btnSubmit.Enabled = false;
                  }
            }
        }

        protected void TranscriptBtn_Click(object sender, EventArgs e)
        {
            CoursesMultiView.ActiveViewIndex = 4;
        }

        protected void ClearBtn_Click(object sender, EventArgs e)
        {
            RegCourseList.Items.Clear();
        }

        protected void RemoveBtn_Click(object sender, EventArgs e)
        {
            if (RegCourseList.SelectedIndex > -1)
            {
                LblMessage.Text = " ";
                RegCourseList.Items.Remove(RegCourseList.SelectedItem);
            }
            else
            {
                LblMessage.Text = "Please select the item to remove";
            }
        }
    }
}