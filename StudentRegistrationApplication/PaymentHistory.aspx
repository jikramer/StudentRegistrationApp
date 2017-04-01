<%@ Page Title="" Language="C#" MasterPageFile="~/AdminView.Master" AutoEventWireup="true" CodeBehind="PaymentHistory.aspx.cs" Inherits="StudentRegistrationApplication.PaymentHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminheadPlaceHolder" runat="server">
    <link href="StyleSheets/PaymentSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
     <div class="container">
        <div class="jumbotron">
            <h2>Student Payment History</h2>     
        </div>   
    <div class="form-group text-right">
        <div class="col-sm-3">
           <asp:HyperLink ID="PrintHp" runat="server"><span class="glyphicon glyphicon-print"></span>Print</asp:HyperLink>
           <asp:HyperLink ID="DownloadHp" runat="server"><span class="glyphicon glyphicon-download"></span>Download</asp:HyperLink>
        
        </div>
    </div>
    <div class="form-group text-center">
        <label class="control-label col-sm-3">Enter Student ID:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtStudentID" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvStudentID" runat="server"
                ErrorMessage="Student ID is required" CssClass="text-danger"
                Display="Dynamic" ControlToValidate="txtStudentID" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revStudentID" runat="server"
                ErrorMessage="Enter a six digit ID" CssClass="text-danger"
                Display="Dynamic" ValidationExpression="\d{4}"
                ControlToValidate="txtStudentID" ForeColor="Red"></asp:RegularExpressionValidator>        
        </div>
    </div>
     <div class="form-group">
        <label class="control-label col-sm-3">Selected Payment Method:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtSelectedPayMethod" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    
    <div class="form-group">
        <label class="control-label col-sm-2">Payment Details:</label>
        <div class="col-sm-12">
            <asp:GridView ID="PaymentDetailsGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </div> 
    <div class="form-group">
        <div class="col-sm-12">
           <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-primary"/>
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary"/>
        </div>
    </div>
    </div>
</asp:Content>
