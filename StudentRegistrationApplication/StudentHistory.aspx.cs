using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing.Printing;

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
            if (IsValid)
            {
                if (string.IsNullOrEmpty(txtStudentID.Text))
                {
                    // lblstdidmsg.Text = "* not a valid studentID.";
                }
                else
                {
                    var studentid = txtStudentID.Text;
                    using (SqlConnection con = new SqlConnection(CS))
                    {

                        string oString = "select top(1)* from StudentData where StudentUniqueID =@fName";
                        SqlCommand oCmd = new SqlCommand(oString, con);
                        oCmd.Parameters.AddWithValue("@Fname", studentid);
                        con.Open();
                        using (SqlDataReader oReader = oCmd.ExecuteReader())
                        {
                            while (oReader.Read())
                            {
                                txtFirstName.Text = oReader["Student_FirstName"].ToString();
                                txtLastName.Text = oReader["Student_LastName"].ToString();
                            }

                            con.Close();
                        }




                        //  WarningLabel.Visible = true;
                    }
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