<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" MasterPageFile="~/Site.Master" Inherits="StudentRegistrationApplication.Home" %>


<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="StyleSheets/Styles.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">

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
                    <li class="active">
                        <asp:HyperLink ID="HomeHyperLink" runat="server"><span class="glyphicon glyphicon-home"></span>Home</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="StudentHyperLink" runat="server" NavigateUrl="~/MultiviewTest.aspx">Student</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="CoursesHyperLink" runat="server" NavigateUrl="~/Courses.aspx">Courses</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="PaymentHyperLink" runat="server" NavigateUrl="~/Payment.aspx">Payment</asp:HyperLink></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                       <asp:LinkButton id="OpenClose" runat="server" OnClick="OpenClose_Click" AutoPostBack="true"><span class="glyphicon glyphicon-log-in"></span><asp:label runat="server" ID="lbllogin" Text=" Admin Login"></asp:label></asp:LinkButton>

                        <%--<asp:HyperLink ID="LoginHyperLink" runat="server" NavigateUrl="~/StudentLogin.aspx"><span class="glyphicon glyphicon-log-in"></span> <asp:label runat="server" Text="close"></asp:label></asp:HyperLink>--%>

                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <div class="row">
        <div class="col-sm-12">
            <div class="jumbotron">
                <div class="text-center">
                    <h1>Connecticut State University</h1>
                    <h2>We provide value embedded quality education</h2>
                    <br />

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-3">
                <div class="card">
                    <div class="container" style="width: 100%">
                        <div class="form-group">
                            <div class="img-responsive">
                                <asp:Image ID="EngineeringImg" runat="server" ImageUrl="~/Images/engineering.jpg" Height="150px" Width="100%" /></div>
                            <div class="text-center">
                                <h4><b>Engineering Courses</b></h4>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="text-center">We offer you the best engineering courses. Find here more on what engineering has to offer you</label>
                            <asp:Button ID="EngInfoBtn" runat="server" Text="Click Here To Know More" class="btn btn-primary" PostBackUrl="~/EngineeringCourses.aspx" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card">
                    <div class="container" style="width: 100%">
                        <div class="form-group">
                            <div class="img-responsive">
                                <asp:Image ID="MgmtImg" runat="server" ImageUrl="~/Images/management.jpg" Height="150px" Width="100%"/></div>
                            <div class="text-center">
                                <h4><b>Management Courses</b></h4>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="text-center">We offer you the best management courses. Find here more on what management has to &nbsp;&nbsp;&nbsp;offer you</label>
                            <asp:Button ID="MgmtInfoBtn" runat="server" Text="Click Here To Know More" class="btn btn-primary" PostBackUrl="~/Management.aspx" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card">
                    <div class="container" style="width: 100%">
                        <div class="form-group">
                            <div class="img-responsive">
                                <asp:Image ID="NursingImg" runat="server" ImageUrl="~/Images/nursing.jpg" Height="150px" Width="100%" /></div>
                            <div class="text-center">
                                <h4><b>Nursing Courses</b></h4>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="text-center">We offer you the best nursing courses. Find here more on what nursing has to offer you</label>
                            <asp:Button ID="NursingInfoBtn" runat="server" Text="Click Here To Know More" class="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
