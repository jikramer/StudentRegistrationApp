<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClaimAccount.aspx.cs" Inherits="StudentRegistrationApplication.ClaimAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="StyleSheets/LoginStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class="well well-sm">
        <h2>Claim Account</h2>
    </div>

    <div class="container text-right col-sm-pull-2">
        <div class="form-group">
            <label class="col-sm-2">Enter First Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="FirstNameTB" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                ErrorMessage="First name is required" CssClass="text-danger"
                Display="Dynamic" ControlToValidate="FirstNameTB" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2">Enter Last Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="LastNameTB" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                ErrorMessage="Last name is required" CssClass="text-danger"
                Display="Dynamic" ControlToValidate="LastNameTB" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2">Enter Date Of Birth:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="DOBTB" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
            <asp:RegularExpressionValidator ID="revDOB" runat="server"
                ErrorMessage="Date of birth" CssClass="text-danger"
                Display="Dynamic" ValidationExpression="[01]?\d\/[0-3]\d/\d{4}"
                ControlToValidate="DOBTB" ForeColor="Red">Use this format: mm/dd/yyyy</asp:RegularExpressionValidator>
           </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2">Enter Email ID:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="EmailTB" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ErrorMessage="Email is required" CssClass="text-danger"
                Display="Dynamic" ControlToValidate="EmailTB" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server"
                ControlToValidate="EmailTB" ErrorMessage="Must be a valid email address"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"
                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2">Select Student Type:</label>
            <div class="col-sm-5 text-left">
                <asp:DropDownList ID="ddlStudentType" runat="server">
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
        <div class="form-group">
            <div class="col-sm-5">
                <asp:Button ID="SubmitBtn" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="SubmitBtn_Click"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-10 text-left">
                <asp:Label ID="UsernotfoundLabel" runat="server" Text="User Not Found! Register with Admin first or Enter the correct information." ForeColor="Red" Font-Size="Large" Visible="False"></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2">Enter Username:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="UserIDText" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server"
                ErrorMessage="Username is required" CssClass="text-danger"
                Display="Dynamic" ControlToValidate="UserIDText" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2">Enter Password:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="PasswordText" runat="server" CssClass="form-control" TextMode="Password" Enabled="False"></asp:TextBox>
            </div>
            <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvPass" runat="server"
                ErrorMessage="Password is required" CssClass="text-danger"
                Display="Dynamic" ControlToValidate="PasswordText" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
             </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2">Re-Enter Password:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="ReEnterPswdTxt" runat="server" CssClass="form-control" TextMode="Password" Enabled="False"></asp:TextBox>
            </div>
            <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvPass2" runat="server"
                ErrorMessage="Password is required" CssClass="text-danger"
                Display="Dynamic" ControlToValidate="ReEnterPswdTxt" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="PasswordCompareValidator" runat="server" ControlToCompare="PasswordText"
                ControlToValidate="ReEnterPswdTxt" ErrorMessage="Must match first password" CssClass="text-danger"
                Display="Dynamic" ForeColor="Red" Enabled="False"></asp:CompareValidator>
             </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="btnClaim" runat="server" Text="Claim" CssClass="btn btn-primary" Enabled="False" OnClick="btnClaim_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary" PostBackUrl="~/StudentLogin" />
                <asp:HyperLink ID="LoginHyperLink" runat="server" NavigateUrl="~/StudentLogin">Go Back To Login</asp:HyperLink>
                <asp:HyperLink ID="HomeHyperLink" runat="server" NavigateUrl="~/Home">Home</asp:HyperLink>
            </div>
        </div>
     </div>
</asp:Content>
