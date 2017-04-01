<%@ Page Title="" Language="C#" MasterPageFile="~/AdminView.Master" AutoEventWireup="true" CodeBehind="StudentHistory.aspx.cs" Inherits="StudentRegistrationApplication.StudentHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminheadPlaceHolder" runat="server">
    <link href="StyleSheets/ViewStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="container">
        <div class="jumbotron">
            <h2>Student Records</h2>     
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

    <h3>Personal Information</h3>
     <div class="form-group">
        <label class="control-label col-sm-3">First Name:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">Last Name:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3">Phone Number:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">Email Address:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">Date of birth:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">Address:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3">City:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3">State:</label>
        <div class="col-sm-5">
           <asp:TextBox ID="TxtState" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="form-group">       
        <label class="control-label col-sm-3">Zip code:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtZip" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <h3>Academic Information</h3>
    <div class="form-group">
        <label class="control-label col-sm-3">Student Type:</label>
        <div class="col-sm-5">
             <asp:TextBox ID="TxtStudentType" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">Major:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="TxtMajor" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">Start Date:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="TxtStartDate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">Graduation Date:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="TxtGraduatedIn" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
     <div class="form-group text-center">
        <label class="control-label col-sm-3">GPA:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="TxtGPA" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Academic Chart:</label>
        <div class="col-sm-12">
            <asp:GridView ID="StudentHistoryGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" />
        </div>
    </div>
    </div>
</asp:Content>
