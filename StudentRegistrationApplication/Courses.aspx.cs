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
        bool check = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            ListBoxViewPlan.Items.Clear();

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
                if (ddlRegisterTerm.SelectedValue.Equals("Spring 2016") || ddlRegisterTerm.SelectedValue.Equals("Spring 2017"))
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
                        RegCourseList.Items.Add("Software Design Methods");
                    }
                }
            }

            string CnS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection connn = new SqlConnection(CnS))
            {
                if (ddlRegisterTerm.SelectedValue.Equals("Fall 2016"))
                {
                    if (ddlRegisterMajor.SelectedValue.Equals("Software Engineering"))
                    {
                        SqlCommand cmnd = new SqlCommand();
                        cmnd.CommandText = "Select Subject_Name from SoftwareEng where CRN_No='400' or CRN_No='420' or CRN_No='422' or CRN_No='423' or CRN_No='444'";
                        cmnd.Connection = connn;
                        connn.Open();
                        SqlDataReader drr = cmnd.ExecuteReader();
                        while (drr.Read())
                        {
                            CourseList.Items.Add(drr[0].ToString());
                        }
                        RegCourseList.Items.Add("Software Engineering Methods");
                        RegCourseList.Items.Add("Advanced Java");
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
                int Amount = (listItemArray.Length) * 2400;

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

                    check = true;

                    Label masterMsgLabel = (Label)Master.FindControl("lblUserMessage");
                    if (masterMsgLabel != null)
                    {
                        masterMsgLabel.Text = "<strong>Success!</strong> You have registered for your courses successfully!";
                    }
                    else
                        Response.Write("You have registered for your courses successfully!");

                    btnSubmit.Enabled = false;
                  }
                if (check == true)
                {
                    string CoS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                    using (SqlConnection connect = new SqlConnection(CoS))
                    {
                        SqlCommand scmd = new SqlCommand();
                        scmd.CommandText = "Insert into StudentAcadDetails (Student_UserId, Term, Course1, Course2, Course3) values(@userid, @term, @course1, @course2, @course3)";
                        //   scmd.CommandText = "Insert into StudentAcadDetails (Student_UserId, Term, Course1, Course2, Course3) values('" + username + "', '" + ddlRegisterTerm.SelectedValue + "', '" + " @course1, @course2, @course3); ";
                        scmd.Parameters.AddWithValue("@userid", username);
                        scmd.Parameters.AddWithValue("@term", ddlRegisterTerm.SelectedValue);
                        scmd.Parameters.AddWithValue("@course1", course1);
                        scmd.Parameters.AddWithValue("@course2", course2);
                        scmd.Parameters.AddWithValue("@course3", course3);
                        scmd.Connection = connect;
                        connect.Open();
                        scmd.ExecuteNonQuery();


                    }
                }
            }
        }

        protected void TranscriptBtn_Click(object sender, EventArgs e)
        {
            CoursesMultiView.ActiveViewIndex = 5;
            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select Term, Course, CreditHours, Grade, Grade_point from Transcript where Student_UserID = '" + username + "'";
                cmd.Connection = con;
                con.Open();
                TranscriptGridView.DataSource = cmd.ExecuteReader();
                TranscriptGridView.DataBind();

            }
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select TotalGradePoints, TotalCreditHours, GPA from GradePointAvg where Student_UserID = '" + username + "'";
                cmd.Connection = con;
                con.Open();
                SqlDataReader drr = cmd.ExecuteReader();
                while (drr.Read())
                {
                      txtGradePoint.Text = drr[0].ToString(); 
                      txtTotalCreditHours.Text = drr[1].ToString();
                      txtGPA.Text = drr[2].ToString();
                }

            }


        }

        protected void ButtonView_Click(object sender, EventArgs e)
        {
            ViewReqList.Items.Add("Software Engineering Methods");
            ViewReqList.Items.Add("Software Design Methods");
            ViewReqList.Items.Add("Advanced Java");
            ViewReqList.Items.Add("Software Project Management");
            ViewReqList.Items.Add("Software Testing");
            AddReqList.Items.Add("Software Engineering Methods");
            AddReqList.Items.Add("Software Design Methods");
            AddReqList.Items.Add("Advanced Java");
            AddReqList.Items.Add("Software Project Management");
            AddReqList.Items.Add("Software Testing");

            ViewSplList.Items.Add("Enterprise Java");
            ViewSplList.Items.Add("Web client development I");
            ViewSplList.Items.Add("Web client development II");
            ViewSplList.Items.Add("Php My/SQL");
            ViewSplList.Items.Add("Mobile App Development");

            ViewElectiveList.Items.Add("Information Security");
            ViewElectiveList.Items.Add("Information Security Management");
            ViewElectiveList.Items.Add("Biomedical Visualization");
            ViewElectiveList.Items.Add("Pattern Recognition");

        }

        protected void AddBtnElective_Click(object sender, EventArgs e)
        {
            if (ViewElectiveList.SelectedIndex > -1)
            {
                if (AddElectiveList.Items.Count < 3)
                {
                    //string coursename = CourseList.SelectedItem.ToString();
                    if (AddElectiveList.Items.Contains(ViewElectiveList.SelectedItem))
                    {
                        LabelMessage.Text = "You cannot add same course twice!";
                    }
                    else
                    {
                        LabelMessage.Text = " ";
                        AddElectiveList.Items.Add(ViewElectiveList.SelectedItem.ToString());
                    }
                }
                else
                {
                    LabelMessage.Text = "You can choose only 3 Elective courses.";
                }
            }
            else
            {
                LabelMessage.Text = "Please select a course from the Elective Course List";
            }
        }

        protected void AddBtnSpl_Click(object sender, EventArgs e)
        {
            if (ViewSplList.SelectedIndex > -1)
            {
                if (AddSplList.Items.Count < 4)
                {
                    //string coursename = CourseList.SelectedItem.ToString();
                    if (AddSplList.Items.Contains(ViewSplList.SelectedItem))
                    {
                        LabelMessage.Text = "You cannot add same course twice!";
                    }
                    else
                    {
                        LabelMessage.Text = " ";
                        AddSplList.Items.Add(ViewSplList.SelectedItem.ToString());
                    }
                }
                else
                {
                    LabelMessage.Text = "You can choose only 4 specialization courses.";
                }
            }
            else
            {
                LblMessage.Text = "Please select a course from the Specialization Course List";
            }
        }

        protected void SplBtnRemove_Click(object sender, EventArgs e)
        {
            if (AddSplList.SelectedIndex > -1)
            {
                LabelMessage.Text = " ";
                AddSplList.Items.Remove(AddSplList.SelectedItem);
            }
            else
            {
                LabelMessage.Text = "Please select the item to remove";
            }
        }

        protected void ElectiveBtnRemove_Click(object sender, EventArgs e)
        {
            if (AddElectiveList.SelectedIndex > -1)
            {
                LabelMessage.Text = " ";
                AddElectiveList.Items.Remove(AddElectiveList.SelectedItem);
            }
            else
            {
                LabelMessage.Text = "Please select the item to remove";
            }
        }

        protected void ElectiveBtnClear_Click(object sender, EventArgs e)
        {
            AddElectiveList.Items.Clear();
        }

        protected void SplBtnClear_Click(object sender, EventArgs e)
        {
            AddSplList.Items.Clear();
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string required1 = AddReqList.Items[0].ToString();
            string required2 = AddReqList.Items[1].ToString();
            string required3 = AddReqList.Items[2].ToString();
            string required4 = AddReqList.Items[3].ToString();
            string required5 = AddReqList.Items[4].ToString();

            string special1 = AddSplList.Items[0].ToString();
            string special2 = AddSplList.Items[1].ToString();
            string special3 = AddSplList.Items[2].ToString();
            string special4 = AddSplList.Items[3].ToString();

            string elective1 = AddElectiveList.Items[0].ToString();
            string elective2 = AddElectiveList.Items[1].ToString();
            string elective3 = AddElectiveList.Items[2].ToString();

            string CoS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection connect = new SqlConnection(CoS))
            {
                SqlCommand scmd = new SqlCommand();
                scmd.CommandText = "Insert into PlanAhead (Student_UserId, ReqCourse1, ReqCourse2, ReqCourse3, ReqCourse4, ReqCourse5, SplCourse1, SplCourse2, SplCourse3,  SplCourse4, ElectiveCourse1,  ElectiveCourse2,  ElectiveCourse3) values(@userid, @reqcourse1, @reqcourse2, @reqcourse3, @reqcourse4, @reqcourse5, @splcourse1, @splcourse2, @splcourse3, @splcourse4, @electivecourse1, @electivecourse2, @electivecourse3)";
                //   scmd.CommandText = "Insert into StudentAcadDetails (Student_UserId, Term, Course1, Course2, Course3) values('" + username + "', '" + ddlRegisterTerm.SelectedValue + "', '" + " @course1, @course2, @course3); ";
                scmd.Parameters.AddWithValue("@userid", username);
                scmd.Parameters.AddWithValue("@reqcourse1", required1);
                scmd.Parameters.AddWithValue("@reqcourse2", required2);
                scmd.Parameters.AddWithValue("@reqcourse3", required3);
                scmd.Parameters.AddWithValue("@reqcourse4", required4);
                scmd.Parameters.AddWithValue("@reqcourse5", required5);
                scmd.Parameters.AddWithValue("@splcourse1", special1);
                scmd.Parameters.AddWithValue("@splcourse2", special2);
                scmd.Parameters.AddWithValue("@splcourse3", special3);
                scmd.Parameters.AddWithValue("@splcourse4", special4);
                scmd.Parameters.AddWithValue("@electivecourse1", elective1);
                scmd.Parameters.AddWithValue("@electivecourse2", elective2);
                scmd.Parameters.AddWithValue("@electivecourse3", elective3);
                scmd.Connection = connect;
                connect.Open();
                scmd.ExecuteNonQuery();

                LabelMessage.Text = "Great Job! You have planned your courses!";

                ButtonSubmit.Enabled = false;
            }
        }

        protected void ViewPlannedCourses_Click(object sender, EventArgs e)
        {
            CoursesMultiView.ActiveViewIndex = 4;
            string CnS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection connn = new SqlConnection(CnS))
            {
                
                        SqlCommand cmnd = new SqlCommand();
                        cmnd.CommandText = "Select * from PlanAhead where Student_UserID = '" + username + "'";
                        cmnd.Connection = connn;
                        connn.Open();
                        SqlDataReader drr = cmnd.ExecuteReader();
                        while (drr.Read())
                        {
                            ListBoxViewPlan.Items.Add("1) Required Course 1: "+drr[1].ToString());
                            ListBoxViewPlan.Items.Add("2) Required Course 2: "+drr[2].ToString());
                            ListBoxViewPlan.Items.Add("3) Required Course 3: "+drr[3].ToString());
                            ListBoxViewPlan.Items.Add("4) Required Course 4: "+drr[4].ToString());
                            ListBoxViewPlan.Items.Add("5) Required Course 5: "+drr[5].ToString());
                            ListBoxViewPlan.Items.Add("6) Specialization Course 1: "+drr[6].ToString());
                            ListBoxViewPlan.Items.Add("7) Specialization Course 2: " + drr[7].ToString());
                            ListBoxViewPlan.Items.Add("8) Specialization Course 3: " + drr[8].ToString());
                            ListBoxViewPlan.Items.Add("9) Specialization Course 4: " + drr[9].ToString());
                            ListBoxViewPlan.Items.Add("10) Elective Course 1: " + drr[10].ToString());
                            ListBoxViewPlan.Items.Add("11) Elective Course 2: " + drr[11].ToString());
                            ListBoxViewPlan.Items.Add("12) Elective Course 3: " + drr[12].ToString());
                }
                       
                  
            }
        }

        protected void PrintHp_Click(object sender, EventArgs e)
        {
            Page.RegisterStartupScript("PrintPage", "<script language='javascript'>window.print()</script>");
        }

        protected void DownloadHp_Click(object sender, EventArgs e)
        {
            Page.RegisterStartupScript("PrintPage", "<script language='javascript'>window.print()</script>");
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