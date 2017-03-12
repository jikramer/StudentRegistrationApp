using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationApplication
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {

            SqlDataSource SqlDS = new SqlDataSource();
            SqlDS.ID = "SqlDS";
            this.Page.Controls.Add(SqlDS);
            SqlDS.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;

            SqlDS.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDS.InsertCommand = "Insert into UserDetails (username, password, firstName, lastName, phone, email, dob, address, city, state, zip, studentType) VALUES (@username, @password, @firstName, @lastName, @phone, @email, @dob, @address, @city, @state, @zip, @studentType)";
             

            SqlDS.InsertParameters.Add("username", txtUsername.Text);
            SqlDS.InsertParameters.Add("password", txtPassword.Text);
            SqlDS.InsertParameters.Add("firstName", txtFirstName.Text);
            SqlDS.InsertParameters.Add("lastName", txtLastName.Text);
            SqlDS.InsertParameters.Add("phone", txtPhone.Text);
            SqlDS.InsertParameters.Add("email", txtEmail.Text);
            SqlDS.InsertParameters.Add("dob", txtDOB.Text);
            SqlDS.InsertParameters.Add("address", txtAddress.Text);

            SqlDS.InsertParameters.Add("city", txtCity.Text);
            SqlDS.InsertParameters.Add("state", "");
            SqlDS.InsertParameters.Add("zip", txtZip.Text);
            SqlDS.InsertParameters.Add("studentType","");

            SqlDS.Insert();

            Response.Redirect("~/Home.aspx");
        }
    }
}