<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" MasterPageFile="~/Site.Master" Inherits="StudentRegistrationApplication.Payment" %>


<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="StyleSheets/MultiviewStlye.css" rel="stylesheet" />
    <link href="StyleSheets/Styles.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
    <div class="row content">
        <div class="col-sm-2 sidenav" style="background-color:black; height:700px;">
            <h4>
                <p>
                    <asp:HyperLink ID="HomeHyperLink" runat="server" ForeColor="White" NavigateUrl="~/Home"><span class="glyphicon glyphicon-home"></span>Home</asp:HyperLink></p>
            </h4>
            <br />
            <p>
                <asp:Button ID="SetPaymentMethodButton" runat="server" Text="Set Payment Method" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="52px" Width="206px" OnClick="SetPaymentMethodButton_Click" /></p>
            <p>
                <asp:Button ID="MakePaymentButton" runat="server" Text="Make Payment" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="52px" Width="206px" OnClick="MakePaymentButton_Click" CssClass="auto-style1" /></p>
            <p>
                <asp:Button ID="PreviousPaymentButton" runat="server" Text="Previous Payments" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="52px" Width="206px" OnClick="PreviousPaymentButton_Click" /></p>
        </div>
        <div class="col-sm-6">                
            <asp:MultiView ID="PaymentMethodMultiView" runat="server">
                <asp:View ID="SetPaymentView" runat="server">
                    
                    <div class="container">
                        <div class="well well-sm">
                            <h2>Set Payment Method</h2>
                        </div>
                        <div class="form-horizontal">
                            <div class="form-group">
                                <div class="col-sm-5">
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-sm-10 Heading">Select a Payment Method:</label>
                                            <div class="col-sm-2 col-sm-offset-0">
                                                <asp:DropDownList ID="ddlPaymentMethod" runat="server" ForeColor="Black" Font-Size="Large" CssClass="col-xs-offset-0 img-rounded">
                                                    <asp:ListItem Value="Credit Card">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Credit Card&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                                    <asp:ListItem Value="Cash Payment">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cash Payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                                    <asp:ListItem Value="Debit Card">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Debit Card&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <br /><br /><br /><br /><br />
                                            <asp:Button ID="SetPayMethodButton" runat="server" Text="Submit" Font-Size="Medium" ForeColor="White" OnClick="SubmitPayMethodButton_Click" CssClass="btn btn-primary col-sm-offset-10" />
                                        </div>
                                    </div>


                                    <asp:MultiView ID="PaymentMultiView" runat="server">
                                        <asp:View ID="CreditorDebitView" runat="server">
                                            <div class="container">
                                                <div class="">                              
                                                        <h2>Credit Card Payment</h2>
                                                        <br /><br /><br />
                                                        </div>
                                                        <div class="form-horizontal">                                                            
                                                            <div class="form-group">
                                                                <label class="control-label col-sm-3 subHeading">Name on the Card:</label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                                <div class="col-sm-3">
                                                                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                                                                        ErrorMessage="Name on the Card is required" CssClass="text-danger"
                                                                        Display="Dynamic" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-sm-3 subHeading">Card Number:</label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            
                                                            <div class="col-sm-3">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                                     ErrorMessage="Card Number is required" CssClass="text-danger"
                                                                        Display="Dynamic" ControlToValidate="txtCardNumber" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                                    ControlToValidate="txtCardNumber" ErrorMessage="Use this format: xxxx-xxxx-xxxx-xxxx" 
                                                                    ValidationExpression="\d{4}-\d{4}-\d{4}-\d{4}" CssClass="text-danger" 
                                                                    Display="Dynamic" ForeColor="Red">
                                                                </asp:RegularExpressionValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-3 subHeading">Expiry Date:</label>
                                                            <div class="col-sm-2">
                                                                <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                                    ErrorMessage="Expiry Date is required" CssClass="text-danger"
                                                                    Display="Dynamic" ControlToValidate="txtExpiryDate" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                            </div>          
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-3 subHeading">CVV:</label>
                                                            <div class="col-sm-2">
                                                                <asp:TextBox ID="txtCVV" runat="server" CssClass="form-control" TextMode="Password" MaxLength="3"></asp:TextBox>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                                    ErrorMessage="CVV is required" CssClass="text-danger"
                                                                    Display="Dynamic" ControlToValidate="txtCVV" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                                 <asp:RangeValidator ID="RangeFieldValidator1" runat="server" 
                                                                    ControlToValidate="txtCVV" Display="Dynamic" MaximumValue="999" 
                                                                    MinimumValue="111" ErrorMessage="Should be of type xxx"></asp:RangeValidator>
                                                            </div>
                                                        </div>
                                                            <div class="form-group">
                                                            <label class="control-label col-sm-3 subHeading">Amount:</label>
                                                            <div class="col-sm-4">
                                                                <asp:TextBox ID="txtCreditAmount" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"
                                                                    ErrorMessage="Amount is required" CssClass="text-danger"
                                                                    Display="Dynamic" ControlToValidate="txtCreditAmount" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>                                                           
                                                            <div class="form-group ">
                                                                <div class="col-sm-offset-3 col-sm-5">
                                                                    <asp:Label ID="lblCreditPaymentSavedWarning" runat="server" Text=""></asp:Label>
                                                                </div>
                                                             </div>
                                                        <div class="form-group">
                                                            <div class="col-sm-offset-3 col-sm-2">
                                                                <asp:Button ID="CreditPaymentButton" runat="server" Text="Save Payment Method" CssClass="btn btn-primary" OnClick="CreditPaymentButton_Click" />
                                                            </div>                                                                
                                                        </div>
                                                    </div>
                                        </asp:View>
                                        <asp:View ID="CashView" runat="server">
                                            <div class="row col-sm-offset-1">
                                                <div class="form-group">
                                                    <div class="box">
                                                        <h2>Cash Payment</h2>
                                                            <br /><br /><br />
                                                    <div>
                                                    <div class="form-group">
                                                        <label class="control-label col-sm-3 subHeading"> First Name:</label>
                                                        <div class="col-sm-5">
                                                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                                ErrorMessage="First Name is required" CssClass="text-danger"
                                                                Display="Dynamic" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-3 subHeading">last Name:</label>
                                                            <div class="col-sm-5">
                                                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                                    ErrorMessage="Last Name is required" CssClass="text-danger"
                                                                    Display="Dynamic" ControlToValidate="txtLastName" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-3 subHeading">Phone Number:</label>
                                                            <div class="col-sm-4">
                                                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone" ></asp:TextBox>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                                                    ErrorMessage="Phone Number is required" CssClass="text-danger"
                                                                    Display="Dynamic" ControlToValidate="txtPhone" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="PhoneNumberRegularExpressionValidator" runat="server"
                                                                    ControlToValidate="txtPhone" ErrorMessage="Use this format: 999-999-9999"
                                                                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" CssClass="text-danger"
                                                                    Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-3 subHeading">Amount:</label>
                                                            <div class="col-sm-4">
                                                                <asp:TextBox ID="txtAmount" runat="server" Enabled="false" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                                                    ErrorMessage="Amount is required" CssClass="text-danger"
                                                                    Display="Dynamic" ControlToValidate="txtAmount" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group ">
                                                        <div class="col-sm-offset-3 col-sm-5">
                                                            <asp:Label ID="lblCashPaymentSavedWarning" runat="server" Text=""></asp:Label>
                                                        </div>
                                                     </div>
                                                    </div><br />                                                                                                            
                                                    <div>
                                                        <asp:Button ID="btnCashPaymentMethod" runat="server" Text="Save Payment Method" Font-Size="Medium" ForeColor="White" OnClick="btnCashPaymentMethod_Click" CssClass="btn btn-primary" />
                                                    </div>
                                                        <br />
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:View>
                                        <asp:View ID="DebitView" runat="server">
                                            <div class="row col-sm-offset-1">
                                                <div class="form-group">
                                                    <div class="box">
                                                        <h2>Debit Card Payment</h2>
                                                        <br />
                                                        <br />
                                                        <div>
                                                        <br />
                                                            <div class="form-group">
                                                                <label class="control-label col-sm-3 subHeading">Name on the Card:</label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtDebitName" runat="server" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                                <div class="col-sm-3">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                                                        ErrorMessage="Name on the Card is required" CssClass="text-danger"
                                                                        Display="Dynamic" ControlToValidate="txtDebitName" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-sm-3 subHeading">Card Number:</label>
                                                            <div class="col-sm-5">
                                                                <asp:TextBox ID="txtDebitCard" runat="server" CssClass="form-control"></asp:TextBox>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                                                    ErrorMessage="Card Number is required" CssClass="text-danger"
                                                                    Display="Dynamic" ControlToValidate="txtDebitCard" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                                    ControlToValidate="txtDebitCard" ErrorMessage="Use this format: xxxx-xxxx-xxxx-xxxx" 
                                                                    ValidationExpression="\d{4}-\d{4}-\d{4}-\d{4}" CssClass="text-danger" 
                                                                    Display="Dynamic" ForeColor="Red">
                                                                </asp:RegularExpressionValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-3 subHeading">Expiry Date:</label>
                                                            <div class="col-sm-2">
                                                                <asp:TextBox ID="txtDebitExpiryDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                                                    ErrorMessage="Expiry Date is required" CssClass="text-danger"
                                                                    Display="Dynamic" ControlToValidate="txtDebitExpiryDate" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label col-sm-3 subHeading">CVV:</label>
                                                            <div class="col-sm-2">
                                                                <asp:TextBox ID="txtDebitCVV" runat="server" CssClass="form-control" TextMode="Password" MaxLength="3"></asp:TextBox>
                                                            </div>
                                                            <div class="col-sm-2">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                                                                    ErrorMessage="CVV is required" CssClass="text-danger"
                                                                    Display="Dynamic" ControlToValidate="txtDebitExpiryDate" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                                                    ControlToValidate="txtDebitExpiryDate" Display="Dynamic" MaximumValue="999" 
                                                                    MinimumValue="111" ErrorMessage="Should be of type xxx">
                                                                </asp:RangeValidator>
                                                            </div>
                                                        </div>
                                                          <div class="form-group">
                                                            <label class="control-label col-sm-3 subHeading">Amount:</label>
                                                            <div class="col-sm-4">
                                                                <asp:TextBox ID="txtDebitAmount" runat="server" Enabled="false" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"
                                                                    ErrorMessage="Amount is required" CssClass="text-danger"
                                                                    Display="Dynamic" ControlToValidate="txtDebitAmount" ForeColor="Red">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                        </div> 
                                                            <div class="form-group ">
                                                        <div class="col-sm-offset-3 col-sm-5">
                                                            <asp:Label ID="lblDebitPaymentSavedWarning" runat="server" Text=""></asp:Label>
                                                        </div>
                                                    </div>  
                                                    </div><br />                        
                                                    <div>
                                                        <asp:Button ID="btnDebitPaymentMethod" runat="server" Text="Save Payment Method" Font-Size="Medium" ForeColor="White" OnClick="btnDebitPaymentMethod_Click" CssClass="btn btn-primary" />
                                                    </div>
                                                    <br />
                                                </div>
                                            </div>
                                        </div>
                                            
                                    </asp:View>
                                    </asp:MultiView>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="MakePaymentView" runat="server">
                    <div class="container">
                        <div class="well well-sm">
                            <h2><asp:Label runat="server" ID="lblPaymentMethod"></asp:Label></h2>
                        </div>
                        <% string PaymentMethod = Convert.ToString(lblPaymentMethod.Text); %>
                        <% if (PaymentMethod == "Credit Card")
                            { %>
                            <asp:MultiView runat="server" ID="MakePaymentCreditMultiView">
                            <asp:View runat="server" ID="MakePaymentMultiViewDetails">                            
                            <div class="form-group">
                                <label class="control-label col-sm-3">First Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentFirstName" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Last Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentLastName" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Phone Number:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentContactNo" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Email ID:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentEmail" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Date of Birth:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentDOB" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Address:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentAddress" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">City:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentCity" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">State:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentState" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Zipcode:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentZipcode" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Student Type:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentStudentType" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Name On Card:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentNameOnCard" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Card Number:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentCardNumber" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Expiry Date:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentExpiryDate" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">CVV:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentCVV" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Amount:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCreditMakePaymentAmount" runat="server" CssClass="form-control text-left"></asp:TextBox>                                                        
                                </div>                                
                            </div>
                            <div class="form-group ">
                                <div class="col-sm-offset-3 col-sm-5">
                                    <asp:Label ID="lblCreditPaymentSucessful" runat="server" Font-Size="Large"></asp:Label>
                                </div>
                            </div>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Edit" OnClick="btnEditCreditPaymentDetails_Click" />
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Confirm" OnClick="btnConfirmCreditPaymentDetails_Click" />
                            </asp:View>
                                <asp:View runat="server" ID="MakePaymentMultiViewEditDetails">
                                    <div>                                        
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">First Name:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCreditMakePaymentEditFirstName" runat="server" CssClass="form-control text-left"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="rfvCreditMakePaymentEditFirstName" runat="server"
                                                ErrorMessage="First name is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Last Name:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCreditMakePaymentEditLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="rfvCreditMakePaymentEditLastName" runat="server"
                                                ErrorMessage="Last name is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditLastName" ForeColor="Red"></asp:RequiredFieldValidator> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Phone Number:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCreditMakePaymentEditPhoneNumber" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="rfvCreditMakePaymentEditPhoneNumber" runat="server"
                                                ErrorMessage="Phone number is required." CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditPhoneNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regCreditMakePaymentEditPhoneNumber" runat="server"
                                                ControlToValidate="txtCreditMakePaymentEditPhoneNumber" ErrorMessage="Use this format: 999-999-9999"
                                                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" CssClass="text-danger"
                                                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Email Address:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCreditMakePaymentEditEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="rfvCreditMakePaymentEditEmail" runat="server"
                                                ErrorMessage="Email is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regCreditMakePaymentEditEmail" runat="server"
                                                ControlToValidate="txtCreditMakePaymentEditEmail" ErrorMessage="Must be a valid email address"
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"
                                                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Date of birth:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCreditMakePaymentEditDOB" runat="server" CssClass="form-control">mm/dd/yyyy</asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RegularExpressionValidator ID="regCreditMakePaymentEditDOB" runat="server"
                                                ErrorMessage="Date of birth" CssClass="text-danger"
                                                Display="Dynamic" ValidationExpression="[01]?\d\/[0-3]\d/\d{4}"
                                                ControlToValidate="txtCreditMakePaymentEditDOB" ForeColor="Red">Use this format: mm/dd/yyyy</asp:RegularExpressionValidator> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Address:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCreditMakePaymentEditAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="rfvCreditMakePaymentEditAddress" runat="server"
                                                ErrorMessage="Street Address is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditAddress" ForeColor="Red"></asp:RequiredFieldValidator> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">City:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCreditMakePaymentEditCity" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="rfvCreditMakePaymentEditCity" runat="server"
                                                ErrorMessage="City is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditCity" ForeColor="Red"></asp:RequiredFieldValidator> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">State:</label>
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="ddlCreditMakePaymentEditState" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateCode">
                                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                            </asp:DropDownList>                                            
                                        </div>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" SelectCommand="SELECT * FROM [States] ORDER BY [StateCode]"></asp:SqlDataSource>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Zip code:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCreditMakePaymentEditZip" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                           <asp:RequiredFieldValidator ID="rfvCreditMakePaymentEditZip" runat="server"
                                                ErrorMessage="Zip is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditZip" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regCreditMakePaymentEditZip" runat="server"
                                                ErrorMessage="Use this format: 00000" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditZip" ValidationExpression="\d{5}" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Student Type:</label>
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="ddlCreditMakePaymentEditStudentType" runat="server" ForeColor="Black">
                                                <asp:ListItem>Undergraduate</asp:ListItem>
                                                <asp:ListItem>Graduate</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-sm-4">
                                           <!-- <asp:RequiredFieldValidator ID="RfvCreditMakePaymentEditStudentType" runat="server"
                                                ErrorMessage="Student type is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="ddlCreditMakePaymentEditStudentType" ForeColor="Red"></asp:RequiredFieldValidator> -->
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Name on the Card:</label>
                                            <div class="col-sm-5">
                                                <asp:TextBox ID="txtCreditMakePaymentEditNameOnCard" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>
                                           <div class="col-sm-3">
                                                <asp:RequiredFieldValidator ID="revCreditMakePaymentEditNameOnCard" runat="server"
                                                    ErrorMessage="Name on the Card is required" CssClass="text-danger"
                                                    Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditNameOnCard" ForeColor="Red"></asp:RequiredFieldValidator> 
                                            </div>
                                     </div>
                                     <div class="form-group">
                                        <label class="control-label col-sm-3">Card Number:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCreditMakePaymentEditCardNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>                                                            
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="revCreditMakePaymentEditCardNumber" runat="server"
                                                ErrorMessage="Card Number is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditCardNumber" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regCreditMakePaymentEditCardNumber" runat="server" 
                                                ControlToValidate="txtCreditMakePaymentEditCardNumber" ErrorMessage="Use this format: xxxx-xxxx-xxxx-xxxx" 
                                                ValidationExpression="\d{4}-\d{4}-\d{4}-\d{4}" CssClass="text-danger" 
                                                Display="Dynamic" ForeColor="Red">
                                            </asp:RegularExpressionValidator> 
                                        </div>
                                     </div>
                                     <div class="form-group">
                                        <label class="control-label col-sm-3">Expiry Date:</label>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="txtCreditMakePaymentEditExpiryDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:RequiredFieldValidator ID="revCreditMakePaymentEditExpiryDate" runat="server"
                                                ErrorMessage="Expiry Date is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditExpiryDate" ForeColor="Red">
                                            </asp:RequiredFieldValidator> 
                                        </div>          
                                     </div>
                                     <div class="form-group">
                                        <label class="control-label col-sm-3">CVV:</label>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="txtCreditMakePaymentEditCVV" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:RequiredFieldValidator ID="revCreditMakePaymentEditCVV" runat="server"
                                                ErrorMessage="CVV is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditCVV" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="reguCreditMakePaymentEditCVV" runat="server"
                                                ErrorMessage="Use this format: 000" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditCVV" ValidationExpression="\d{3}" ForeColor="Red"></asp:RegularExpressionValidator>
                                         <!--   <asp:RangeValidator ID="regCreditMakePaymentEditCVV" runat="server" 
                                                ControlToValidate="txtCreditMakePaymentEditCVV" Display="Dynamic" MaximumValue="999" 
                                                MinimumValue="111" ErrorMessage="Should be of type xxx"></asp:RangeValidator> -->
                                        </div>
                                     </div>
                                  <!--  <div class="form-group">
                                        <label class="control-label col-sm-3">Amount:</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="txtCreditMakePaymentEditAmount" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server"
                                                ErrorMessage="Amount is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCreditMakePaymentEditAmount" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                    </div> -->
                                    <div class="form-group text-center">
                                        <asp:Label runat="server" ID="lblCreditMakePaymentEditWarning" ForeColor="Red" Font-Bold="true" Font-Size="Large" Text=""></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-6 col-sm-offset-4">
                                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnUpdateCreditPaymentDetails_Click" />
                                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Clear" OnClick="btnClearCreditPaymentDetails_Click" />                                   
                                        </div>                                        
                                    </div>
                                  </div>                           
                                </asp:View>
                            </asp:MultiView>
                        <br /><br />                        
                    <% } %>
                    <% else if (PaymentMethod == "Debit Card") %>
                    <%{ %>
                        <asp:MultiView runat="server" ID="MakePaymentDebitMultiView">
                            <asp:View ID="MakePaymentDebitMultiViewDetails" runat="server">
                            <div class="form-group">
                                <label class="control-label col-sm-3">First Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentFirstName" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Last Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentLastName" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Phone Number:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentPhoneNumber" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Email ID:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentEmail" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Date of Birth:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentDOB" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Address:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentAddress" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">City:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentCity" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">State:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentState" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Zipcode:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentZipCode" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Student Type:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentStudentType" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Name On Card:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentNameOnCard" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Card Number:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentCardNumber" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Expiry Date:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentExpiryDate" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">CVV:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentCVV" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Amount:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtDebitMakePaymentAmount" runat="server" CssClass="form-control text-left"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group ">
                                <div class="col-sm-offset-3 col-sm-5">
                                    <asp:Label ID="lblDebitPaymentSucessful" runat="server" Font-Size="Large"></asp:Label>
                                </div>
                            </div>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Edit" OnClick="btnEditDebitPaymentDetails_Click" />
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Confirm" OnClick="btnConfirmDebitPaymentDetails_Click" />
                            </asp:View>
                            <asp:View ID="MakePaymentDebitMultiViewEdit" runat="server">
                                <div class="form-group">
                                        <label class="control-label col-sm-3">First Name:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitMakePaymentEditFirstName" runat="server" CssClass="form-control text-left"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="revDebitMakePaymentEditFirstName" runat="server"
                                                ErrorMessage="First name is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Last Name:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitMakePaymentEditLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revDebitMakePaymentEditLastName" runat="server"
                                                ErrorMessage="Last name is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Phone Number:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitMakePaymentEditPhoneNumber" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revDebitMakePaymentEditPhoneNumber" runat="server"
                                                ErrorMessage="Phone number is required." CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditPhoneNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regDebitMakePaymentEditPhoneNumber" runat="server"
                                                ControlToValidate="txtCreditMakePaymentEditPhoneNumber" ErrorMessage="Use this format: 999-999-9999"
                                                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" CssClass="text-danger"
                                                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Email Address:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitMakePaymentEditEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revDebitMakePaymentEditEmail" runat="server"
                                                ErrorMessage="Email is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regDebitMakePaymentEditEmail" runat="server"
                                                ControlToValidate="txtDebitMakePaymentEditEmail" ErrorMessage="Must be a valid email address"
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"
                                                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Date of birth:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitMakePaymentEditDOB" runat="server" CssClass="form-control">mm/dd/yyyy</asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RegularExpressionValidator ID="revDebitMakePaymentEditDOB" runat="server"
                                                ErrorMessage="Date of birth" CssClass="text-danger"
                                                Display="Dynamic" ValidationExpression="[01]?\d\/[0-3]\d/\d{4}"
                                                ControlToValidate="txtDebitMakePaymentEditDOB" ForeColor="Red">Use this format: mm/dd/yyyy</asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Address:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitMakePaymentEditAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revDebitMakePaymentEditAddress" runat="server"
                                                ErrorMessage="Street Address is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">City:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitMakePaymentEditCity" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revDebitMakePaymentEditCity" runat="server"
                                                ErrorMessage="City is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditCity" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">State:</label>
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="ddlDebitMakePaymentEditState" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="StateName" DataValueField="StateCode">
                                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                            </asp:DropDownList>                                            
                                        </div>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" SelectCommand="SELECT * FROM [States] ORDER BY [StateCode]"></asp:SqlDataSource>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Zip code:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitMakePaymentEditZip" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revDebitMakePaymentEditZip" runat="server"
                                                ErrorMessage="Zip is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditZip" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regDebitMakePaymentEditZip" runat="server"
                                                ErrorMessage="Use this format: 00000" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditZip" ValidationExpression="\d{5}" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Student Type:</label>
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="ddltDebitMakePaymentEditStudentType" runat="server" ForeColor="Black">
                                                <asp:ListItem>Undergraduate</asp:ListItem>
                                                <asp:ListItem>Graduate</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-sm-4">
                                         <!--   <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server"
                                                ErrorMessage="Student type is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="ddltDebitMakePaymentEditStudentType" ForeColor="Red"></asp:RequiredFieldValidator> -->
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Name on the Card:</label>
                                            <div class="col-sm-5">
                                                <asp:TextBox ID="txtDebitMakePaymentEditNameOnCard" runat="server" CssClass="form-control"></asp:TextBox>
                                           </div>
                                           <div class="col-sm-3">
                                                <asp:RequiredFieldValidator ID="revDebitMakePaymentEditNameOnCard" runat="server"
                                                    ErrorMessage="Name on the Card is required" CssClass="text-danger"
                                                    Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditNameOnCard" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                     </div>
                                     <div class="form-group">
                                        <label class="control-label col-sm-3">Card Number:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitMakePaymentEditCardNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>                                                            
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="revDebitMakePaymentEditCardNumber" runat="server"
                                                ErrorMessage="Card Number is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditCardNumber" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regDebitMakePaymentEditCardNumber" runat="server" 
                                                ControlToValidate="txtDebitMakePaymentEditCardNumber" ErrorMessage="Use this format: xxxx-xxxx-xxxx-xxxx" 
                                                ValidationExpression="\d{4}-\d{4}-\d{4}-\d{4}" CssClass="text-danger" 
                                                Display="Dynamic" ForeColor="Red">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                     </div>
                                     <div class="form-group">
                                        <label class="control-label col-sm-3">Expiry Date:</label>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="txtDebitMakePaymentEditExpiryDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:RequiredFieldValidator ID="revDebitMakePaymentEditExpiryDate" runat="server"
                                                ErrorMessage="Expiry Date is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditExpiryDate" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </div>          
                                     </div>
                                     <div class="form-group">
                                        <label class="control-label col-sm-3">CVV:</label>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="txtDebitMakePaymentEditCVV" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:RequiredFieldValidator ID="revDebitMakePaymentEditCVV" runat="server"
                                                ErrorMessage="CVV is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditCVV" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="reguDebitMakePaymentEditCVV" runat="server"
                                                ErrorMessage="Use this format: 000" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditCVV" ValidationExpression="\d{3}" ForeColor="Red"></asp:RegularExpressionValidator>
                                      <!--      <asp:RangeValidator ID="regfDebitMakePaymentEditCVV" runat="server" 
                                                ControlToValidate="txtDebitMakePaymentEditCVV" Display="Dynamic" MaximumValue="999" 
                                                MinimumValue="111" ErrorMessage="Should be of type xxx"></asp:RangeValidator> -->
                                        </div>
                                     </div>
                                 <!--   <div class="form-group">
                                        <label class="control-label col-sm-3">Amount:</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="txtDebitMakePaymentEditAmount" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server"
                                                ErrorMessage="Amount is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitMakePaymentEditAmount" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                    </div> -->
                                <div class="form-group text-center">
                                    <asp:Label runat="server" ID="lblDebitMakePaymentEditWarning" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                                </div>
                                <asp:Button runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnUpdateDebitPaymentDetails_Click" />
                                <asp:Button runat="server" CssClass="btn btn-primary" Text="Clear" OnClick="btnClearDebitPaymentDetails_Click" />
                            </asp:View>
                        </asp:MultiView>
                    <%} else{ %>
                        <asp:MultiView runat="server" ID="MakePaymentCashMultiView">
                            <asp:View ID="MakePaymentCashMultiViewDetails" runat="server">
                            <div class="form-group">
                                <label class="control-label col-sm-3">First Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentFirstName" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Last Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentLastName" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Phone Number:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentPhoneNumber" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Email ID:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentEmailID" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Date of Birth:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentDOB" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Address:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentAddress" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">City:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentCity" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">State:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentState" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Zipcode:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentZip" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Student Type:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentStudentType" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Choose a Bank:</label>
                                <div class="col-sm-5">
                                    <asp:DropDownList ID="ddlCashMakePaymentChooseABank" runat="server" ForeColor="Black">
                                        <asp:ListItem>Bank of America</asp:ListItem>
                                        <asp:ListItem>Citi Bank</asp:ListItem>
                                        <asp:ListItem>American Express</asp:ListItem>
                                        <asp:ListItem>Chase Bank</asp:ListItem>
                                        <asp:ListItem>Discover Bank</asp:ListItem>
                                        <asp:ListItem>People's United Bank</asp:ListItem>
                                        <asp:ListItem>Connecticut Community Bank</asp:ListItem>
                                    </asp:DropDownList>
                                </div>                                        
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Payment Date:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentPaymentDate" runat="server" CssClass="form-control text-left" Enabled="false"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Amount:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="txtCashMakePaymentAmount" runat="server" CssClass="form-control text-left"></asp:TextBox>                                                        
                                </div>
                            </div>
                            <div class="form-group ">
                                <div class="col-sm-offset-3 col-sm-5">
                                    <asp:Label ID="lblCashPaymentSucessful" Font-Size="Large" runat="server"></asp:Label>
                                </div>
                            </div>
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Edit" OnClick="btnEditCashPaymentDetails_Click" />
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Confirm" OnClick="btnConfirmCashPaymentDetails_Click" />
                            </asp:View>
                            <asp:View ID="MakePaymentCashMultiViewEdit" runat="server">
                                <div class="form-group">
                                        <label class="control-label col-sm-3">First Name:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCashMakePaymentEditFirstName" runat="server" CssClass="form-control text-left"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="revCashMakePaymentEditFirstName" runat="server"
                                                ErrorMessage="First name is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCashMakePaymentEditFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Last Name:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCashMakePaymentEditLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revCashMakePaymentEditLastName" runat="server"
                                                ErrorMessage="Last name is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCashMakePaymentEditLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Phone Number:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCashMakePaymentEditPhoneNumber" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revCashMakePaymentEditPhoneNumber" runat="server"
                                                ErrorMessage="Phone number is required." CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCashMakePaymentEditPhoneNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regCashMakePaymentEditPhoneNumber" runat="server"
                                                ControlToValidate="txtCashMakePaymentEditPhoneNumber" ErrorMessage="Use this format: 999-999-9999"
                                                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" CssClass="text-danger"
                                                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Email Address:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCashMakePaymentEditEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revCashMakePaymentEditEmail" runat="server"
                                                ErrorMessage="Email is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCashMakePaymentEditEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regCashMakePaymentEditEmail" runat="server"
                                                ControlToValidate="txtCashMakePaymentEditEmail" ErrorMessage="Must be a valid email address"
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"
                                                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Date of birth:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCashMakePaymentEditDOB" runat="server" CssClass="form-control">mm/dd/yyyy</asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RegularExpressionValidator ID="revCashMakePaymentEditDOB" runat="server"
                                                ErrorMessage="Date of birth" CssClass="text-danger"
                                                Display="Dynamic" ValidationExpression="[01]?\d\/[0-3]\d/\d{4}"
                                                ControlToValidate="txtCashMakePaymentEditDOB" ForeColor="Red">Use this format: mm/dd/yyyy</asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Address:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCashMakePaymentEditAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revCashMakePaymentEditAddress" runat="server"
                                                ErrorMessage="Street Address is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCashMakePaymentEditAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">City:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCashMakePaymentEditCity" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revCashMakePaymentEditCity" runat="server"
                                                ErrorMessage="City is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCashMakePaymentEditCity" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">State:</label>
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="ddlCashMakePaymentEditState" runat="server" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="StateName" DataValueField="StateCode">
                                                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                            </asp:DropDownList>                                            
                                        </div>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" SelectCommand="SELECT * FROM [States] ORDER BY [StateCode]"></asp:SqlDataSource>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Zip code:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCashMakePaymentEditZip" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RequiredFieldValidator ID="revCashMakePaymentEditZip" runat="server"
                                                ErrorMessage="Zip is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCashMakePaymentEditZip" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regCashMakePaymentEditZip" runat="server"
                                                ErrorMessage="Use this format: 00000" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCashMakePaymentEditZip" ValidationExpression="\d{5}?" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Student Type:</label>
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="ddlCashMakePaymentEditStudentType" runat="server" ForeColor="Black">
                                                <asp:ListItem>Undergraduate</asp:ListItem>
                                                <asp:ListItem>Graduate</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                      <div class="col-sm-4">
                                           <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server"
                                                ErrorMessage="Student type is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="ddlCashMakePaymentEditStudentType" ForeColor="Red"></asp:RequiredFieldValidator> -->
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Choose a Bank:</label>
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="ddlCashMakePaymentEditChooseABank" runat="server" ForeColor="Black">
                                                <asp:ListItem>Bank of America</asp:ListItem>
                                                <asp:ListItem>Citi Bank</asp:ListItem>
                                                <asp:ListItem>American Express</asp:ListItem>
                                                <asp:ListItem>Chase Bank</asp:ListItem>
                                                <asp:ListItem>Discover Bank</asp:ListItem>
                                                <asp:ListItem>People's United Bank</asp:ListItem>
                                                <asp:ListItem>Connecticut Community Bank</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>                                        
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Payment Date:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCashMakePaymentEditPaymentDate" runat="server" CssClass="form-control" TextMode="Date">mm/dd/yyyy</asp:TextBox>
                                        </div>
                                        <div class="col-sm-4">
                                            <asp:RegularExpressionValidator ID="revCashMakePaymentEditPaymentDate" runat="server"
                                                ErrorMessage="Date of birth" CssClass="text-danger"
                                                Display="Dynamic" ValidationExpression="[01]?\d\/[0-3]\d/\d{4}"
                                                ControlToValidate="txtCashMakePaymentEditPaymentDate" ForeColor="Red">Use this format: mm/dd/yyyy</asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                 <!--   <div class="form-group">
                                        <label class="control-label col-sm-3">Amount:</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="txtCashMakePaymentEditAmount" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server"
                                                ErrorMessage="Amount is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCashMakePaymentEditAmount" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                    </div> -->
                                <div class="form-group text-center">
                                    <asp:Label runat="server" ID="lblCashMakePaymentEditWarning" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                                </div>
                                <asp:Button runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnUpdateCashPaymentDetails_Click" />
                                <asp:Button runat="server" CssClass="btn btn-primary" Text="Clear" OnClick="btnClearCashPaymentDetails_Click" />
                            </asp:View>
                        </asp:MultiView>
                    <% } %>                    
                    </div>                                                         
                </asp:View>
                <asp:View ID="PaymentHistoryView" runat="server">
                    <div class="container">
                        <div class="well well-sm">
                            <h2>View Profile</h2>
                        </div>
                        <div class="form-horizontal col-sm-11 table-responsive">
                            <asp:Label runat="server" Enabled="false" ID="lblUserName" Visible="false"></asp:Label>
                            <asp:GridView ID="grdPaymentHistory" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource4" DataKeyNames="FirstName" 
                                CssClass="table table-bordered table-condensed table-hover" 
                                OnPreRender="grdPaymentHistory_Prerender" 
                                PageSize="5" AllowPaging="True" >
                                <Columns>
                                    <asp:BoundField DataField="FirstName" HeaderText="First Name" 
                                        ReadOnly="True" SortExpression="FirstName">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="LastName" HeaderText="Last Name" 
                                        ReadOnly="True" SortExpression="LastName">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PaymentDate" HeaderText="Payment Date" 
                                        ReadOnly="True" SortExpression="PaymentDate">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PaymentMethod" HeaderText="Payment Method" 
                                        ReadOnly="True" SortExpression="PaymentMethod">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="AmountPaid" HeaderText="AmountPaid" 
                                        ReadOnly="True" SortExpression="AmountPaid">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DueAmount" HeaderText="Due Amount" 
                                        ReadOnly="True" SortExpression="DueAmount">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>                                    
                                </Columns>
                                <HeaderStyle BackColor="#8c8c8c" ForeColor="White" Font-Bold="true" />
                                <PagerSettings Mode="Numeric" />
                                <PagerStyle CssClass="pagerStyle" 
                                    BackColor="#8c8c8c" HorizontalAlign="Center" ForeColor="White" />
                                <SelectedRowStyle CssClass="warning" />
                                <FooterStyle BackColor="#8c8c8c" ForeColor="White" Font-Bold="true" />
                                <EditRowStyle CssClass="warning" />
                                <AlternatingRowStyle CssClass="altrow" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" 
                                SelectCommand="SELECT [FirstName], [LastName], [PaymentDate], [PaymentMethod], [AmountPaid], [DueAmount] FROM [PaymentHistory] WHERE ([Student_UserID] = @Student_UserID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblUserName" Name="Student_UserID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
