<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="StudentRegistrationApplication.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheets/LoginStyle.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <div class="container-fluid">
        <main>
            <form id="form1" runat="server" class="form-horizontal">
                <div class="well well-sm">
                     <h2>Login</h2>     
                </div>
        
           <div class="container col-sm-pull-2">         
                <div class="form-group">
                    <label class="col-sm-2">Enter Username:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="UsernameTxt" runat="server" CssClass="form-control"></asp:TextBox>  
                    </div>
                </div>
               <div class="form-group">
                        <label class="col-sm-2">Enter Password:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="PasswordTxt" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>  
                    </div>
                </div>
               <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-2">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary"/>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-5">
                       <p>Forgot Password? <asp:HyperLink ID="HyperLink1" runat="server">Click Here</asp:HyperLink> </p>
                    </div>
                </div>
         </div>
         </form>
       </main>
    </div>
</body>
</html>
