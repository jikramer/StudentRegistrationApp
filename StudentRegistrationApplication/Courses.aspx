<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="StudentRegistrationApplication.Courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheets/MultiviewStlye.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            margin-left: 7;
        }
    </style>
</head>
<body>
  <div class="container-fluid text-center">
      <main>
            <form id="form1" runat="server">
                <div class="row content">
                    <div class="col-sm-2 sidenav">
                        <h4><p><asp:HyperLink ID="HomeHyperLink" runat="server" ForeColor="White" NavigateUrl="~/Home.aspx"><span class="glyphicon glyphicon-home"></span>Home</asp:HyperLink></p></h4><br/>                        
                        <p><asp:Button ID="ViewEnrolledClassButton" runat="server" Text="View Enrolled Classes" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="52px" Width="206px" OnClick="ViewEnrolledClassButton_Click" /></p>
                        <p><asp:Button ID="BrowseClassButton" runat="server" Text="Browse Classes" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="52px" Width="206px" OnClick="BrowseClassButton_Click" CssClass="auto-style1" /></p>
                        <p><asp:Button ID="RegisterClassButton" runat="server" Text="Register Classes" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="52px" Width="206px" OnClick="RegisterClassButton_Click" /></p>
                        <p><asp:Button ID="PlanAheadButton" runat="server" Text="Plan Ahead" BackColor="Red" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="52px" Width="206px" OnClick="PlanAheadButton_Click" /></p>
                    </div>  
                    <div class="col-sm-6">
                        <asp:MultiView ID="CoursesMultiView" runat="server">
                            <asp:View ID="EnrolledClassView" runat="server">
                                 <div class="container">
                                    <div class="well well-sm">
                                        <h2>View Enrolled Classes</h2>     
                                    </div>
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                             <div class="col-sm-offset-3 col-sm-5">
                                                <asp:GridView ID="EnrolledClassesGridView" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <FooterStyle BackColor="#CCCC99" />
                                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                    <RowStyle BackColor="#F7F7DE" />
                                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                                </asp:GridView>
                                             </div>
                                        </div>
                                    </div>
                                 </div>
                            </asp:View>
                            <asp:View ID="BrowseClassView" runat="server">
                                <div class="container">
                                   <div class="well well-sm">
                                        <h2>Browse Classes</h2>     
                                    </div>
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <label class="control-label col-sm-3">Select Term:</label>
                                            <div class="col-sm-5">
                                                <asp:DropDownList ID="ddlBrowseTerm" runat="server" ForeColor="Black">
                                                   <asp:ListItem>Spring 2016</asp:ListItem>
                                                   <asp:ListItem>Summer 2016</asp:ListItem>
                                                    <asp:ListItem>Fall 2016</asp:ListItem>
                                                   <asp:ListItem>Spring 2017</asp:ListItem>
                                                 </asp:DropDownList>
                                            </div>          
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-3">Select Major:</label>
                                            <div class="col-sm-5">
                                                <asp:DropDownList ID="ddlBrowseMajor" runat="server" ForeColor="Black">
                                                   <asp:ListItem>Software Engineering</asp:ListItem>
                                                   <asp:ListItem>Mechanical Engineering</asp:ListItem>
                                                   <asp:ListItem>Electrical Engineering</asp:ListItem>
                                                   <asp:ListItem>Management of Technology</asp:ListItem>
                                                   <asp:ListItem>Nursing</asp:ListItem>
                                                 </asp:DropDownList>
                                            </div>          
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-3 col-sm-5">
                                                <asp:GridView ID="BrowseGridView" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <FooterStyle BackColor="#CCCC99" />
                                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                    <RowStyle BackColor="#F7F7DE" />
                                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                                </asp:GridView>
                                             </div>
                                        </div>
                                    </div>
                                 </div>
                            </asp:View>
                            <asp:View ID="RegisterClassView" runat="server">
                                <div class="container">
                                    <div class="well well-sm">
                                        <h2>Register Classes</h2>     
                                    </div>
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <label class="control-label col-sm-3">Select Term:</label>
                                            <div class="col-sm-5">
                                                <asp:DropDownList ID="ddlRegisterTerm" runat="server" ForeColor="Black">
                                                   <asp:ListItem>Spring 2016</asp:ListItem>
                                                   <asp:ListItem>Summer 2016</asp:ListItem>
                                                    <asp:ListItem>Fall 2016</asp:ListItem>
                                                   <asp:ListItem>Spring 2017</asp:ListItem>
                                                 </asp:DropDownList>
                                            </div>          
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-3">Select Major:</label>
                                            <div class="col-sm-5">
                                                <asp:DropDownList ID="ddlRegisterMajor" runat="server" ForeColor="Black">
                                                   <asp:ListItem>Software Engineering</asp:ListItem>
                                                   <asp:ListItem>Mechanical Engineering</asp:ListItem>
                                                   <asp:ListItem>Electrical Engineering</asp:ListItem>
                                                   <asp:ListItem>Management of Technology</asp:ListItem>
                                                   <asp:ListItem>Nursing</asp:ListItem>
                                                 </asp:DropDownList>
                                            </div>          
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-3 col-sm-5">
                                                <asp:GridView ID="RegisterGridView" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <FooterStyle BackColor="#CCCC99" />
                                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                    <RowStyle BackColor="#F7F7DE" />
                                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                                </asp:GridView>
                                             </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-3 col-sm-5">
                                                <asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox>
                                            </div>
                                             <div class="col-sm-1">
                                                <p><asp:Button ID="RemoveButton" runat="server" Text="Remove" CssClass="btn btn-primary"/></p>
                                                <p><asp:Button ID="ClearAllButton" runat="server" Text="Clear All" CssClass="btn btn-primary"/></p>
                                            </div>
                                        </div>
                                         <div class="form-group ">
                                            <div class="col-sm-offset-3 col-sm-2">
                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary"/>
                                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary"/>
                                            </div>
                                        </div>  
                                    </div>
                                 </div>
                            </asp:View>
                            <asp:View ID="PlanAheadView" runat="server">

                            </asp:View>
                        </asp:MultiView>
                    </div>  
                </div>
            </form>
      </main>
   </div>
</body>
</html>
