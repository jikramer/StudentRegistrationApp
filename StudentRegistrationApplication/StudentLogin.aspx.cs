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
        string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
          

            Control c = Master.FindControl("masterNavBarDiv");// "masterDiv"= the Id of the div.
            c.Visible = false;//to set the div to be hidden.

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = UsernameTxt.Text;
            string password = PasswordTxt.Text;

            if (username.Equals("admin123") && password.Equals("adminpassword"))
            {
                Session["user"] = "admin123";
                Session["role"] = "admin";
                Response.Redirect("AdmnStudentDetails.aspx");
            }
            else
            {
               
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
                        Session["user"]  = username;

                        Response.Redirect("Home.aspx");
                    }
                    else
                        WarningLabel.Visible = true;
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Home.aspx");
        }
    }
}