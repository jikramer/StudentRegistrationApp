<%@ Page Title="" Language="C#" MasterPageFile="~/AdminView.Master" AutoEventWireup="true" CodeBehind="UpdateResultSheet.aspx.cs" Inherits="StudentRegistrationApplication.UpdateResultSheet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminheadPlaceHolder" runat="server">
    <link href="StyleSheets/PaymentSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="container">
        <div class="jumbotron">
            <h2>Update Result Sheet</h2>     
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
        <label class="control-label col-sm-2">Course Code:</label>
        <div class="col-sm-2">
            <asp:TextBox ID="txtCourseCode1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <label class="control-label col-sm-2">Grade:</label>
        <div class="col-sm-2">
            <asp:TextBox ID="TxtGrade1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <label class="control-label col-sm-2">Credits:</label>
         <div class="col-sm-2">
            <asp:TextBox ID="TxtCredits1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Course Code:</label>
        <div class="col-sm-2">
            <asp:TextBox ID="txtCourseCode2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <label class="control-label col-sm-2">Grade:</label>
        <div class="col-sm-2">
            <asp:TextBox ID="TxtGrade2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <label class="control-label col-sm-2">Credits:</label>
         <div class="col-sm-2">
            <asp:TextBox ID="TxtCredits2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Course Code:</label>
        <div class="col-sm-2">
            <asp:TextBox ID="txtCourseCode3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <label class="control-label col-sm-2">Grade:</label>
        <div class="col-sm-2">
            <asp:TextBox ID="TxtGrade3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <label class="control-label col-sm-2">Credits:</label>
         <div class="col-sm-2">
            <asp:TextBox ID="TxtCredits3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-12">
           <asp:Button ID="BtnCalculate" runat="server" Text="Calculate" CssClass="btn btn-primary" />
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">GPA:</label>
        <div class="col-sm-5">
             <asp:TextBox ID="TxtGPA" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-12">
           <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary"/>
        </div>
    </div>
  </div>
</asp:Content>
