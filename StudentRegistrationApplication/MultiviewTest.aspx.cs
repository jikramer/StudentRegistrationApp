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
    public partial class MultiviewTest : System.Web.UI.Page
    {
        private string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            //clear the control to support multiview
            Label masterMsgLabel = (Label)Master.FindControl("lblUserMessage");
            masterMsgLabel.Text = "";

            if (Session["username"] == null)
            {
                setMasterLabelMsg("Please log in first");
                Response.Redirect("StudentLogin.aspx");
            }
            else
                username = Session["username"].ToString();
        }

        protected void ViewProfileButton_Click(object sender, EventArgs e)
        {
            StudentMultiView.ActiveViewIndex = 0;
            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select Student_FirstName, Student_LastName, Student_ContactNo, Student_email, Student_DOB, Student_StAddress, Student_City, Student_State, Student_Zipcode, Student_Type from StudentData where Student_UserID='" + username + "'";

                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ViewtxtFirstName.Text = dr[0].ToString();
                    ViewtxtLastName.Text = dr[1].ToString();
                    ViewtxtPhone.Text = dr[2].ToString();
                    ViewtxtEmail.Text = dr[3].ToString();
                    ViewtxtDOB.Text = dr[4].ToString();
                    ViewtxtAddress.Text = dr[5].ToString();
                    ViewtxtCity.Text = dr[6].ToString();
                    ViewStateTextBox.Text = dr[7].ToString();
                    ViewtxtZip.Text = dr[8].ToString();
                    ViewStudentTypeTextBox.Text = dr[9].ToString();

                }
            }
        }

        protected void EditProfileButton_Click(object sender, EventArgs e)
        {
            StudentMultiView.ActiveViewIndex = 1;

            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select Student_FirstName, Student_LastName, Student_ContactNo, Student_email, Student_DOB, Student_StAddress, Student_City, Student_State, Student_Zipcode, Student_Type from StudentData where Student_UserID='" + username + "'";

                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    EdittxtFirstName.Text = dr[0].ToString();
                    EdittxtLastName.Text = dr[1].ToString();
                    EdittxtPhone.Text = dr[2].ToString();
                    EdittxtEmail.Text = dr[3].ToString();
                    EdittxtDOB.Text = dr[4].ToString();
                    EdittxtAddress.Text = dr[5].ToString();
                    EdittxtCity.Text = dr[6].ToString();
                    //EditddlState.SelectedValue= dr[7].ToString();
                    EdittxtZip.Text = dr[8].ToString();
                    EditddlStudentType.Text = dr[9].ToString();
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "UPDATE StudentData SET Student_FirstName = @fname, Student_LastName = @lname, Student_ContactNo = @phone, Student_email = @email, Student_DOB = @dob, Student_StAddress = @addr, Student_City = @city, Student_State = @state, Student_Zipcode = @zip, Student_Type = @type where Student_UserID = '" + username + "'";
                cmd.Parameters.AddWithValue("@fname", EdittxtFirstName.Text);
                cmd.Parameters.AddWithValue("@lname", EdittxtLastName.Text);
                cmd.Parameters.AddWithValue("@phone", EdittxtPhone.Text);
                cmd.Parameters.AddWithValue("@email", EdittxtEmail.Text);
                cmd.Parameters.AddWithValue("@dob", EdittxtDOB.Text);
                cmd.Parameters.AddWithValue("@addr", EdittxtAddress.Text);
                cmd.Parameters.AddWithValue("@city", EdittxtCity.Text);
                cmd.Parameters.AddWithValue("@state", EditddlState.SelectedValue);
                cmd.Parameters.AddWithValue("@zip", EdittxtZip.Text);
                cmd.Parameters.AddWithValue("@type", EditddlStudentType.SelectedValue);

                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();

                setMasterLabelMsg("you have updated your data succesfully!");
            }

        }

        /// <summary>
        /// Set a value for label on top of master page shown on content page.  Use for info/error.
        /// </summary>
        /// <param name="msg"></param>
        private void setMasterLabelMsg(String msg)
        {
            Label masterMsgLabel = (Label)Master.FindControl("lblUserMessage");
            if (masterMsgLabel != null)
            {
                masterMsgLabel.Text = "<strong>***</strong> " + msg + "<strong>***</strong>";

            }
            else
                Response.Write(msg);
        }

    }
} 