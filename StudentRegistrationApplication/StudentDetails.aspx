<%@ Page Title="" Language="C#" MasterPageFile="~/AdminView.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="StudentRegistrationApplication.StudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminheadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="container">
        <div class="well well-sm">
            <h2>Student Details</h2>
        </div>
        <p><asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        HeaderText="Please correct the following errors:" 
                        CssClass="text-danger col-sm-offset-1" ForeColor="Red" /></p>
        <div class="col-sm-12 table-responsive">
            <asp:GridView ID="grdStudentDetails" runat="server" AutoGenerateColumns="false" 
                DataKeyNames="Student_UserID" DataSourceID="SqlDataSource1" 
                CssClass="table table-hover table-condensed table-bordered" 
                PageSize="5" AllowPaging="true"
                OnPreRender="grdStudentDetails_PreRender" 
                OnRowDeleted="grdStudentDetails_RowDeleted" 
                OnRowUpdated="grdStudentDetails_RowUpdated">
                <Columns>
                    <asp:BoundField DataField="Student_UserID" HeaderText="Student UserID" 
                        ReadOnly="True" SortExpression="Student_UserID">
                        <ItemStyle CssClass="col-sm-1" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="First Name">
                        <EditItemTemplate>
                        <div class="col-xs-11 col-edit">
                            <asp:TextBox ID="txtgrdFirstName" runat="server" 
                                MaxLength="15" CssClass="form-control" 
                                Text='<%# Bind("Student_FirstName") %>'>
                            </asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            runat="server" CssClass="text-danger" Text="*" 
                            ControlToValidate="txtgrdFirstName" ValidationGroup="Edit" 
                            ErrorMessage="First Name is a required field" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblgrdFirstName" runat="server" 
                                Text='<%# Bind("Student_FirstName") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="col-sm-2" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <EditItemTemplate>
                        <div class="col-xs-11 col-edit">
                            <asp:TextBox ID="txtgrdLastName" runat="server" 
                                MaxLength="15" CssClass="form-control" 
                                Text='<%# Bind("Student_LastName") %>'>
                            </asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                            runat="server" CssClass="text-danger" Text="*" 
                            ControlToValidate="txtgrdLastName" ValidationGroup="Edit" 
                            ErrorMessage="Last Name is a required field" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblgrdLastName" runat="server" 
                                Text='<%# Bind("Student_LastName") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="col-sm-2" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact No">
                        <EditItemTemplate>
                        <div class="col-xs-11 col-edit">
                            <asp:TextBox ID="txtgrdContactNo" runat="server" 
                                MaxLength="15" CssClass="form-control" 
                                Text='<%# Bind("Student_ContactNo") %>'>
                            </asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                            runat="server" CssClass="text-danger" Text="*" 
                            ControlToValidate="txtgrdContactNo" ValidationGroup="Edit" 
                            ErrorMessage="Contact Number is a required field" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                            ControlToValidate="txtgrdContactNo" ErrorMessage="Use this format: 999-999-9999"
                            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" CssClass="text-danger"
                            Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="lblgrdContactNo" runat="server" 
                            Text='<%# Bind("Student_ContactNo") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="col-sm-3" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email ID">
                        <EditItemTemplate>
                        <div class="col-xs-11 col-edit">
                            <asp:TextBox ID="txtgrdemail" runat="server" 
                                MaxLength="15" CssClass="form-control" 
                                Text='<%# Bind("Student_email") %>'>
                            </asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                            runat="server" CssClass="text-danger" Text="*" 
                            ControlToValidate="txtgrdemail" ValidationGroup="Edit" 
                            ErrorMessage="Email ID is a required field" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server"
                            ControlToValidate="txtgrdemail" ErrorMessage="Must be a valid email address"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"
                            Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="lblgrdemail" runat="server" 
                            Text='<%# Bind("Student_email") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="col-sm-2" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Birth">
                        <EditItemTemplate>
                        <div class="col-xs-11 col-edit">
                            <asp:TextBox ID="txtgrdDOB" runat="server" TextMode="Date" 
                                MaxLength="15" CssClass="form-control" 
                                Text='<%# Bind("Student_DOB") %>'>
                            </asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                            runat="server" CssClass="text-danger" Text="*" 
                            ControlToValidate="txtgrdDOB" ValidationGroup="Edit" 
                            ErrorMessage="Date of Birth is a required field" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revDOB" runat="server"
                            ErrorMessage="Date of birth" CssClass="text-danger"
                            Display="Dynamic" ValidationExpression="[01]?\d\/[0-3]\d/\d{4}"
                            ControlToValidate="txtgrdDOB" ForeColor="Red">Use this format: mm/dd/yyyy</asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="lblgrdDOB" runat="server" 
                            Text='<%# Bind("Student_DOB") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="col-sm-1" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Amount" HeaderText="Due Amount" 
                        ReadOnly="True" SortExpression="Amount">
                        <ItemStyle CssClass="col-sm-1" />
                    </asp:BoundField>
                    <asp:CommandField CausesValidation="true" ShowEditButton="true" 
                        ValidationGroup="Edit" >
                        <ItemStyle CssClass="col-sm-1" />
                    </asp:CommandField>
                                           
                </Columns>
                <EditRowStyle BackColor="#E2DED6" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <PagerSettings Mode="Numeric" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>"
                ConflictDetection="CompareAllValues"
                OldValuesParameterFormatString="original_{0}" 
                DeleteCommand="DELETE FROM [StudentData] 
                WHERE [Student_Id] = @original_Student_Id
                AND [Student_FirstName] = @original_Student_FirstName
                AND [Student_LastName] = @original_Student_LastName
                AND [Student_ContactNo] = @original_Student_ContactNo
                AND [Student_email] = @original_Student_email
                AND [Student_DOB] = @original_Student_DOB
                AND [Student_StAddress] = @original_Student_StAddress
                AND [Student_City] = @original_Student_City
                AND [Student_State] = @original_Student_State
                AND [Student_Zipcode] = @original_Student_Zipcode
                AND [Student_Type] = @original_Student_Type
                AND [Student_UserID] = @original_Student_UserID
                AND [Student_Password] = @original_Student_Password
                AND [Course1] = @original_Course1
                AND [Course2] = @original_Course2
                AND [Course3] = @original_Course3
                AND [StudentUniqueID] = @original_StudentUniqueID
                AND [PaymentMethod] = @original_PaymentMethod
                AND [NameOnCard] = @original_NameOnCard
                AND [CardNumber] = @original_CardNumber
                AND [ExpiryDate] = @original_ExpiryDate
                AND [CVV] = @original_CVV
                AND [Amount] = @original_Amount
                AND [PaymentDate] = @original_PaymentDate" 
                InsertCommand="INSERT INTO [StudentData] ([Student_FirstName], [Student_LastName], [Student_ContactNo], [Student_DOB], [Student_email], [Student_UserID], [Amount]) VALUES (@Student_FirstName, @Student_LastName, @Student_ContactNo, @Student_DOB, @Student_email, @Student_UserID, @Amount)" 
                SelectCommand="SELECT [Student_FirstName], [Student_LastName], [Student_ContactNo], [Student_DOB], [Student_email], [Student_UserID], [Amount], [Student_Id] FROM [StudentData]" 
                UpdateCommand="UPDATE [StudentData] 
                SET [Student_FirstName] = @Student_FirstName, [Student_LastName] = @Student_LastName, [Student_ContactNo] = @Student_ContactNo, [Student_DOB] = @Student_DOB, [Student_email] = @Student_email 
                WHERE [Student_Id] = @Student_Id
                AND [Student_FirstName] = @original_Student_FirstName
                AND [Student_LastName] = @original_Student_LastName
                AND [Student_ContactNo] = @original_Student_ContactNo
                AND [Student_email] = @original_Student_email
                AND [Student_DOB] = @original_Student_DOB">
                <DeleteParameters>
                    <asp:Parameter Name="original_Student_Id" Type="Int32" />
                    <asp:Parameter Name="original_Student_FirstName" Type="String" />
                    <asp:Parameter Name="original_Student_LastName" Type="String" />
                    <asp:Parameter Name="original_Student_ContactNo" Type="String" />
                    <asp:Parameter Name="original_Student_DOB" DbType="Date" />
                    <asp:Parameter Name="original_Student_email" Type="String" />
                    <asp:Parameter Name="original_Student_StAddress" Type="String" />
                    <asp:Parameter Name="original_Student_City" Type="String" />
                    <asp:Parameter Name="original_Student_State" Type="String" />
                    <asp:Parameter Name="original_Student_Zipcode" Type="Int32" />
                    <asp:Parameter Name="original_Student_Type" Type="String" />
                    <asp:Parameter Name="original_Student_UserID" Type="String" />
                    <asp:Parameter Name="original_Student_Password" Type="String" />
                    <asp:Parameter Name="original_Course1" Type="String" />
                    <asp:Parameter Name="original_Course2" Type="String" />
                    <asp:Parameter Name="original_Course3" Type="String" />
                    <asp:Parameter Name="original_StudentUniqueID" Type="String" />
                    <asp:Parameter Name="original_PaymentMethod" Type="String" />
                    <asp:Parameter Name="original_NameOnCard" Type="String" />
                    <asp:Parameter Name="original_CardNumber" Type="String" />
                    <asp:Parameter Name="original_ExpiryDate" Type="String" />
                    <asp:Parameter Name="original_CVV" Type="String" />
                    <asp:Parameter Name="original_Amount" Type="Int32" />
                    <asp:Parameter Name="original_PaymentDate" Type="String" />                    
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Student_FirstName" Type="String" />
                    <asp:Parameter Name="Student_LastName" Type="String" />
                    <asp:Parameter Name="Student_ContactNo" Type="String" />
                    <asp:Parameter DbType="Date" Name="Student_DOB" />
                    <asp:Parameter Name="Student_email" Type="String" />
                    <asp:Parameter Name="Student_UserID" Type="String" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Student_UserID" Type="String" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                    <asp:Parameter Name="Student_Id" Type="Int32" />
                    <asp:Parameter Name="Student_FirstName" Type="String" />
                    <asp:Parameter Name="Student_LastName" Type="String" />
                    <asp:Parameter Name="Student_ContactNo" Type="String" />
                    <asp:Parameter DbType="Date" Name="Student_DOB" />
                    <asp:Parameter Name="Student_email" Type="String" />                    
                    <asp:Parameter Name="original_Student_FirstName" Type="String" />
                    <asp:Parameter Name="original_Student_LastName" Type="String" />
                    <asp:Parameter Name="original_Student_ContactNo" Type="String" />
                    <asp:Parameter Name="original_Student_DOB" DbType="Date" />
                    <asp:Parameter Name="original_Student_email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <h3 style="color:white"><asp:Label ID="lblError" runat="server" EnableViewState="false" 
            CssClass="text-danger"></asp:Label></h3>
    </div>
</asp:Content>
