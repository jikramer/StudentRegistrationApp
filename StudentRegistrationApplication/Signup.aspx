<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" MasterPageFile="~/AdminView.Master" Inherits="StudentRegistrationApplication.Signup" %>
<%@ MasterType VirtualPath = "~/AdminView.Master" %>

<asp:Content ContentPlaceHolderID="AdminheadPlaceHolder" runat="server">
    <link href="StyleSheets/Site.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="mainContent" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="container">
        <div class="well well-sm" style="align-content:center">
                            <h2>Student Registration</h2>
            </div>
         <%--<div class="jumbotron">
             <div class="text-left">
                 <h3>Welcome Admin!</h3>
             </div>
            <h2>Student Registration</h2>     
          </div>--%> 
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summery text-danger" HeaderText="Please correct these entries:" Display="Dynamic" ForeColor="Red" />

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
            <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateCode">
                <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" SelectCommand="SELECT * FROM [States] ORDER BY [StateCode]"></asp:SqlDataSource>
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
        
    <div class="form-group">
        <div class="col-sm-12">
           <%-- <asp:HyperLink ID="HomeHyperLink" runat="server" NavigateUrl="~/Home.aspx"><span class="glyphicon glyphicon-home"></span>Home</asp:HyperLink>--%>
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="btn btn-primary" OnClick="btnConfirm_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary" />
        </div>
    </div>
    </div>
</asp:Content>
