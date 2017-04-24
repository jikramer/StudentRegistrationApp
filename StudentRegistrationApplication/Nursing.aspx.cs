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
    public partial class Nursing : System.Web.UI.Page
    {
        private string username;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OpenClose_Click(object sender, EventArgs e)
        {

            Response.Redirect("StudentLogin.aspx");

            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select Student_FirstName from StudentData where Student_UserID='" + Session["user"] + "'";

                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblUserName.Text = dr[0].ToString();
                }
            }
        }
        protected void LogOut_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session.Clear();
                Response.Redirect("Home.aspx");
            }
        }
    }
}