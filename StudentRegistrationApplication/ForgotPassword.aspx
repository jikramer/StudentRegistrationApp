<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="StudentRegistrationApplication.ForgotPassword1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <link href="StyleSheets/LoginStyle.css" rel="stylesheet" />
</head>
<body>
    <main class="text-center">
        <form id="form1" runat="server">
            <div class="well well-sm">
        <h2>Forgot Password</h2>
    </div>

    <div class="container col-sm-pull-2">
        <div class="form-group row">
            <label class="col-sm-2">Enter First Name:</label>
            <div class="col-sm-3">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                    ErrorMessage="First name is required" CssClass="text-danger"
                    Display="Dynamic" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">Enter Last Name:</label>
            <div class="col-sm-3">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                    ErrorMessage="Last name is required" CssClass="text-danger"
                    Display="Dynamic" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">Enter User ID:</label>
            <div class="col-sm-3">
                <asp:TextBox ID="txtUserID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvUserID" runat="server"
                    ErrorMessage="User ID is required" CssClass="text-danger"
                    Display="Dynamic" ControlToValidate="txtUserID" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
        </div>
        <div class="form-group row">
            <asp:Label runat="server" ID="lblPassword1" Text="Password:" Font-Bold="true" CssClass="col-sm-2"></asp:Label>
            <div class="col-sm-3">
                <asp:Label runat="server" ID="lblPassword2" Font-Bold="true"></asp:Label>
            </div>
        </div>
        <div class="form-group row text-center">
            <asp:Label runat="server" ID="lblWarning" Font-Bold="true" ForeColor="Red" Font-Size="Large"></asp:Label>
        </div>
        <div class="form-group row">
            <div style="padding-right:500px">
                <asp:Button ID="btnGetPassowrd" runat="server" Text="Get Password" CssClass="btn btn-primary" OnClick="btnGetPassowrd_Click" />                
                <asp:HyperLink runat="server" CssClass="" Text="Navigate to Home Screen" NavigateUrl="~/Home.aspx"></asp:HyperLink>                
            </div>
        </div>
        <div class="form-group row text-right" style="padding-right:50px">
            <asp:HyperLink runat="server" Text="<-- Back to Login Screen" CssClass="text-right" NavigateUrl="~/StudentLogin.aspx"></asp:HyperLink>
        </div>
    </div>
        </form>
    </main>
</body>
</html>
