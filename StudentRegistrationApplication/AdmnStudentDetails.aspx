<%@ Page Title="" Language="C#" MasterPageFile="~/AdminView.Master" AutoEventWireup="true" CodeBehind="AdmnStudentDetails.aspx.cs" Inherits="StudentRegistrationApplication.AdmnAddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminheadPlaceHolder" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="row content">
        
        <div class="col-sm-6">
            <asp:MultiView ID="StudentMultiView" runat="server">
                <asp:View ID="StudentDetailsView" runat="server">
                     
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
