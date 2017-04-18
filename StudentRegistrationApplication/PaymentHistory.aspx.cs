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
            string constr = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            string query = "select s.StudentUniqueID,ph.StudentName,p.PaymenchannelName, ph.PaymentAmount,ph.Status,ph.CreatedDate from PaymentHistory As ph "
                 + "join PaymentChannals as p on p.id = ph.PaymentChannelId "
                 + "join StudentData as s on s.Student_Id = ph.StudentId where s.StudentUniqueID = @studentid ";
           // query += "SELECT TOP 10 (FirstName + ' ' + LastName) EmployeeName, City, Country FROM Employees";

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@studentid", txtStudentID.Text);
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        
                        using (DataSet ds = new DataSet())
                        {
                            //if (ds.Tables.Count == 0)
                            //{
                            //    WarningLabel.Visible = true;
                            //}
                            //else
                            //{

                                sda.Fill(ds);
                                PaymentDetailsGridView.DataSource = ds.Tables[0];
                                PaymentDetailsGridView.DataBind();
                            //}
                          
                           
                        }
                    }
                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

        }
    }
}