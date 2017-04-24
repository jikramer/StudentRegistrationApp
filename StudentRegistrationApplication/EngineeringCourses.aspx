<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EngineeringCourses.aspx.cs" Inherits="StudentRegistrationApplication.EngineeringCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheets/Courses.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <div class="container-fluid">
        <div class="alert-info">   
                <asp:Label ID="lblUserMessage" runat="server" ></asp:Label>
            </div>
    <main>
        <form id="form1" runat="server">
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
                        <asp:HyperLink ID="HomeHyperLink" runat="server" NavigateUrl="~/Home"><span class="glyphicon glyphicon-home"></span>Home</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="StudentHyperLink" runat="server" NavigateUrl="~/MultiviewTest">Student</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="CoursesHyperLink" runat="server" NavigateUrl="~/Courses">Courses</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="PaymentHyperLink" runat="server" NavigateUrl="~/Payment">Payment</asp:HyperLink></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <% if (Session["user"] == null) %>
                                    <% { %>
                                    <li>
                                         <asp:LinkButton id="OpenClose" runat="server" OnClick="OpenClose_Click" AutoPostBack="true">
                                             <span class="glyphicon glyphicon-log-in" ></span>
                                     
                                         <asp:label runat="server" ID="lbllogin" Text="Login"></asp:label>

                                         </asp:LinkButton>
                                    </li>
                                    <%--<asp:HyperLink ID="LoginHyperLink" runat="server" NavigateUrl="~/StudentLogin.aspx"><span class="glyphicon glyphicon-log-in"></span> <asp:label runat="server" Text="close"></asp:label></asp:HyperLink>--%>
                                    <% } else { %>
                                    <li style="padding:15px; color:white;">
                                            <label>Hello</label>
                                            <asp:Label runat="server" ID="lblUserName"></asp:Label>
                                            <label>!</label>
                                    </li>
                                    <li>
                                        <asp:LinkButton id="LinkButton1" runat="server" OnClick="LogOut_Click" AutoPostBack="true">
                                             <span class="glyphicon glyphicon-log-in" ></span>
                                     
                                         <asp:label runat="server" ID="Label1" Text=" Student LogOut"></asp:label>

                                         </asp:LinkButton>
                                    </li>
                                    <% } %>
                </ul>
            </div>
        </div>
    </nav>
            <div class="row col-sm-offset-1">
        <h2 class="cardCoursesFont">Welcome to Connecticut State Institute of Technology</h2>
        <p class="paragraph">Connecticut State Institute of Technology (CSIT) was established in the year 1980. Over the years the Institute has made its mark in engineering education across the nation. The programs offered by CSIT have been accredited by National Board of Accreditation (NBA) three times and it became the first Institute of Andhra Pradesh to be conferred Autonomous status by the UGC in 2003. It became a constituent Institute of Connecticut State Deemed-to-be University in 2007 and was selected by MHRD in 2011 for TEQIP. The Institute has also been accredited with A grade by TCS.</p>
        <p class="paragraph">At present, CSIT offers 9 UG, 16 PG programs in various Engineering disciplines and Ph.D. Programmes in all Engineering disciplines. The admission to various Programmes is done through a common online Entrance Test. It provides scholarships and fellowships to the meritorious UG and PG students out of its own resources & endowments and full/partial fee waiver to the top 100 students of Connecticut State Admission Test (CSAT).</p>
        <p class="paragraph">The Curriculum, which is revised onceevery 3 years, is designed by academic experts from reputed institutes like IIT, IISc. and industry personnel in order to prepare the students to meet the academic and corporate challenges. The flexible Choice Based Credit System with outcome based educational objectives implemented from 2015-16 enables the students to choose electives from wide range of courses with horizontal and vertical mobility.</p>
        <p class="paragraph">The Institute has been recruiting faculty in line with the University’s vision to achieve global standards and excellence in Teaching, Research and Consultancy. Competent faculty is undoubtedly the strength of CSIT. Faculty of CSIT holding 60 plus research projects, funded by various agencies like DST, UGC, DBT, HPCL, DRDO, SERB, NAARD, MOFPI and with good number of patents granted/filed is an ample testimony to their commitment to research.</p>
        <p class="paragraph">Experiential learning provided through industry immersion, internships, experimental learning, projects and surveys greatly enhances the employment opportunities of the students of CSIT. The institute is often the first choice of many corporate majors in search of quality human resources and the students graduated from CSIT are among the preferred employees by many top rated companies both in Software and Core sectors. The Directorate of training and placements provides the students with the necessary corporate skill set right from day one of their admission to CSIT and groom them on a regular basis throughout their stay. The state- of –the- art laboratories, e-class rooms, open courseware etc. are special features of the Institute, which endow its students with advanced technical knowledge to meet the challenges of global standards.</p>
        <p class="paragraph">Activities beyond the classroom play a vital role in the holistic personality of the student. The Institute started an Entrepreneurship Development Cell and Connecticut State Student Incubation Centre to motivate the students to become entrepreneurs by providing the necessary inputs including development of leadership qualities. The students of the Institute excel not only in curricular activities but also in co-curricular and extra-curricular activities viz., participation in Science Activity Centre (GUSAC), Professional Bodies like IEEE, CSI, ISTE, IETE, IGBC, ISOI, PES EWB etc, Cultural Club (Kalakrithi), sports competitions and social service activities through NCC,NSS, Rotract etc.</p>
        <p class="paragraph">The Institute has a strong 20,000 plus alumni base occupying leadership positions in government, administration, industry and research organizations across the globe.</p>
    </div>

    <div class="row">
        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-12">
                <div class="EngineeringCoursesCard">
                    <div class="row">
                        <h3 class="cardCoursesFont col-sm-offset-5">Programs</h3>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <div class="col-sm-offset-0 col-sm-4">
                                <div class="individualCoursesCard">
                                    <div class="container" style="width:100%">
                                        <div class="form-group">
                                            <div class="img-responsive"><asp:Image ID="EngineeringImg" runat="server" ImageUrl="~/Images/Mechanical%20Engineering.jpg" Height="150px" Width="100%" CssClass="col-xs-offset-0"/></div>
                                                <div class="text-center"><h4><b>Mechanical Engineering</b></h4></div>
                                        </div>                         
                                        <div class="form-group">
                                            <label class="text-center">The ME program is designed as a course of study to provide graduate engineers with a deeper and broader understanding of the methods and skills in the area of mechanical engineering.</label>                            
                                            <asp:Button ID="EngInfoBtn" runat="server" Text="Click Here To Know More" class="btn btn-primary col-sm-offset-2" PostBackUrl="~/MechanicalEngineering"/>  
                                        </div>                         
                                    </div>
                                 </div>
                            </div>
                            <div class="col-sm-offset-0 col-sm-4">
                                <div class="individualCoursesCard">
                                    <div class="container" style="width: 100%">
                                        <div class="form-group">
                                            <div class="img-responsive">
                                                <asp:Image ID="MgmtImg" runat="server" ImageUrl="Images/Software_Engineer1.jpg" Height="150px" Width="100%" CssClass="col-xs-offset-0" /></div>
                                                <div class="text-center">
                                                    <h4><b>Software Engineering</b></h4>
                                                </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="text-center">The SE program is intended to serve the needs of software developers, web programmers, network and information security administrators, database administrators.</label>
                                            <asp:Button ID="MgmtInfoBtn" runat="server" Text="Click Here To Know More" class="btn btn-primary col-sm-offset-2" PostBackUrl="~/SoftwareEngineering" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 col-sm-offset-0">
                                <div class="individualCoursesCard">
                                    <div class="container" style="width: 100%">
                                        <div class="form-group">
                                            <div class="img-responsive">
                                                <asp:Image ID="NursingImg" runat="server" ImageUrl="~/Images/electricalengineeringrevised_1.jpg" Height="150px" Width="100%" CssClass="col-xs-offset-0" /></div>
                                                <div class="text-center">
                                                    <h4><b>Electrical and Computer Engineering</b></h4>
                                                </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="text-center">An ECE student can focus on topics that can result in a leadership position in a high-technology industry and to provide an entrepreneurial career.</label>
                                            <asp:Button ID="NursingInfoBtn" runat="server" Text="Click Here To Know More" class="btn btn-primary col-sm-offset-2" PostBackUrl="~/ElectricalEngineering" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
        </form>
    </main>
        </div>
</body>
</html>
