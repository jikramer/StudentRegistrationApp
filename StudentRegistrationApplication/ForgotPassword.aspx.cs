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
using System.Drawing;

namespace StudentRegistrationApplication
{
    public partial class ForgotPassword1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblPassword2.Visible = false;
            lblPassword1.Visible = false;
        }
        protected void btnGetPassowrd_Click(object sender, EventArgs e)
        {
            string FirstName, LastName, UserID, Password;
            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select Student_FirstName, Student_LastName, Student_UserID, Student_Password from StudentData where Student_UserID='" + txtUserID.Text + "'";

                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    FirstName = dr[0].ToString();
                    LastName = dr[1].ToString();
                    UserID = dr[2].ToString();
                    Password = dr[3].ToString();

                    if((txtFirstName.Text == FirstName) && (txtLastName.Text == LastName) && (txtUserID.Text == UserID))
                    {
                        lblPassword2.Visible = true;
                        lblPassword1.Visible = true;
                        lblPassword2.Text = Password;
                    }
                    else
                    {
                        lblPassword2.Visible = false;
                        lblPassword1.Visible = false;
                        lblWarning.Text = "No Records Found!";
                    }
                }
            }
        }
    }
}