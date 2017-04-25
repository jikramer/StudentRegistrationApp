<%@ Page Title="" Language="C#" MasterPageFile="~/AdminView.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="StudentRegistrationApplication.StudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminheadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="container">
        <div class="well well-sm">
            <h2>Student Details</h2>
        </div>        
        <div class="col-sm-12 table-responsive">
            <asp:GridView ID="grdStudentDetails" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="Student_UserID" DataSourceID="SqlDataSource1" 
                CssClass="table table-hover table-condensed table-bordered" 
                PageSize="5" AllowPaging="True"
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
                                 CssClass="form-control" 
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
                                Text='<%# Eval("Student_FirstName") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="col-sm-2" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <EditItemTemplate>
                        <div class="col-xs-11 col-edit">
                            <asp:TextBox ID="txtgrdLastName" runat="server" 
                                 CssClass="form-control" 
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
                                Text='<%# Eval("Student_LastName") %>'></asp:Label>
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
                            Text='<%# Eval("Student_ContactNo") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="col-sm-2" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email ID">
                        <EditItemTemplate>
                        <div class="col-xs-11 col-edit">
                            <asp:TextBox ID="txtgrdemail" runat="server" 
                                 CssClass="form-control" 
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
                            Text='<%# Eval("Student_email") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle CssClass="col-sm-2" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Birth">
                        <EditItemTemplate>
                        <div class="col-xs-11 col-edit">
                            <asp:TextBox ID="txtgrdDOB" runat="server" TextMode="Date" 
                                 CssClass="form-control" 
                                Text='<%# Bind("Student_DOB") %>'>
                            </asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                            runat="server" CssClass="text-danger" Text="*" 
                            ControlToValidate="txtgrdDOB" ValidationGroup="Edit" 
                            ErrorMessage="Date of Birth is a required field" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="lblgrdDOB" runat="server" 
                            Text='<%# Eval("Student_DOB") %>'></asp:Label>
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
                    <asp:CommandField CausesValidation="true" ShowDeleteButton="true" 
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
                OldValuesParameterFormatString="original_{0}" 
                DeleteCommand="DELETE FROM [StudentData] WHERE [Student_UserID] = @original_Student_UserID" 
                InsertCommand="INSERT INTO [StudentData] ([Student_FirstName], [Student_LastName], [Student_ContactNo], [Student_email], [Student_DOB], [Student_UserID], [Amount]) VALUES (@Student_FirstName, @Student_LastName, @Student_ContactNo, @Student_email, @Student_DOB, @Student_UserID, @Amount)" 
                SelectCommand="SELECT [Student_FirstName], [Student_LastName], [Student_ContactNo], [Student_email], [Student_DOB], [Student_UserID], [Amount] FROM [StudentData]" 
                UpdateCommand="UPDATE [StudentData] 
                SET [Student_FirstName] = @Student_FirstName, 
                [Student_LastName] = @Student_LastName, 
                [Student_ContactNo] = @Student_ContactNo, 
                [Student_email] = @Student_email, 
                [Student_DOB] = @Student_DOB, 
                [Amount] = @Amount 
                WHERE [Student_UserID] = @original_Student_UserID">
                <DeleteParameters>
                    <asp:Parameter Name="original_Student_UserID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Student_FirstName" Type="String" />
                    <asp:Parameter Name="Student_LastName" Type="String" />
                    <asp:Parameter Name="Student_ContactNo" Type="String" />
                    <asp:Parameter Name="Student_email" Type="String" />
                    <asp:Parameter Name="Student_DOB" DbType="Date" />
                    <asp:Parameter Name="Student_UserID" Type="String" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Student_FirstName" Type="String" />
                    <asp:Parameter Name="Student_LastName" Type="String" />
                    <asp:Parameter Name="Student_ContactNo" Type="String" />
                    <asp:Parameter Name="Student_email" Type="String" />
                    <asp:Parameter Name="Student_DOB" DbType="Date" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                    <asp:Parameter Name="original_Student_UserID" Type="String" /> 
                </UpdateParameters>
            </asp:SqlDataSource>

            <p><asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        HeaderText="Please correct the following errors:" 
                        CssClass="text-danger col-sm-offset-1" ForeColor="Red" />

            <h3><asp:Label ID="lblError" runat="server" EnableViewState="false" 
            CssClass="text-danger"></asp:Label></h3>
        </div>
        
    </div>
</asp:Content>
