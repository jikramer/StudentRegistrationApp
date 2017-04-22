using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationApplication
{
    public partial class PaymentHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "Select Student_UserID from PaymentHistory where Student_UserID='" + txtStudentID.Text + "'";

                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblUserNamePaymentHistory.Text = dr[0].ToString();
                }
            }
        }
        
        protected void PrintHp_Click(object sender, EventArgs e)
        {
            Page.RegisterStartupScript("PrintPage", "<script language='javascript'>window.print()</script>");
        }

        protected void DownloadHp_Click(object sender, EventArgs e)
        {
            Page.RegisterStartupScript("PrintPage", "<script language='javascript'>window.print()</script>");
        }

    }
}