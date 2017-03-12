using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationApplication
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            String DatabaseConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;

            using (System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(DatabaseConnectionString))
            {
                String queryString = "Select count(*) from UserDetails where userName = '" + txtUsername.Text + "' and password = '" + txtPassword.Text + "'";

                conn.Open();
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(queryString, conn);
                Int32 result = (Int32)cmd.ExecuteScalar();
                System.Diagnostics.Debug.Write( "result: " + result);

                //TODO: figure out where to route, add validation...
                if (result == 1)
                {
                    Session["username"] = txtUsername.Text;
                    Response.Redirect("~/MultiviewTest.aspx");
                }
                else
                    Response.Redirect("~/Signup.aspx");
            }
        }
    }
}