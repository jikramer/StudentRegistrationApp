<%@ Page Title="" Language="C#" MasterPageFile="~/AdminView.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="StudentRegistrationApplication.StudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminheadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="container">
                        <div class="well well-sm" style="align-content:center">
                            <h2 style="padding-left:100px">StudentDetails</h2>

                            <asp:GridView ID="StudentDetailsGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
                                    <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" ReadOnly="True" InsertVisible="False" SortExpression="Student_Id"></asp:BoundField>
                                    <asp:BoundField DataField="Student_FirstName" HeaderText="Student_FirstName" SortExpression="Student_FirstName"></asp:BoundField>
                                    <asp:BoundField DataField="Student_LastName" HeaderText="Student_LastName" SortExpression="Student_LastName"></asp:BoundField>
                                    <asp:BoundField DataField="Student_ContactNo" HeaderText="Student_ContactNo" SortExpression="Student_ContactNo"></asp:BoundField>
                                    <asp:BoundField DataField="Student_email" HeaderText="Student_email" SortExpression="Student_email"></asp:BoundField>
                                    <asp:BoundField DataField="Student_DOB" HeaderText="Student_DOB" SortExpression="Student_DOB"></asp:BoundField>
                                    <asp:BoundField DataField="Student_StAddress" HeaderText="Student_StAddress" SortExpression="Student_StAddress"></asp:BoundField>
                                    <asp:BoundField DataField="Student_City" HeaderText="Student_City" SortExpression="Student_City"></asp:BoundField>
                                    <asp:BoundField DataField="Student_State" HeaderText="Student_State" SortExpression="Student_State"></asp:BoundField>
                                    <asp:BoundField DataField="Student_Zipcode" HeaderText="Student_Zipcode" SortExpression="Student_Zipcode"></asp:BoundField>
                                    <asp:BoundField DataField="Student_Type" HeaderText="Student_Type" SortExpression="Student_Type"></asp:BoundField>
                                    <asp:BoundField DataField="Student_UserID" HeaderText="Student_UserID" SortExpression="Student_UserID"></asp:BoundField>
                                    <asp:BoundField DataField="Student_Password" HeaderText="Student_Password" SortExpression="Student_Password"></asp:BoundField>
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:UserInfoConnectionString %>' DeleteCommand="DELETE FROM [StudentData] WHERE [Student_Id] = @original_Student_Id AND (([Student_FirstName] = @original_Student_FirstName) OR ([Student_FirstName] IS NULL AND @original_Student_FirstName IS NULL)) AND (([Student_LastName] = @original_Student_LastName) OR ([Student_LastName] IS NULL AND @original_Student_LastName IS NULL)) AND (([Student_ContactNo] = @original_Student_ContactNo) OR ([Student_ContactNo] IS NULL AND @original_Student_ContactNo IS NULL)) AND (([Student_email] = @original_Student_email) OR ([Student_email] IS NULL AND @original_Student_email IS NULL)) AND (([Student_DOB] = @original_Student_DOB) OR ([Student_DOB] IS NULL AND @original_Student_DOB IS NULL)) AND (([Student_StAddress] = @original_Student_StAddress) OR ([Student_StAddress] IS NULL AND @original_Student_StAddress IS NULL)) AND (([Student_City] = @original_Student_City) OR ([Student_City] IS NULL AND @original_Student_City IS NULL)) AND (([Student_State] = @original_Student_State) OR ([Student_State] IS NULL AND @original_Student_State IS NULL)) AND (([Student_Zipcode] = @original_Student_Zipcode) OR ([Student_Zipcode] IS NULL AND @original_Student_Zipcode IS NULL)) AND (([Student_Type] = @original_Student_Type) OR ([Student_Type] IS NULL AND @original_Student_Type IS NULL)) AND (([Student_UserID] = @original_Student_UserID) OR ([Student_UserID] IS NULL AND @original_Student_UserID IS NULL)) AND (([Student_Password] = @original_Student_Password) OR ([Student_Password] IS NULL AND @original_Student_Password IS NULL))" InsertCommand="INSERT INTO [StudentData] ([Student_FirstName], [Student_LastName], [Student_ContactNo], [Student_email], [Student_DOB], [Student_StAddress], [Student_City], [Student_State], [Student_Zipcode], [Student_Type], [Student_UserID], [Student_Password]) VALUES (@Student_FirstName, @Student_LastName, @Student_ContactNo, @Student_email, @Student_DOB, @Student_StAddress, @Student_City, @Student_State, @Student_Zipcode, @Student_Type, @Student_UserID, @Student_Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Student_Id], [Student_FirstName], [Student_LastName], [Student_ContactNo], [Student_email], [Student_DOB], [Student_StAddress], [Student_City], [Student_State], [Student_Zipcode], [Student_Type], [Student_UserID], [Student_Password] FROM [StudentData]" UpdateCommand="UPDATE [StudentData] SET [Student_FirstName] = @Student_FirstName, [Student_LastName] = @Student_LastName, [Student_ContactNo] = @Student_ContactNo, [Student_email] = @Student_email, [Student_DOB] = @Student_DOB, [Student_StAddress] = @Student_StAddress, [Student_City] = @Student_City, [Student_State] = @Student_State, [Student_Zipcode] = @Student_Zipcode, [Student_Type] = @Student_Type, [Student_UserID] = @Student_UserID, [Student_Password] = @Student_Password WHERE [Student_Id] = @original_Student_Id AND (([Student_FirstName] = @original_Student_FirstName) OR ([Student_FirstName] IS NULL AND @original_Student_FirstName IS NULL)) AND (([Student_LastName] = @original_Student_LastName) OR ([Student_LastName] IS NULL AND @original_Student_LastName IS NULL)) AND (([Student_ContactNo] = @original_Student_ContactNo) OR ([Student_ContactNo] IS NULL AND @original_Student_ContactNo IS NULL)) AND (([Student_email] = @original_Student_email) OR ([Student_email] IS NULL AND @original_Student_email IS NULL)) AND (([Student_DOB] = @original_Student_DOB) OR ([Student_DOB] IS NULL AND @original_Student_DOB IS NULL)) AND (([Student_StAddress] = @original_Student_StAddress) OR ([Student_StAddress] IS NULL AND @original_Student_StAddress IS NULL)) AND (([Student_City] = @original_Student_City) OR ([Student_City] IS NULL AND @original_Student_City IS NULL)) AND (([Student_State] = @original_Student_State) OR ([Student_State] IS NULL AND @original_Student_State IS NULL)) AND (([Student_Zipcode] = @original_Student_Zipcode) OR ([Student_Zipcode] IS NULL AND @original_Student_Zipcode IS NULL)) AND (([Student_Type] = @original_Student_Type) OR ([Student_Type] IS NULL AND @original_Student_Type IS NULL)) AND (([Student_UserID] = @original_Student_UserID) OR ([Student_UserID] IS NULL AND @original_Student_UserID IS NULL)) AND (([Student_Password] = @original_Student_Password) OR ([Student_Password] IS NULL AND @original_Student_Password IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Student_Id" Type="Int32"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_FirstName" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_LastName" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_ContactNo" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_email" Type="String"></asp:Parameter>
                                    <asp:Parameter DbType="Date" Name="original_Student_DOB"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_StAddress" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_City" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_State" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_Zipcode" Type="Int32"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_Type" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_UserID" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_Password" Type="String"></asp:Parameter>
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Student_FirstName" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_LastName" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_ContactNo" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_email" Type="String"></asp:Parameter>
                                    <asp:Parameter DbType="Date" Name="Student_DOB"></asp:Parameter>
                                    <asp:Parameter Name="Student_StAddress" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_City" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_State" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_Zipcode" Type="Int32"></asp:Parameter>
                                    <asp:Parameter Name="Student_Type" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_UserID" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_Password" Type="String"></asp:Parameter>
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Student_FirstName" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_LastName" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_ContactNo" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_email" Type="String"></asp:Parameter>
                                    <asp:Parameter DbType="Date" Name="Student_DOB"></asp:Parameter>
                                    <asp:Parameter Name="Student_StAddress" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_City" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_State" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_Zipcode" Type="Int32"></asp:Parameter>
                                    <asp:Parameter Name="Student_Type" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_UserID" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Student_Password" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_Id" Type="Int32"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_FirstName" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_LastName" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_ContactNo" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_email" Type="String"></asp:Parameter>
                                    <asp:Parameter DbType="Date" Name="original_Student_DOB"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_StAddress" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_City" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_State" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_Zipcode" Type="Int32"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_Type" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_UserID" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="original_Student_Password" Type="String"></asp:Parameter>
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
        <div class="form-group">
        <div class="col-sm-12">
           <%-- <asp:HyperLink ID="HomeHyperLink" runat="server" NavigateUrl="~/Home.aspx"><span class="glyphicon glyphicon-home"></span>Home</asp:HyperLink>--%>
            <asp:Button ID="btnAddUser" runat="server" Text="Add Student" CssClass="btn btn-primary" OnClick="btnConfirm_Click" />
            
        </div>
    </div>
   </div>
</asp:Content>
