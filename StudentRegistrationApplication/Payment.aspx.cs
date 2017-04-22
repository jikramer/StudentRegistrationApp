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
    public partial class Payment : System.Web.UI.Page
    {
        private string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Label masterMsgLabel = (Label)Master.FindControl("lblUserMessage");
                if (masterMsgLabel != null)
                {
                    masterMsgLabel.Text = "<strong>Error!</strong> Please log in first!";
                    Response.Redirect("StudentLogin");
                }
                else
                    Response.Write("Please Log in First!");
            }
            else
                username = Session["user"].ToString();

            Control c = Master.FindControl("masterNavBarDiv");// "masterDiv"= the Id of the div.
            c.Visible = false;
        }


        //sidenav Button Accessing
        protected void SetPaymentMethodButton_Click(object sender, EventArgs e)
        {
            PaymentMethodMultiView.ActiveViewIndex = 0;
        }

        protected void SubmitPayMethodButton_Click(object sender, EventArgs e)
        {
            string paymentMethod = ddlPaymentMethod.SelectedValue.ToString();

            if (paymentMethod == "Credit Card")
            {
                PaymentMultiView.ActiveViewIndex = 0;


                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select Amount from StudentData where Student_UserID='" + username + "'";

                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtCreditAmount.Text = dr[0].ToString();
                    }
                }
            }
            else if (paymentMethod == "Cash Payment")
            {
                PaymentMultiView.ActiveViewIndex = 1;


                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select Amount from StudentData where Student_UserID='" + username + "'";

                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtAmount.Text = dr[0].ToString();
                    }
                }
            }
            else
            {
                PaymentMultiView.ActiveViewIndex = 2;


                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select Amount from StudentData where Student_UserID='" + username + "'";

                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtDebitAmount.Text = dr[0].ToString();
                    }
                }
            }
        }




        protected void CreditPaymentButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string paymentMethod = ddlPaymentMethod.SelectedValue.ToString();
                string NameOnCard = Convert.ToString(txtName.Text);
                string CardNumber = Convert.ToString(txtCardNumber.Text);
                string ExpiryDate = Convert.ToString(txtExpiryDate.Text);
                string CVV = Convert.ToString(txtCVV.Text);
                string CreditAmount = Convert.ToString(txtCreditAmount.Text);

                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "UPDATE StudentData SET PaymentMethod = @paymentMethod, NameOnCard = @NameOnCard, CardNumber = @CardNumber, ExpiryDate = @ExpiryDate, CVV = @CVV, Amount = @CreditAmount where Student_UserID = '" + username + "'";
                    cmd.Parameters.AddWithValue("@paymentMethod", paymentMethod);
                    cmd.Parameters.AddWithValue("@NameOnCard", NameOnCard);
                    cmd.Parameters.AddWithValue("@CardNumber", CardNumber);
                    cmd.Parameters.AddWithValue("@ExpiryDate", ExpiryDate);
                    cmd.Parameters.AddWithValue("@CVV", CVV);
                    cmd.Parameters.AddWithValue("@CreditAmount", CreditAmount);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();

                    string CreditPaymentSaved;
                    CreditPaymentSaved = "Your Payment Method is Saved Succesfully!";
                    lblCreditPaymentSavedWarning.Text = CreditPaymentSaved.ToString();
                }
            }
        }
        protected void btnCashPaymentMethod_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string paymentMethod = ddlPaymentMethod.SelectedValue.ToString();
                string CashAmount = Convert.ToString(txtAmount.Text);

                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "UPDATE StudentData SET PaymentMethod = @paymentMethod, Amount = @CashAmount where Student_UserID = '" + username + "'";
                    cmd.Parameters.AddWithValue("@paymentMethod", paymentMethod);
                    cmd.Parameters.AddWithValue("@CashAmount", CashAmount);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();

                    string CashPaymentSaved;
                    CashPaymentSaved = "Your Payment Method is Saved Succesfully!";
                    lblCashPaymentSavedWarning.Text = CashPaymentSaved.ToString();
                }
            }
        }
        protected void btnDebitPaymentMethod_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string paymentMethod = ddlPaymentMethod.SelectedValue.ToString();
                string NameOnCard = Convert.ToString(txtDebitName.Text);
                string CardNumber = Convert.ToString(txtDebitCard.Text);
                string ExpiryDate = Convert.ToString(txtDebitExpiryDate.Text);
                string CVV = Convert.ToString(txtDebitCVV.Text);
                string DebitAmount = Convert.ToString(txtDebitAmount.Text);

                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "UPDATE StudentData SET PaymentMethod = @paymentMethod, NameOnCard = @NameOnCard, CardNumber = @CardNumber, ExpiryDate = @ExpiryDate, CVV = @CVV, Amount = @DebitAmount where Student_UserID = '" + username + "'";
                    cmd.Parameters.AddWithValue("@paymentMethod", paymentMethod);
                    cmd.Parameters.AddWithValue("@NameOnCard", NameOnCard);
                    cmd.Parameters.AddWithValue("@CardNumber", CardNumber);
                    cmd.Parameters.AddWithValue("@ExpiryDate", ExpiryDate);
                    cmd.Parameters.AddWithValue("@CVV", CVV);
                    cmd.Parameters.AddWithValue("@DebitAmount", DebitAmount);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();

                    string DebitPaymentSaved;
                    DebitPaymentSaved = "Your Payment Method is Saved Succesfully!";
                    lblDebitPaymentSavedWarning.Text = DebitPaymentSaved.ToString();
                }
            }
        }




        protected void MakePaymentButton_Click(object sender, EventArgs e)
        {
            PaymentMethodMultiView.ActiveViewIndex = 1;
            MakePaymentCreditMultiView.ActiveViewIndex = 0;
            MakePaymentDebitMultiView.ActiveViewIndex = 0;
            MakePaymentCashMultiView.ActiveViewIndex = 0;

            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select PaymentMethod, Student_FirstName, Student_LastName, Student_ContactNo, Student_email, Student_DOB, Student_StAddress, Student_City, Student_State, Student_Zipcode, Student_Type, NameOnCard, CardNumber, ExpiryDate, CVV from StudentData where Student_UserID='" + username + "'";

                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    // Retriving data from the database
                    lblPaymentMethod.Text = dr[0].ToString();
                    txtCreditMakePaymentFirstName.Text = dr[1].ToString();
                    txtCreditMakePaymentLastName.Text = dr[2].ToString();
                    txtCreditMakePaymentContactNo.Text = dr[3].ToString();
                    txtCreditMakePaymentEmail.Text = dr[4].ToString();
                    txtCreditMakePaymentDOB.Text = dr[5].ToString();
                    txtCreditMakePaymentAddress.Text = dr[6].ToString();
                    txtCreditMakePaymentCity.Text = dr[7].ToString();
                    txtCreditMakePaymentState.Text = dr[8].ToString();
                    txtCreditMakePaymentZipcode.Text = dr[9].ToString();
                    txtCreditMakePaymentStudentType.Text = dr[10].ToString();
                    txtCreditMakePaymentNameOnCard.Text = dr[11].ToString();
                    txtCreditMakePaymentCardNumber.Text = dr[12].ToString();
                    txtCreditMakePaymentExpiryDate.Text = dr[13].ToString();
                    txtCreditMakePaymentCVV.Text = dr[14].ToString();



                    txtDebitMakePaymentFirstName.Text = dr[1].ToString();
                    txtDebitMakePaymentLastName.Text = dr[2].ToString();
                    txtDebitMakePaymentPhoneNumber.Text = dr[3].ToString();
                    txtDebitMakePaymentEmail.Text = dr[4].ToString();
                    txtDebitMakePaymentDOB.Text = dr[5].ToString();
                    txtDebitMakePaymentAddress.Text = dr[6].ToString();
                    txtDebitMakePaymentCity.Text = dr[7].ToString();
                    txtDebitMakePaymentState.Text = dr[8].ToString();
                    txtDebitMakePaymentZipCode.Text = dr[9].ToString();
                    txtDebitMakePaymentStudentType.Text = dr[10].ToString();
                    txtDebitMakePaymentNameOnCard.Text = dr[11].ToString();
                    txtDebitMakePaymentCardNumber.Text = dr[12].ToString();
                    txtDebitMakePaymentExpiryDate.Text = dr[13].ToString();
                    txtDebitMakePaymentCVV.Text = dr[14].ToString();



                    txtCashMakePaymentFirstName.Text = dr[1].ToString();
                    txtCashMakePaymentLastName.Text = dr[2].ToString();
                    txtCashMakePaymentPhoneNumber.Text = dr[3].ToString();
                    txtCashMakePaymentEmailID.Text = dr[4].ToString();
                    txtCashMakePaymentDOB.Text = dr[5].ToString();
                    txtCashMakePaymentAddress.Text = dr[6].ToString();
                    txtCashMakePaymentCity.Text = dr[7].ToString();
                    txtCashMakePaymentState.Text = dr[8].ToString();
                    txtCashMakePaymentZip.Text = dr[9].ToString();
                    txtCashMakePaymentStudentType.Text = dr[10].ToString();
                    txtCashMakePaymentPaymentDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
                }
            }
        }

        protected void btnEditPaymentDetails_Click(object sender, EventArgs e)
        {
            MakePaymentCreditMultiView.ActiveViewIndex = 1;
            MakePaymentDebitMultiView.ActiveViewIndex = 1;
            MakePaymentCashMultiView.ActiveViewIndex = 1;

            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select PaymentMethod, Student_FirstName, Student_LastName, Student_ContactNo, Student_email, Student_DOB, Student_StAddress, Student_City, Student_State, Student_Zipcode, Student_Type, NameOnCard, CardNumber, ExpiryDate, CVV from StudentData where Student_UserID='" + username + "'";

                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtCreditMakePaymentEditFirstName.Text = dr[1].ToString();
                    txtCreditMakePaymentEditLastName.Text = dr[2].ToString();
                    txtCreditMakePaymentEditPhoneNumber.Text = dr[3].ToString();
                    txtCreditMakePaymentEditEmail.Text = dr[4].ToString();
                    txtCreditMakePaymentEditDOB.Text = dr[5].ToString();
                    txtCreditMakePaymentEditAddress.Text = dr[6].ToString();
                    txtCreditMakePaymentEditCity.Text = dr[7].ToString();
                    txtCreditMakePaymentEditZip.Text = dr[9].ToString();
                    txtCreditMakePaymentEditNameOnCard.Text = dr[11].ToString();
                    txtCreditMakePaymentEditCardNumber.Text = dr[12].ToString();
                    txtCreditMakePaymentEditExpiryDate.Text = dr[13].ToString();
                    txtCreditMakePaymentEditCVV.Text = dr[14].ToString();


                    txtDebitMakePaymentEditFirstName.Text = dr[1].ToString();
                    txtDebitMakePaymentEditLastName.Text = dr[2].ToString();
                    txtDebitMakePaymentEditPhoneNumber.Text = dr[3].ToString();
                    txtDebitMakePaymentEditEmail.Text = dr[4].ToString();
                    txtDebitMakePaymentEditDOB.Text = dr[5].ToString();
                    txtDebitMakePaymentEditAddress.Text = dr[6].ToString();
                    txtDebitMakePaymentEditCity.Text = dr[7].ToString();
                    txtDebitMakePaymentEditZip.Text = dr[9].ToString();
                    txtDebitMakePaymentEditNameOnCard.Text = dr[11].ToString();
                    txtDebitMakePaymentEditCardNumber.Text = dr[12].ToString();
                    txtDebitMakePaymentEditExpiryDate.Text = dr[13].ToString();
                    txtDebitMakePaymentEditCVV.Text = dr[14].ToString();


                    txtCashMakePaymentEditFirstName.Text = dr[1].ToString();
                    txtCashMakePaymentEditLastName.Text = dr[2].ToString();
                    txtCashMakePaymentEditPhoneNumber.Text = dr[3].ToString();
                    txtCashMakePaymentEditEmail.Text = dr[4].ToString();
                    txtCashMakePaymentEditDOB.Text = dr[5].ToString();
                    txtCashMakePaymentEditAddress.Text = dr[6].ToString();
                    txtCashMakePaymentEditCity.Text = dr[7].ToString();
                    txtCashMakePaymentEditZip.Text = dr[9].ToString();
                }
            }
        }
        protected void btnUpdatePaymentDetails_Click(object sender, EventArgs e)
        {
            if (MakePaymentCreditMultiView.ActiveViewIndex == 1)
            {

                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "UPDATE StudentData SET Student_FirstName = @fname, Student_LastName = @lname, Student_ContactNo = @phone, Student_email = @email, Student_DOB = @dob, Student_StAddress = @addr, Student_City = @city, Student_State = @state, Student_Zipcode = @zip, Student_Type = @type, NameOnCard = @NameOnCard, CardNumber = @CardNumber, ExpiryDate = @ExpiryDate, CVV = @CVV where Student_UserID = '" + username + "'";
                    cmd.Parameters.AddWithValue("@fname", txtCreditMakePaymentEditFirstName.Text);
                    cmd.Parameters.AddWithValue("@lname", txtCreditMakePaymentEditLastName.Text);
                    cmd.Parameters.AddWithValue("@phone", txtCreditMakePaymentEditPhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@email", txtCreditMakePaymentEditEmail.Text);
                    cmd.Parameters.AddWithValue("@dob", txtCreditMakePaymentEditDOB.Text);
                    cmd.Parameters.AddWithValue("@addr", txtCreditMakePaymentEditAddress.Text);
                    cmd.Parameters.AddWithValue("@city", txtCreditMakePaymentEditCity.Text);
                    cmd.Parameters.AddWithValue("@state", ddlCreditMakePaymentEditState.SelectedValue);
                    cmd.Parameters.AddWithValue("@zip", txtCreditMakePaymentEditZip.Text);
                    cmd.Parameters.AddWithValue("@type", ddlCreditMakePaymentEditStudentType.SelectedValue);
                    cmd.Parameters.AddWithValue("@NameOnCard", txtCreditMakePaymentEditNameOnCard.Text);
                    cmd.Parameters.AddWithValue("@CardNumber", txtCreditMakePaymentEditCardNumber.Text);
                    cmd.Parameters.AddWithValue("@ExpiryDate", txtCreditMakePaymentEditExpiryDate.Text);
                    cmd.Parameters.AddWithValue("@CVV", txtCreditMakePaymentEditCVV.Text);

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            else if (MakePaymentDebitMultiView.ActiveViewIndex == 1)
            {
                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "UPDATE StudentData SET Student_FirstName = @fname, Student_LastName = @lname, Student_ContactNo = @phone, Student_email = @email, Student_DOB = @dob, Student_StAddress = @addr, Student_City = @city, Student_State = @state, Student_Zipcode = @zip, Student_Type = @type, NameOnCard = @NameOnCard, CardNumber = @CardNumber, ExpiryDate = @ExpiryDate, CVV = @CVV, Amount = @DebitAmount where Student_UserID = '" + username + "'";
                    cmd.Parameters.AddWithValue("@fname", txtDebitMakePaymentEditFirstName.Text);
                    cmd.Parameters.AddWithValue("@lname", txtDebitMakePaymentEditLastName.Text);
                    cmd.Parameters.AddWithValue("@phone", txtDebitMakePaymentEditPhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@email", txtDebitMakePaymentEditEmail.Text);
                    cmd.Parameters.AddWithValue("@dob", txtDebitMakePaymentEditDOB.Text);
                    cmd.Parameters.AddWithValue("@addr", txtDebitMakePaymentEditAddress.Text);
                    cmd.Parameters.AddWithValue("@city", txtDebitMakePaymentEditCity.Text);
                    cmd.Parameters.AddWithValue("@state", ddlDebitMakePaymentEditState.SelectedValue);
                    cmd.Parameters.AddWithValue("@zip", txtDebitMakePaymentEditZip.Text);
                    cmd.Parameters.AddWithValue("@type", ddltDebitMakePaymentEditStudentType.SelectedValue);
                    cmd.Parameters.AddWithValue("@NameOnCard", txtDebitMakePaymentEditNameOnCard.Text);
                    cmd.Parameters.AddWithValue("@CardNumber", txtDebitMakePaymentEditCardNumber.Text);
                    cmd.Parameters.AddWithValue("@ExpiryDate", txtDebitMakePaymentEditExpiryDate.Text);
                    cmd.Parameters.AddWithValue("@CVV", txtDebitMakePaymentEditCVV.Text);
                    cmd.Parameters.AddWithValue("@DebitAmount", txtDebitMakePaymentEditAmount.Text);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                }

            }
            else if (MakePaymentCashMultiView.ActiveViewIndex == 1)
            {
                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "UPDATE StudentData SET Student_FirstName = @fname, Student_LastName = @lname, Student_ContactNo = @phone, Student_email = @email, Student_DOB = @dob, Student_StAddress = @addr, Student_City = @city, Student_State = @state, Student_Zipcode = @zip, Student_Type = @type, PaymentDate = @paymentDate where Student_UserID = '" + username + "'";
                    cmd.Parameters.AddWithValue("@fname", txtCashMakePaymentEditFirstName.Text);
                    cmd.Parameters.AddWithValue("@lname", txtCashMakePaymentEditLastName.Text);
                    cmd.Parameters.AddWithValue("@phone", txtCashMakePaymentEditPhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@email", txtCashMakePaymentEditEmail.Text);
                    cmd.Parameters.AddWithValue("@dob", txtCashMakePaymentEditDOB.Text);
                    cmd.Parameters.AddWithValue("@addr", txtCashMakePaymentEditAddress.Text);
                    cmd.Parameters.AddWithValue("@city", txtCashMakePaymentCity.Text);
                    cmd.Parameters.AddWithValue("@state", ddlCashMakePaymentEditState.SelectedValue);
                    cmd.Parameters.AddWithValue("@zip", txtCashMakePaymentEditZip.Text);
                    cmd.Parameters.AddWithValue("@type", ddlCashMakePaymentEditStudentType.SelectedValue);
                    cmd.Parameters.AddWithValue("@paymentDate", txtCashMakePaymentEditPaymentDate.Text);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            MakePaymentCreditMultiView.ActiveViewIndex = 0;
            MakePaymentDebitMultiView.ActiveViewIndex = 0;
            MakePaymentCashMultiView.ActiveViewIndex = 0;
        }


        protected void btnClearPaymentDetails_Click(object sender, EventArgs e)
        {
            if (MakePaymentCreditMultiView.ActiveViewIndex == 1)
            {
                txtCreditMakePaymentEditAddress.Text = string.Empty;
                txtCreditMakePaymentEditAmount.Text = string.Empty;
                txtCreditMakePaymentEditCardNumber.Text = string.Empty;
                txtCreditMakePaymentEditCity.Text = string.Empty;
                txtCreditMakePaymentEditCVV.Text = string.Empty;
                txtCreditMakePaymentEditDOB.Text = string.Empty;
                txtCreditMakePaymentEditEmail.Text = string.Empty;
                txtCreditMakePaymentEditExpiryDate.Text = string.Empty;
                txtCreditMakePaymentEditFirstName.Text = string.Empty;
                txtCreditMakePaymentEditLastName.Text = string.Empty;
                txtCreditMakePaymentEditNameOnCard.Text = string.Empty;
                txtCreditMakePaymentEditPhoneNumber.Text = string.Empty;
                txtCreditMakePaymentEditZip.Text = string.Empty;
            }
            else if (MakePaymentDebitMultiView.ActiveViewIndex == 1)
            {
                txtDebitMakePaymentEditAddress.Text = string.Empty;
                txtDebitMakePaymentEditAmount.Text = string.Empty;
                txtDebitMakePaymentEditCardNumber.Text = string.Empty;
                txtDebitMakePaymentEditCity.Text = string.Empty;
                txtDebitMakePaymentEditCVV.Text = string.Empty;
                txtDebitMakePaymentEditDOB.Text = string.Empty;
                txtDebitMakePaymentEditEmail.Text = string.Empty;
                txtDebitMakePaymentEditExpiryDate.Text = string.Empty;
                txtDebitMakePaymentEditFirstName.Text = string.Empty;
                txtDebitMakePaymentEditLastName.Text = string.Empty;
                txtDebitMakePaymentEditNameOnCard.Text = string.Empty;
                txtDebitMakePaymentEditPhoneNumber.Text = string.Empty;
                txtDebitMakePaymentEditZip.Text = string.Empty;
            }
            else if (MakePaymentCashMultiView.ActiveViewIndex == 1)
            {
                txtCashMakePaymentEditAddress.Text = string.Empty;
                txtCashMakePaymentEditAmount.Text = string.Empty;
                txtCashMakePaymentEditCity.Text = string.Empty;
                txtCashMakePaymentEditDOB.Text = string.Empty;
                txtCashMakePaymentEditEmail.Text = string.Empty;
                txtCashMakePaymentEditFirstName.Text = string.Empty;
                txtCashMakePaymentEditLastName.Text = string.Empty;
                txtCashMakePaymentEditPaymentDate.Text = string.Empty;
                txtCashMakePaymentEditPhoneNumber.Text = string.Empty;
                txtCashMakePaymentEditZip.Text = string.Empty;
            }
        }

        protected void btnConfirmPaymentDetails_Click(object sender, EventArgs e)
        {
            string PaymentMethod = Convert.ToString(lblPaymentMethod.Text);
            if (PaymentMethod == "Credit Card")
            {
                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select Amount, Student_UserID from StudentData where Student_UserID='" + username + "'";

                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    
                    if(dr.Read())
                    {
                        int Amount = Convert.ToInt32(dr[0].ToString());
                        int AmountPaid = Convert.ToInt32(txtCreditMakePaymentAmount.Text);
                        int DueAmount = Amount - AmountPaid;
                        
                        if(AmountPaid > Amount)
                        {
                            int ExtraAmount = AmountPaid - Amount;
                            string CreditMakePaymentSaved;
                            CreditMakePaymentSaved = "Your due amount is "+Amount+" and you are trying to pay "+ ExtraAmount + " extra!,";
                            lblCreditPaymentSucessful.Text = CreditMakePaymentSaved.ToString();
                        }
                        else
                        {
                            string CS1 = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                            using (SqlConnection con1 = new SqlConnection(CS))
                            {
                                SqlCommand cmd1 = new SqlCommand();
                                cmd1.CommandText = "INSERT INTO PaymentHistory (FirstName, LastName, PaymentDate, PaymentMethod, AmountPaid, DueAmount, Student_UserID) Values(@fname, @lname, @PaymentDate, @PaymentMethod, @AmountPaid, @Amount, @Student_UserID)";
                                cmd1.Parameters.AddWithValue("@fName", txtCreditMakePaymentFirstName.Text);
                                cmd1.Parameters.AddWithValue("@lname", txtCreditMakePaymentLastName.Text);
                                cmd1.Parameters.AddWithValue("@PaymentDate", DateTime.Now.ToString());
                                cmd1.Parameters.AddWithValue("@PaymentMethod", lblPaymentMethod.Text);
                                cmd1.Parameters.AddWithValue("@AmountPaid", txtCreditMakePaymentAmount.Text);
                                cmd1.Parameters.AddWithValue("@Amount", DueAmount.ToString());
                                cmd1.Parameters.AddWithValue("@Student_UserID", dr[1].ToString());
                                cmd1.Connection = con1;
                                con1.Open();
                                cmd1.ExecuteNonQuery();

                                string CreditMakePaymentSaved;
                                CreditMakePaymentSaved = "Your Payment is Completed Succesfully!";
                                lblCreditPaymentSucessful.Text = CreditMakePaymentSaved.ToString();
                            }
                            string CS2 = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                            using (SqlConnection con2 = new SqlConnection(CS2))
                            {
                                SqlCommand cmd2 = new SqlCommand();
                                cmd2.CommandText = "UPDATE StudentData SET Amount = @Amount  where Student_UserID = '" + username + "'";
                                cmd2.Parameters.AddWithValue("@Amount", DueAmount.ToString());
                                cmd2.Connection = con2;
                                con2.Open();
                                cmd2.ExecuteNonQuery();
                            }
                        }
                    }
                }                
            }
            else if (PaymentMethod == "Debit Card")
            {
                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select Amount, Student_UserID from StudentData where Student_UserID='" + username + "'";

                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        int Amount = Convert.ToInt32(dr[0].ToString());
                        int AmountPaid = Convert.ToInt32(txtDebitMakePaymentAmount.Text);
                        int DueAmount = Amount - AmountPaid;

                        if (AmountPaid > Amount)
                        {
                            int ExtraAmount = AmountPaid - Amount;
                            string DebitMakePaymentSaved;
                            DebitMakePaymentSaved = "Your due amount is " + Amount + " and you are trying to pay " + ExtraAmount + " extra!,";
                            lblDebitPaymentSucessful.Text = DebitMakePaymentSaved.ToString();
                        }
                        else
                        {
                            string CS1 = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                            using (SqlConnection con1 = new SqlConnection(CS))
                            {
                                SqlCommand cmd1 = new SqlCommand();
                                cmd1.CommandText = "INSERT INTO PaymentHistory (FirstName, LastName, PaymentDate, PaymentMethod, AmountPaid, DueAmount, Student_UserID) Values(@fname, @lname, @PaymentDate, @PaymentMethod, @AmountPaid, @Amount, @Student_UserID)";
                                cmd1.Parameters.AddWithValue("@fName", txtDebitMakePaymentFirstName.Text);
                                cmd1.Parameters.AddWithValue("@lname", txtDebitMakePaymentLastName.Text);
                                cmd1.Parameters.AddWithValue("@PaymentDate", DateTime.Now.ToString());
                                cmd1.Parameters.AddWithValue("@PaymentMethod", lblPaymentMethod.Text);
                                cmd1.Parameters.AddWithValue("@AmountPaid", txtDebitMakePaymentAmount.Text);
                                cmd1.Parameters.AddWithValue("@Amount", DueAmount.ToString());
                                cmd1.Parameters.AddWithValue("@Student_UserID", dr[1].ToString());
                                cmd1.Connection = con1;
                                con1.Open();
                                cmd1.ExecuteNonQuery();

                                string DebitMakePaymentSaved;
                                DebitMakePaymentSaved = "Your Payment is Completed Succesfully!";
                                lblDebitPaymentSucessful.Text = DebitMakePaymentSaved.ToString();
                            }
                            string CS2 = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                            using (SqlConnection con2 = new SqlConnection(CS2))
                            {
                                SqlCommand cmd2 = new SqlCommand();
                                cmd2.CommandText = "UPDATE StudentData SET Amount = @Amount  where Student_UserID = '" + username + "'";
                                cmd2.Parameters.AddWithValue("@Amount", DueAmount.ToString());
                                cmd2.Connection = con2;
                                con2.Open();
                                cmd2.ExecuteNonQuery();
                            }
                        }
                    }
                }  
            }
            else
            {
                string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select Amount, Student_UserID from StudentData where Student_UserID='" + username + "'";

                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        int Amount = Convert.ToInt32(dr[0].ToString());
                        int AmountPaid = Convert.ToInt32(txtCashMakePaymentAmount.Text);
                        int DueAmount = Amount - AmountPaid;

                        if (AmountPaid > Amount)
                        {
                            int ExtraAmount = AmountPaid - Amount;
                            string CashMakePaymentSaved;
                            CashMakePaymentSaved = "Your due amount is " + Amount + " and you are trying to pay " + ExtraAmount + " extra!,";
                            lblCashPaymentSucessful.Text = CashMakePaymentSaved.ToString();
                        }
                        else
                        {
                            string CS1 = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                            using (SqlConnection con1 = new SqlConnection(CS))
                            {
                                SqlCommand cmd1 = new SqlCommand();
                                cmd1.CommandText = "INSERT INTO PaymentHistory (FirstName, LastName, PaymentDate, PaymentMethod, AmountPaid, DueAmount, Student_UserID) Values(@fname, @lname, @PaymentDate, @PaymentMethod, @AmountPaid, @Amount, @Student_UserID)";
                                cmd1.Parameters.AddWithValue("@fName", txtCashMakePaymentFirstName.Text);
                                cmd1.Parameters.AddWithValue("@lname", txtCashMakePaymentLastName.Text);
                                cmd1.Parameters.AddWithValue("@PaymentDate", DateTime.Now.ToString());
                                cmd1.Parameters.AddWithValue("@PaymentMethod", lblPaymentMethod.Text);
                                cmd1.Parameters.AddWithValue("@AmountPaid", txtCashMakePaymentAmount.Text);
                                cmd1.Parameters.AddWithValue("@Amount", DueAmount.ToString());
                                cmd1.Parameters.AddWithValue("@Student_UserID", dr[1].ToString());
                                cmd1.Connection = con1;
                                con1.Open();
                                cmd1.ExecuteNonQuery();

                                string CashMakePaymentSaved;
                                CashMakePaymentSaved = "Your Payment is Completed Succesfully!";
                                lblCashPaymentSucessful.Text = CashMakePaymentSaved.ToString();
                            }
                            string CS2 = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
                            using (SqlConnection con2 = new SqlConnection(CS2))
                            {
                                SqlCommand cmd2 = new SqlCommand();
                                cmd2.CommandText = "UPDATE StudentData SET Amount = @Amount  where Student_UserID = '" + username + "'";
                                cmd2.Parameters.AddWithValue("@Amount", DueAmount.ToString());
                                cmd2.Connection = con2;
                                con2.Open();
                                cmd2.ExecuteNonQuery();
                            }
                        }
                    }
                }
            }
        }
        protected int DueAmount(int Amount, int AmountPaid)
        {
            int dueAmount = Amount - AmountPaid;
            return dueAmount;
        }
        protected void PreviousPaymentButton_Click(object sender, EventArgs e)
        {
            PaymentMethodMultiView.ActiveViewIndex = 2;

            string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "Select Student_UserID from StudentData where Student_UserID='" + username + "'";

                cmd.Connection = con;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if(dr.Read())
                {
                    lblUserName.Text = dr[0].ToString();
                }
            }           
        }

        protected void grdPaymentHistory_Prerender(object sender, EventArgs e)
        {
            grdPaymentHistory.HeaderRow.TableSection = TableRowSection.TableHeader;
        }



        // private void setMasterLabelMsg(String msg)
        // {
        //  Label masterMsgLabel = (Label)Master.FindControl("lblUserMessage");
        // if (masterMsgLabel != null)
        // {
        //     masterMsgLabel.Text = "<strong>***</strong> " + msg + "<strong>***</strong>";

        // }
        // else
        //  Response.Write(msg);
        //}




    }
}