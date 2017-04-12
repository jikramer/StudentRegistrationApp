<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" MasterPageFile="~/Site.Master" Inherits="StudentRegistrationApplication.Home" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
    <link href="StyleSheets/Styles.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">


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
                            <div class="btn btn-primary">
                                <asp:Button ID="EngInfoBtn" runat="server" Text="Click Here To Know More"  PostBackUrl="~/EngineeringCourses" />
                            </div>
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
                            <div class="btn btn-primary">
                                <asp:Button ID="MgmtInfoBtn" runat="server" Text="Click Here To Know More"  PostBackUrl="~/Management" />
                            </div>
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
                            <div class="btn btn-primary">
                                <asp:Button ID="NursingInfoBtn" runat="server" Text="Click Here To Know More"  PostBackUrl="~/Nursing" />/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
