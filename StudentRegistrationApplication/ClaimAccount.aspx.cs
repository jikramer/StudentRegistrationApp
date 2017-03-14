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
    public partial class ClaimAccount : System.Web.UI.Page
    {
        private string fname, lname, email, dob, type;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            fname = FirstNameTB.Text;
            lname = LastNameTB.Text;
            email = EmailTB.Text;
            dob = DOBTB.Text;
            type = ddlStudentType.SelectedValue;

            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select Student_FirstName from StudentData where Student_FirstName = '" + fname + "'and Student_LastName = '" + lname + "'and Student_email = '" + email + "'and Student_DOB = '" + dob + "'and Student_Type = '" + type + "'";

                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    // UserIDText.Text = dr[0].ToString();
                    FirstNameTB.Enabled = false;
                    LastNameTB.Enabled = false;
                    EmailTB.Enabled = false;
                    DOBTB.Enabled = false;
                    ddlStudentType.Enabled = false;
                    UsernotfoundLabel.Visible = false;
                    SubmitBtn.Enabled = false;
                    UserIDText.Focus();
                    UserIDText.Enabled = true;
                    PasswordText.Enabled = true;
                    ReEnterPswdTxt.Enabled = true;
                    rfvUsername.Enabled = true;
                    rfvPass.Enabled = true;
                    rfvPass2.Enabled = true;
                    PasswordCompareValidator.Enabled = true;
                    btnClaim.Enabled = true;

                }
                else
                {
                    UsernotfoundLabel.Visible = true;
                }
            }
        }

        protected void btnClaim_Click(object sender, EventArgs e)
        {
            fname = FirstNameTB.Text;
            lname = LastNameTB.Text;
            email = EmailTB.Text;
            dob = DOBTB.Text;
            type = ddlStudentType.SelectedValue;

            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "UPDATE StudentData SET Student_UserID = @uid, Student_Password = @password where Student_FirstName = '" + fname + "'and Student_LastName = '" + lname + "'and Student_email = '" + email + "'and Student_DOB = '" + dob + "'and Student_Type = '" + type + "'";
                cmd.Parameters.AddWithValue("@uid", UserIDText.Text);
                cmd.Parameters.AddWithValue("@password", PasswordText.Text);

                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("You have claimed your account successfully!");
            }
        }
    }
}