<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiviewTest.aspx.cs" MasterPageFile="~/Site.Master" Inherits="StudentRegistrationApplication.MultiviewTest" %>

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
                <asp:Button ID="ViewProfileButton" runat="server" Text="View Profile" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="50px" OnClick="ViewProfileButton_Click" Width="120px" /></p>
            <p>
                <asp:Button ID="EditProfileButton" runat="server" Text="Edit Profile" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="50px" Width="120px" OnClick="EditProfileButton_Click" /></p>
        </div>:
        <div class="col-sm-6">
            
            <h2>
                <asp:Label runat="server" cssClass="text-success" ID="lblWelcome"></asp:Label>
            </h2>
            
            <asp:MultiView ID="StudentMultiView" runat="server">
                
                <asp:View ID="ViewProfileView" runat="server">
                    <div class="container">
                        <div class="well well-sm">
                            <h2>View Profile</h2>
                        </div>
                        <div class="form-horizontal">

                            <h3>Personal Information</h3>

                            <div class="form-group">
                                <label class="control-label col-sm-3">First Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ViewtxtFirstName" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3">Last Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ViewtxtLastName" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3">Phone Number:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ViewtxtPhone" runat="server" CssClass="form-control" TextMode="Phone" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Email Address:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ViewtxtEmail" runat="server" CssClass="form-control" TextMode="Email" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Date of birth:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ViewtxtDOB" runat="server" CssClass="form-control" Enabled="false">mm/dd/yyyy</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Address:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ViewtxtAddress" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3">City:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ViewtxtCity" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3">State:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ViewStateTextBox" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3">Zip code:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ViewtxtZip" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Student Type:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ViewStudentTypeTextBox" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="EditProfileView" runat="server">
                    <div class="container">
                        <div class="well well-sm">
                            <h2>Edit Profile</h2>
                        </div>
                        <div class="form-horizontal">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summery text-danger" HeaderText="Please correct these entries:" Display="Dynamic" ForeColor="Red" />

                            <h3>Personal Information</h3>

                            <div class="form-group">
                                <label class="control-label col-sm-3">First Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EdittxtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                                        ErrorMessage="First name is required" CssClass="text-danger"
                                        Display="Dynamic" ControlToValidate="EdittxtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3">Last Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EdittxtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                                        ErrorMessage="Last name is required" CssClass="text-danger"
                                        Display="Dynamic" ControlToValidate="EdittxtLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3">Phone Number:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EdittxtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server"
                                        ErrorMessage="Phone number is required." CssClass="text-danger"
                                        Display="Dynamic" ControlToValidate="EdittxtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="PhoneNumberRegularExpressionValidator" runat="server"
                                        ControlToValidate="EdittxtPhone" ErrorMessage="Use this format: 999-999-9999"
                                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" CssClass="text-danger"
                                        Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Email Address:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EdittxtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                                        ErrorMessage="Email is required" CssClass="text-danger"
                                        Display="Dynamic" ControlToValidate="EdittxtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server"
                                        ControlToValidate="EdittxtEmail" ErrorMessage="Must be a valid email address"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"
                                        Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Date of birth:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EdittxtDOB" runat="server" CssClass="form-control">mm/dd/yyyy</asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:RegularExpressionValidator ID="revDOB" runat="server"
                                        ErrorMessage="Date of birth" CssClass="text-danger"
                                        Display="Dynamic" ValidationExpression="[01]?\d\/[0-3]\d/\d{4}"
                                        ControlToValidate="EdittxtDOB" ForeColor="Red">Use this format: mm/dd/yyyy</asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Address:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EdittxtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server"
                                        ErrorMessage="Street Address is required" CssClass="text-danger"
                                        Display="Dynamic" ControlToValidate="EdittxtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3">City:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EdittxtCity" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:RequiredFieldValidator ID="rfvCity" runat="server"
                                        ErrorMessage="City is required" CssClass="text-danger"
                                        Display="Dynamic" ControlToValidate="EdittxtCity" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3">State:</label>
                                <div class="col-sm-5">
                                    <asp:DropDownList ID="EditddlState" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="" Value="" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <%--<div class="col-sm-4">
                                                <asp:RequiredFieldValidator ID="rfvState" runat="server" 
                                                    ErrorMessage="State is required" CssClass="text-danger" 
                                                    Display="Dynamic" ControlToValidate="EditddlState" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>--%>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3">Zip code:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EdittxtZip" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:RequiredFieldValidator ID="rfvZip" runat="server"
                                        ErrorMessage="Zip is required" CssClass="text-danger"
                                        Display="Dynamic" ControlToValidate="EdittxtZip" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="ZipCodeRegularExpressionValidator" runat="server"
                                        ErrorMessage="Use this format: 00000-0000" CssClass="text-danger"
                                        Display="Dynamic" ControlToValidate="EdittxtZip" ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" id="WelcomeLabel">Student Type:</label>
                                <div class="col-sm-5">
                                    <asp:DropDownList ID="EditddlStudentType" runat="server" ForeColor="Black">
                                        <asp:ListItem>Undergraduate</asp:ListItem>
                                        <asp:ListItem>Graduate</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-sm-4">
                                    <asp:RequiredFieldValidator ID="RfvStudentType" runat="server"
                                        ErrorMessage="Student type is required" CssClass="text-danger"
                                        Display="Dynamic" ControlToValidate="EditddlStudentType" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group ">
                                <div class="col-sm-offset-3 col-sm-2">
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" />
                                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary" />
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
