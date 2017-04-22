using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationApplication
{
    public partial class StudentHistory : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnstudentHistory_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select * from StudentData where Student_UserID = @stuid";
                cmd.Parameters.AddWithValue("@stuid", txtStudentID.Text);
            
                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtFirstName.Text = dr[1].ToString();
                    txtLastName.Text = dr[2].ToString();
                    txtPhone.Text = dr[3].ToString();
                    txtEmail.Text = dr[4].ToString();
                    txtDOB.Text = dr[5].ToString();
                    txtAddress.Text = dr[6].ToString();
                    txtCity.Text = dr[7].ToString();
                    txtState.Text = dr[8].ToString();
                    txtZip.Text = dr[9].ToString();
                    TxtStudentType.Text = dr[10].ToString();
                }
            }
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select GPA from GradePointAvg where Student_UserID = @stuid";
                cmd.Parameters.AddWithValue("@stuid", txtStudentID.Text);

                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TxtGPA.Text = dr[0].ToString();
                }
            }
        }
    }
}