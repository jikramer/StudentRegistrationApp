<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="StudentRegistrationApplication.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheets/Site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body> 
     <div class="container">
         <div class="jumbotron">
            <h2>Registration and Sign up</h2>     
          </div> 
     <main>
      <form id="form1" runat="server" class="form-horizontal">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" cssclass="summery text-danger" HeaderText="Please correct these entries:" Display="Dynamic" ForeColor="Red"/>

            <h3>Personal Information</h3>

            <div class="form-group">
                <label class="control-label col-sm-3">First Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>  
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                        ErrorMessage="First name is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Last Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                        ErrorMessage="Last name is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Phone Number:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" 
                        ErrorMessage="Phone number is required." CssClass="text-danger"
                        Display="Dynamic" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="PhoneNumberRegularExpressionValidator" runat="server" 
                        ControlToValidate="txtPhone" ErrorMessage="Use this format: 999-999-9999" 
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" CssClass="text-danger" 
                        Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>  
             <div class="form-group">
                <label class="control-label col-sm-3">Email Address:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                        ErrorMessage="Email is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator> 
                     <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Must be a valid email address" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger" 
                        Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>  
             <div class="form-group">
                <label class="control-label col-sm-3">Date of birth:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control">mm/dd/yyyy</asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RegularExpressionValidator ID="revDOB" runat="server" 
                        ErrorMessage="Date of birth" CssClass="text-danger"
                        Display="Dynamic" ValidationExpression="[01]?\d\/[0-3]\d/\d{4}"
                        ControlToValidate="txtDOB" ForeColor="Red">Use this format: mm/dd/yyyy</asp:RegularExpressionValidator>
                </div>
            </div>     
            <div class="form-group">
                <label class="control-label col-sm-3">Address:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server" 
                        ErrorMessage="Street Address is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">City:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" 
                        ErrorMessage="City is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">State:</label>
                <div class="col-sm-5">
                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
                        <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <%--<div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" 
                        ErrorMessage="State is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="ddlState" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>--%>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Zip code:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtZip" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvZip" runat="server" 
                        ErrorMessage="Zip is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtZip" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ZipCodeRegularExpressionValidator" runat="server" 
                        ErrorMessage="Use this format: 00000-0000" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtZip" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>  
             <h3>Academic Information</h3>
           <div class="form-group">
                <label class="control-label col-sm-3">Student Type:</label>
                <div class="col-sm-5">
                    <asp:DropDownList ID="ddlStudentType" runat="server" ForeColor="Black">
                       <asp:ListItem>Undergraduate</asp:ListItem>
                       <asp:ListItem>Graduate</asp:ListItem>
                     </asp:DropDownList>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RfvStudentType" runat="server" 
                        ErrorMessage="Student type is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="ddlStudentType" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
                   
             <h3>Signup Information</h3>
                <div class="form-group">
                <label class="control-label col-sm-3">Enter Username:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" 
                        ErrorMessage="Username is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3">Enter Password:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvPass" runat="server" 
                        ErrorMessage="Password is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator> 
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">Re-Enter Password:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtPassword2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvPass2" runat="server" 
                        ErrorMessage="Password is required" CssClass="text-danger" 
                        Display="Dynamic" ControlToValidate="txtPassword2" ForeColor="Red"></asp:RequiredFieldValidator> 
                     <asp:CompareValidator ID="PasswordCompareValidator" runat="server" ControlToCompare="txtPassword" 
                        ControlToValidate="txtPassword2" ErrorMessage="Must match first password" CssClass="text-danger" 
                        Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="btn btn-primary" PostBackUrl="~/Home.aspx" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary"/>
                </div>
            </div>        
       </form> 
         </main>
     </div>
</body>
</html>
