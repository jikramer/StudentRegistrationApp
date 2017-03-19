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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            // getStudentData
            string firstname = txtFirstName.Text;
            string lastname = txtLastName.Text;
            string contactno = txtPhone.Text;
            string email = txtEmail.Text;
            string dob = txtDOB.Text;
            string StAddress = txtAddress.Text;
            string city = txtCity.Text;
            string state = ddlState.SelectedValue;
            int zipcode = Convert.ToInt32(txtZip.Text);
            string student_type = ddlStudentType.SelectedValue;
            //  string userid = txtUsername.Text;
            //  Session["username"] = userid;
            //  string password = (string)txtPassword.Text;

            // string CS = "Data Source=(LocalDB) MSSQLLocalDB; database= UserInfo.mdf;Integrated Security=True";
            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Insert into StudentData (Student_FirstName, Student_LastName, Student_ContactNo, Student_email, Student_DOB, Student_StAddress, Student_City, Student_State, Student_Zipcode, Student_Type, Student_UserID, Student_Password) values('" + firstname + "', '" + lastname + "', '" + contactno + "', '" + email + "', '" + dob + "', '" + StAddress + "', '" + city + "', '" + state + "', '" + zipcode + "', '" + student_type + "', '" + null + "', '" + null + "'); ";
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();

                Label masterMsgLabel = (Label)Master.FindControl("lblUserMessage");
                if (masterMsgLabel != null)
                {
                    masterMsgLabel.Text = "<strong>Success!</strong> You have signed up successfully!";
                }
                else
                    Response.Write("You have signed up successfully!");
                 
            }
        }

        protected void getStudentData()
        {


        }
    }
}