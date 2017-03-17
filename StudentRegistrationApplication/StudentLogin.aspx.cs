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
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = UsernameTxt.Text;
            string password = PasswordTxt.Text;

            if (username.Equals("admin123") && password.Equals("adminpassword"))
            {
                Response.Redirect("Signup.aspx");
            }
            else
            {
                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select Student_UserID, Student_Password from StudentData where Student_UserID = '" + username + "'and Student_Password = '" + password + "'";

                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        WarningLabel.Visible = false;
                        Session["username"] = username;
                        Response.Redirect("Home.aspx");
                    }
                    else
                        WarningLabel.Visible = true;
                }
            }
        }
    }
}