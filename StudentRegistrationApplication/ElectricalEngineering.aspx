<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ElectricalEngineering.aspx.cs" Inherits="StudentRegistrationApplication.ElectricalEngineering1" %>

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
        <h2 class="heading col-sm-offset-3">Electrical Engineering</h2>
        <h3 class="subHeading">Introduction</h3>
        <p class="paragraph">Electrical and computer engineering at GITAM University is an inter-disciplinary program that enables its graduates to study several fields including (but not limited to) engineering, mathematics, science and business. The interdisciplinary nature of the program affords the students a chance to establish an educational identity that is unique. Students can learn topics in subject areas that include computer hardware, power, VLSI, sensors, mixed signals, measurement, control, biomedical, computer and nanotechnology.</p>
        <br />
        <p class="paragraph">An ECE graduate student can focus on topics that can result in a leadership position in a high-technology industry. In a time when the ability to innovate is the only sustainable competitive advantage, an ECE degree unlocks the door to an entrepreneurial career. Our graduates work to design and build state-of-the-art products and are highly sought after by employers.</p>
        <br />
        <p class="paragraph">The ECE program takes advantage of elective courses offered by the School of Engineering master's degree programs in mechanical engineering, mathematics, software engineering and management of technology. As a consequence, students gain technical skills and a sense of the economic and business values needed to employ technology to serve society's needs. Some of our students have selected to participate in business plan competitions and engage in engineering entrepreneurship. We have strong ties to the Inventors Association of Connecticut, the Technology Venture community and local industry.</p>
        <h3 class="subHeading">Program Overview</h3>
        <p class="paragraph">The MSECE program provides students with the knowledge and skills to innovate and lead in their discipline in the framework of research and development in academic institutions, the industrial workplace, research laboratories, or service organizations. The basic objectives of the MSECE program include the following:</p>
        <br />
        <p class="paragraph col-sm-offset-1">1.Students receive the tools they need to take the lead in creating next generation technologies using fundamental design disciplines. Sequences of electives, as well as a master's thesis, provide depth in their learning experiences.</p>
        <p class="paragraph col-sm-offset-">2.Students gain exposure to the high-tech areas of electrical and computer engineering, including system and product engineering, hardware and software design, embedded systems, communications, control systems, computer architecture, and visualization and multimedia systems. Students have the opportunity to become skilled in creating unique object-oriented designs. State of the art facilities available in the School of Engineering, and close interactions with industry, assist in those tasks.</p>
        <p class="paragraph col-sm-offset-">3.The ECE program provides undergraduate students with the opportunity to pursue a graduate degree program that broadens their career path, ultimately leading to leadership roles.</p>
        <h3 class="subHeading">Students</h3>
        <p class="paragraph">Electrical and computer engineering embodies the science and technology of design, implementation, and maintenance of software and hardware components of modern electrical, electronics, computing and network systems. This discipline has emerged from the traditional fields of electrical engineering and computer science. Hence, the student population for the program has several origins. Typical examples include the following:</p>
        <br />
        <p class="paragraph col-sm-offset-1">1.Engineers and scientists who, responding to the specific needs of their industry across the spectrum of electrical and computer engineering domains, need to acquire skills to effectively guide the development of technologies that will enhance product quality and business opportunities</p>
        <p class="paragraph col-sm-offset-">2.Engineers and scientists who wish to fulfill their needs for personal and professional growth and achieve entrepreneurship in the IT domains</p>
        <p class="paragraph col-sm-offset-">3.Engineers aspiring to a career change</p>
        <p class="paragraph col-sm-offset-">4.Undergraduate engineering students and alumni with B.S. degrees, who seek an opportunity to continue their studies for a graduate engineering degree at GITAM University.</p>
        <br />
        <p class="paragraph">In addition to mathematics and science, ECE graduates have a solid foundation in electronics, logic design, micro-devices, computer organization and architecture, and networking, as well as an understanding of software design, data structures, algorithms, and operating systems.</p>
        <br />
        <p class="paragraph">Graduates are employed in several industries, including the computer, aerospace, telecommunications, power, manufacturing, defense, and electronics industries. They can expect to design high-tech devices ranging from tiny microelectronic integrated-circuit chips to powerful systems that use those chips, and efficient interconnected telecommunication systems. Applications include consumer electronics; advanced microprocessors; peripheral equipment; systems for portable, desktop, and client/server computing; communications devices; distributed computing environments such as local and wide area networks, wireless networks, Internets, Intranets; embedded computer systems; and a wide array of complex technological systems such as power generation and distribution systems and modern computer-controlled processing and manufacturing plants.</p>
        <h3 class="subHeading">The MSECE Curriculum</h3>
        <p class="paragraph">Students in the MSECE program must complete either 33 credits, including a thesis, or a non-thesis option comprising 36 credits. Several electives are available to students across several areas of specialization. Upon admission, students meet with an advisor to prepare a plan of study that will lead to a master's degree in electrical and computer engineering in the most time-effective manner while meeting the student's professional needs.  Student are required to take at least six ECE courses in order to graduate.</p>
        <h3 class="subHeading">Required courses</h3>
        <ul">
            <li class="paragraph">Graduate Mathematics Elective</li>
            <li class="paragraph">SW 407 Java for Programmers</li>
            <li class="paragraph">ECE 440 Computer Graphics</li>
            <li class="paragraph">ECE 420 Readings in Electrical and Computer Engineering</li>
        </ul>
        <h3 class="subHeading">Thesis Option</h3>
        <ul">
            <li class="paragraph">ECE 550 Thesis I</li>
            <li class="paragraph">ECE 551 Thesis II</li>
            <li class="paragraph">ECE 552 Thesis III</li>
        </ul>
        <p class="paragraph">Students may continue the thesis option provided they earn an A- or better in the Readings class, ECE 420, and secure the approval of the program director. In the event that a student in the thesis track wishes to switch to the non-thesis option, Thesis I and Thesis II credits that might have been earned in the pursuit of a thesis will not count toward fulfilling the graduation requirement.</p>
        <h3 class="subHeading">Plan of Study</h3>
        <p class="paragraph">Deviations from the required course list are permitted as a part of an advisor approved plan of study.  Students must have an approved plan of study by the end of their first term.  A plan of study may be changed at any time, with advisor approval.</p>
        <h3 class="subHeading">Graduate Mathematics Electives:</h3>
        <p class="paragraph">ECE 415 Numerical Methods of Engineering</p>
        <p class="paragraph">ECE 431 Biomedical Signal Processing</p>
        <p class="paragraph">ECE 433 Biomedical Visualization</p>
        <p class="paragraph">ECE 440 Computer Graphics</p>
        <p class="paragraph">MA 400-500 Mathematic Elective</p>
        <p class="paragraph">Any graduate level math course</p>
    </div>
            </form>
        </main>
    </div>

</body>
</html>
