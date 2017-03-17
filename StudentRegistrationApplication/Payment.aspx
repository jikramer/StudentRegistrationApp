<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" MasterPageFile="~/Site.Master" Inherits="StudentRegistrationApplication.Payment" %>


<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="StyleSheets/MultiviewStlye.css" rel="stylesheet" />
    <link href="StyleSheets/Styles.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx"><span class="glyphicon glyphicon-home"></span>Home</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="StudentHyperLink" runat="server" NavigateUrl="~/MultiviewTest.aspx">Student</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="CoursesHyperLink" runat="server" NavigateUrl="~/Courses.aspx">Courses</asp:HyperLink></li>
                    <li class="active">
                        <asp:HyperLink ID="PaymentHyperLink" runat="server">Payment</asp:HyperLink></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <asp:HyperLink ID="LoginHyperLink" runat="server" NavigateUrl="~/StudentLogin.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</asp:HyperLink></li>
                </ul>
            </div>
        </div>
    </nav>
    <br /><br />
    <div class="row">
        <div class="form-group">
            <label class="control-label col-sm-3 Heading col-sm-offset-1">Select a Payment Method:</label>
            <div class="col-sm-2 col-sm-offset-0">
                <asp:DropDownList ID="ddlPaymentMethod" runat="server" ForeColor="Black" Font-Size="Large" CssClass="col-xs-offset-0">
                    <asp:ListItem Value="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Credit Card&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                    <asp:ListItem Value="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cash Payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                    <asp:ListItem Value="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Debit Card&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                </asp:DropDownList>
            </div>
        <br /><br /><br /><br /><br />
                <asp:Button ID="SetPayMethodButton" runat="server" Text="Submit" Font-Size="Medium" ForeColor="White" OnClick="SetPayMethodButton_Click" CssClass="btn btn-primary" />
        </div>
        </div>
    
    
            <asp:MultiView ID="PaymentMultiView" runat="server">
            
                <asp:View ID="CreditorDebitView" runat="server">
                    <div class="row col-sm-offset-1">
                        <div class="form-group">
                            <div class="box">
                                <h2>Credit Card Payment</h2>
                                <br />
                                <br />
                                <div>
                                    <br />
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">Name on the Card:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                                                ErrorMessage="Name on the Card is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                                         </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">Card Number:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                ErrorMessage="Card Number is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCardNumber" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                ControlToValidate="txtCardNumber" ErrorMessage="Use this format: xxxx-xxxx-xxxx-xxxx" 
                                                ValidationExpression="\d{4}-\d{4}-\d{4}" CssClass="text-danger" 
                                                Display="Dynamic" ForeColor="Red">
                                            </asp:RegularExpressionValidator>
                                         </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">Expiry Date:</label>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                ErrorMessage="Expiry Date is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtExpiryDate" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                         </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">CVV:</label>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="txtCVV" runat="server" CssClass="form-control" TextMode="Password" MaxLength="3"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                ErrorMessage="CVV is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtCVV" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                            <asp:RangeValidator ID="RangeFieldValidator1" runat="server" 
                                                     ControlToValidate="txtCVV" Display="Dynamic" MaximumValue="999" 
                                                     MinimumValue="111" ErrorMessage="Should be of type xxx"></asp:RangeValidator>
                                         </div>
                                    </div>
                                </div><br />
                                <div>
                                <asp:Button ID="Button1" runat="server" Text="Continue" Font-Size="Medium" ForeColor="White" PostBackUrl="#" CssClass="btn btn-primary" />
                                </div>
                                    <br />
                            </div>
                        </div>
                    </div>
                    
                </asp:View>
                <asp:View ID="CashView" runat="server">
                    <div class="row col-sm-offset-1">
                        <div class="form-group">
                            <div class="box">
                                <h2>Cash Payment</h2>
                                <br />
                                <br />
                                <div>
                                    <br />
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading"> First Name:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                ErrorMessage="First Name is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                                         </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">last ANme:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                ErrorMessage="Last Name is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtLastName" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                         </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">Phone Number:</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone" ></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                                ErrorMessage="Phone Number is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtPhone" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                         </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">Amount:</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                                ErrorMessage="Amount is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtAmount" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                         </div>
                                    </div>
                                </div><br />
                                <div>
                                <asp:Button ID="btnPrintReciept" runat="server" Text="Print Reciept" Font-Size="Medium" ForeColor="White" PostBackUrl="#" CssClass="btn btn-primary" />
                                </div>
                                    <br />
                            </div>
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="DebitView" runat="server">
                    <div class="row col-sm-offset-1">
                        <div class="form-group">
                            <div class="box">
                                <h2>Debit Card Payment</h2>
                                <br />
                                <br />
                                <div>
                                    <br />
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">Name on the Card:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                                ErrorMessage="Name on the Card is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitName" ForeColor="Red"></asp:RequiredFieldValidator>
                                         </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">Card Number:</label>
                                        <div class="col-sm-5">
                                            <asp:TextBox ID="txtDebitCard" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                                ErrorMessage="Card Number is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitCard" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                ControlToValidate="txtDebitCard" ErrorMessage="Use this format: xxxx-xxxx-xxxx-xxxx" 
                                                ValidationExpression="\d{4}-\d{4}-\d{4}" CssClass="text-danger" 
                                                Display="Dynamic" ForeColor="Red">
                                            </asp:RegularExpressionValidator>
                                         </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">Expiry Date:</label>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="txtDebitExpiryDate" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                                ErrorMessage="Expiry Date is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitExpiryDate" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                         </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="control-label col-sm-3 subHeading">CVV:</label>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Password" MaxLength="3"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                                                ErrorMessage="CVV is required" CssClass="text-danger"
                                                Display="Dynamic" ControlToValidate="txtDebitExpiryDate" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                                     ControlToValidate="txtDebitExpiryDate" Display="Dynamic" MaximumValue="999" 
                                                     MinimumValue="111" ErrorMessage="Should be of type xxx"></asp:RangeValidator>
                                         </div>
                                    </div>
                                </div><br />
                                <div>
                                <asp:Button ID="Button2" runat="server" Text="Continue" Font-Size="Medium" ForeColor="White" PostBackUrl="#" CssClass="btn btn-primary" />
                                </div>
                                    <br />
                            </div>
                        </div>
                    </div>
                    </asp:View>
            </asp:MultiView>
            </ContentTemplate>
            </asp:UpdatePanel>
</asp:Content>
