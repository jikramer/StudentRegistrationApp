<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" MasterPageFile="~/Site.Master" Inherits="StudentRegistrationApplication.StudentLogin" %>


<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="StyleSheets/LoginStyle.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">

    <div class="well well-sm">
        <h2>Login</h2>
    </div>

    <div class="container col-sm-pull-2">
        <div class="form-group">
            <label class="col-sm-2">Enter Username:</label>
            <div class="col-sm-3">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2">Enter Password:</label>
            <div class="col-sm-3">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-2">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-5">
                <p>
                    Forgot Password?
                    <asp:HyperLink ID="HyperLink1" runat="server">Click Here</asp:HyperLink>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
