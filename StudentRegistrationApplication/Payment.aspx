<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" MasterPageFile="~/Site.Master" Inherits="StudentRegistrationApplication.Payment" %>


<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="StyleSheets/MultiviewStlye.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">

    <div class="row content">
        <div class="col-sm-2 sidenav">
            <h4>
                <p>
                    <asp:HyperLink ID="HomeHyperLink" runat="server" ForeColor="White" NavigateUrl="~/Home.aspx"><span class="glyphicon glyphicon-home"></span>Home</asp:HyperLink></p>
            </h4>
            <br />
            <p>
                <asp:Button ID="SetPayMethodButton" runat="server" Text="Set Payment Method" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="52px" Width="206px" OnClick="SetPayMethodButton_Click" /></p>
            <p>
                <asp:Button ID="ViewAccountButton" runat="server" Text="View Account Details" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="52px" Width="206px" CssClass="auto-style1" OnClick="ViewAccountButton_Click" /></p>
            <p>
                <asp:Button ID="MakePaymentButton" runat="server" Text="Make Payment" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="52px" Width="206px" OnClick="MakePaymentButton_Click" /></p>
        </div>
        <div class="col-sm-6">
            <asp:MultiView ID="PaymentMultiView" runat="server">
                <asp:View ID="SetPayMethodView" runat="server">
                    <div class="container">
                        <div class="well well-sm">
                            <h2>Set Payment Method</h2>
                        </div>
                        <div class="form-horizontal">
                            <div class="form-group">
                            </div>
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="ViewAccountView" runat="server">
                    <div class="container">
                        <div class="well well-sm">
                            <h2>View Account Details</h2>
                        </div>
                        <div class="form-horizontal">
                            <div class="form-group">
                            </div>
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="MakePaymentView" runat="server">
                    <div class="container">
                        <div class="well well-sm">
                            <h2>Make Payment</h2>
                        </div>
                        <div class="form-horizontal">
                            <div class="form-group">
                            </div>
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
