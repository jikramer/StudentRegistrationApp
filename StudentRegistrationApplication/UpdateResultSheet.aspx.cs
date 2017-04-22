using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace StudentRegistrationApplication
{
    public partial class UpdateResultSheet : System.Web.UI.Page
    {
        double grade_point;
        double total_grade_points;
        double total_credit_hours;
        double course1_grade_points;
        double course2_grade_points;
        double course3_grade_points; 
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CheckBtn_Click(object sender, EventArgs e)
        {
            string stuid = Convert.ToString(txtStudentID.Text);
            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select Course1, Course2, Course3 from StudentAcadDetails where Student_UserId = @studentID and Term = @term";
                cmd.Parameters.AddWithValue("@studentID", stuid);
                cmd.Parameters.AddWithValue("@term", ddlSelectTerm.SelectedValue);
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txtCourseCode1.Text = dr[0].ToString();
                    txtCourseCode2.Text = dr[1].ToString();
                    txtCourseCode3.Text = dr[2].ToString();
                }
            }
        }

        protected void BtnCalculate_Click(object sender, EventArgs e)
        {
            double credithour1 = Convert.ToDouble(TxtCredits1.Text);
            double credithour2 = Convert.ToDouble(TxtCredits2.Text);
            double credithour3 = Convert.ToDouble(TxtCredits3.Text);

            string grade1 = Convert.ToString( TxtGrade1.Text);
            string grade2 = Convert.ToString(TxtGrade2.Text);
            string grade3 = Convert.ToString(TxtGrade3.Text);

            double grade_point1 = calculateGradePoint(grade1);
            double grade_point2 = calculateGradePoint(grade2);
            double grade_point3 = calculateGradePoint(grade3);

            course1_grade_points = credithour1 * grade_point1;
            course2_grade_points = credithour2 * grade_point2;
            course3_grade_points = credithour3 * grade_point3;

            total_grade_points = course1_grade_points + course2_grade_points + course3_grade_points;
            total_credit_hours = credithour1 + credithour2 + credithour3;

            double GPA = total_grade_points / total_credit_hours;

            TxtGPA.Text = GPA.ToString();

        }

        protected double calculateGradePoint(string grade)
        {
            // double grade_point;

            // A = 4.00 grade points
            // A - = 3.70 grade points
            // B + = 3.33 grade points
            // B = 3.00 grade points
            // B - = 2.70 grade points
            // C + = 2.30 grade points
            // C = 2.00 grade points
            // C - = 1.70 grade points
            //D + = 1.30 grade points
            // D = 1.00 grade points
            // D - = 0.70 grade points

            // WF / F = 0 grade points

            if (grade.Equals("A"))
            {
                grade_point = 4.00;
            }
            else if (grade.Equals("A-"))
            {
                grade_point = 3.70;
            }
            else if (grade.Equals("B+"))
            {
                grade_point = 3.33;
            }
            else if (grade.Equals("B"))
            {
                grade_point = 3.00;
            }
            else if (grade.Equals("B-"))
            {
                grade_point = 2.70;
            }
            else if (grade.Equals("C+"))
            {
                grade_point = 2.30;
            }
            else if (grade.Equals("C"))
            {
                grade_point = 2.00;
            }
            else if (grade.Equals("C-"))
            {
                grade_point = 1.70;
            }
            else if (grade.Equals("D+"))
            {
                grade_point = 1.30;
            }
            else if (grade.Equals("D"))
            {
                grade_point = 1.00;
            }
            else if (grade.Equals("D-"))
            {
                grade_point = 0.70;
            }
            else if (grade.Equals("F"))
            {
                grade_point = 0.00;
            }

            return grade_point;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string term = Convert.ToString(ddlSelectTerm.SelectedValue);
            string studentid = Convert.ToString(txtStudentID.Text);

            double credithour1 = Convert.ToDouble(TxtCredits1.Text);
            double credithour2 = Convert.ToDouble(TxtCredits2.Text);
            double credithour3 = Convert.ToDouble(TxtCredits3.Text);

            string grade1 = Convert.ToString(TxtGrade1.Text);
            string grade2 = Convert.ToString(TxtGrade2.Text);
            string grade3 = Convert.ToString(TxtGrade3.Text);

            double GPA = Convert.ToDouble(TxtGPA.Text);

            string course1 = Convert.ToString(txtCourseCode1.Text);
            string course2 = Convert.ToString(txtCourseCode2.Text);
            string course3 = Convert.ToString(txtCourseCode3.Text);
             
            double grade_point1 = calculateGradePoint(grade1);
            double grade_point2 = calculateGradePoint(grade2);
            double grade_point3 = calculateGradePoint(grade3);

            course1_grade_points = credithour1 * grade_point1;
            course2_grade_points = credithour2 * grade_point2;
            course3_grade_points = credithour3 * grade_point3;

            total_grade_points = course1_grade_points + course2_grade_points + course3_grade_points;
            total_credit_hours = credithour1 + credithour2 + credithour3;

            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection connect = new SqlConnection(CS))
            {

                SqlCommand scmd = new SqlCommand();
                scmd.CommandText = "Insert into Transcript (Student_UserId, Term, Course, CreditHours, Grade, Grade_point) values(@userid, @term, @course, @credithour, @grade, @gradepoint)";
 
                scmd.Parameters.AddWithValue("@userid", studentid);
                scmd.Parameters.AddWithValue("@term", term);
                scmd.Parameters.AddWithValue("@course", course1);
                scmd.Parameters.AddWithValue("@credithour", credithour1);
                scmd.Parameters.AddWithValue("@grade", grade1);
                scmd.Parameters.AddWithValue("@gradepoint", course1_grade_points);
               
                scmd.Connection = connect;
                connect.Open();
                scmd.ExecuteNonQuery();
            }
            using (SqlConnection connect = new SqlConnection(CS))
            {

                SqlCommand scmd = new SqlCommand();
                scmd.CommandText = "Insert into Transcript (Student_UserId, Term, Course, CreditHours, Grade, Grade_point) values(@userid, @term, @course, @credithour, @grade, @gradepoint)";

                scmd.Parameters.AddWithValue("@userid", studentid);
                scmd.Parameters.AddWithValue("@term", term);
                scmd.Parameters.AddWithValue("@course", course2);
                scmd.Parameters.AddWithValue("@credithour", credithour2);
                scmd.Parameters.AddWithValue("@grade", grade2);
                scmd.Parameters.AddWithValue("@gradepoint", course2_grade_points);

                scmd.Connection = connect;
                connect.Open();
                scmd.ExecuteNonQuery();
            }
            using (SqlConnection connect = new SqlConnection(CS))
            {

                SqlCommand scmd = new SqlCommand();
                scmd.CommandText = "Insert into Transcript (Student_UserId, Term, Course, CreditHours, Grade, Grade_point) values(@userid, @term, @course, @credithour, @grade, @gradepoint)";

                scmd.Parameters.AddWithValue("@userid", studentid);
                scmd.Parameters.AddWithValue("@term", term);
                scmd.Parameters.AddWithValue("@course", course3);
                scmd.Parameters.AddWithValue("@credithour", credithour3);
                scmd.Parameters.AddWithValue("@grade", grade3);
                scmd.Parameters.AddWithValue("@gradepoint", course3_grade_points);

                scmd.Connection = connect;
                connect.Open();
                scmd.ExecuteNonQuery();
            }
            using (SqlConnection connect = new SqlConnection(CS))
            {

                SqlCommand scmd = new SqlCommand();
                scmd.CommandText = "Insert into GradePointAvg (Student_UserId, Term, TotalGradePoints, TotalCreditHours, GPA) values(@userid, @term, @totalgradepoint, @totalcredithour, @gpa)";

                scmd.Parameters.AddWithValue("@userid", studentid);
                scmd.Parameters.AddWithValue("@term", term);
                scmd.Parameters.AddWithValue("@totalgradepoint", total_grade_points);
                scmd.Parameters.AddWithValue("@totalcredithour", total_credit_hours);
                scmd.Parameters.AddWithValue("@gpa", GPA);
                scmd.Connection = connect;
                connect.Open();
                scmd.ExecuteNonQuery();
            }

            LabelMessage.Text = "You have updated the grades for "+ studentid + " succesfully";
            btnUpdate.Enabled = false;

        }
    }
}