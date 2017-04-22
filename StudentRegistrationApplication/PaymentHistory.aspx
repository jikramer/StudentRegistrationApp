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
           <asp:LinkButton ID="PrintHp" runat="server" OnClick="PrintHp_Click"><span class="glyphicon glyphicon-print"></span>Print</asp:LinkButton>
           <asp:LinkButton ID="DownloadHp" runat="server" OnClick="DownloadHp_Click"><span class="glyphicon glyphicon-download"></span>Download</asp:LinkButton>
        
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
     <!--   <asp:RegularExpressionValidator ID="revStudentID" runat="server"
                ErrorMessage="Enter a six digit ID" CssClass="text-danger"
                Display="Dynamic" ValidationExpression="\d{6}"
                ControlToValidate="txtStudentID" ForeColor="Red"></asp:RegularExpressionValidator>   -->     
        </div>
    </div>
         <div class="form-group">
        <div class="col-sm-12">
           <asp:Button ID="btnEdit" runat="server" Text="Search Payment Details" OnClick="btnEdit_Click" CssClass="btn btn-primary"/>
            <%--<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary"/>--%>
        </div>
    </div>
     <%--<div class="form-group">
        <label class="control-label col-sm-3">Selected Payment Method:</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtSelectedPayMethod" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>--%>
    
    <div class="form-group">
        <label class="control-label col-sm-2">Payment Details:</label>
        <div class="form-horizontal col-sm-11 table-responsive">
                            <asp:Label runat="server" Enabled="false" ID="lblUserNameStudentData" Visible="false"></asp:Label>
            <asp:Label runat="server" Enabled="false" ID="lblUserNamePaymentHistory" Visible="false"></asp:Label>
            <% if (lblUserNamePaymentHistory.Text == txtStudentID.Text) %>
            <% { %>
                            <asp:GridView ID="grdPaymentHistory" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource4" DataKeyNames="FirstName" 
                                CssClass="table table-bordered table-condensed table-hover" 
                                PageSize="5" AllowPaging="True" >
                                <Columns>
                                    <asp:BoundField DataField="FirstName" HeaderText="First Name" 
                                        ReadOnly="True" SortExpression="FirstName">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="LastName" HeaderText="Last Name" 
                                        ReadOnly="True" SortExpression="LastName">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PaymentDate" HeaderText="Payment Date" 
                                        ReadOnly="True" SortExpression="PaymentDate">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PaymentMethod" HeaderText="Payment Method" 
                                        ReadOnly="True" SortExpression="PaymentMethod">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="AmountPaid" HeaderText="AmountPaid" 
                                        ReadOnly="True" SortExpression="AmountPaid">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DueAmount" HeaderText="Due Amount" 
                                        ReadOnly="True" SortExpression="DueAmount">
                                        <ItemStyle CssClass="col-sm-2 text-center" />
                                    </asp:BoundField>                                    
                                </Columns>
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
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" 
                                SelectCommand="SELECT [FirstName], [LastName], [PaymentDate], [PaymentMethod], [AmountPaid], [DueAmount] FROM [PaymentHistory] WHERE ([Student_UserID] = @Student_UserID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtStudentID" Name="Student_UserID" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                <% } else { %>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label ID="Label1" CssClass="text-center" runat="server" Text="No Payments Recorded!" Font-Size="Large" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                <% } %>
            </div>
    </div>
          
    
    </div>
</asp:Content>
