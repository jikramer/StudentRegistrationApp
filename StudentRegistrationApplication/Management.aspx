<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="StudentRegistrationApplication.Management" %>

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
        <h2 class="heading col-sm-offset-3">Management of Technology</h2>
        <h3 class="subHeading">Introduction</h3>
        <p class="paragraph">The MOT program at Connecticut State University serves the needs of professional technologists, engineers and managers in their progression into management-level positions. The program instructs and trains engineers and scientists, and motivated people from any discipline who have a need to make management decisions in a technology environment or will be involved in the management of such functions as technology research and development, product design, manufacturing, human and physical resources, product and system test, information and data analysis, and product and service support.</p>
        <br />
        <p class="paragraph">The program is intended for technologists and those involved in technology-dependent enterprises who aspire to favorably position their companies in fast-paced markets, influence crucial decision-making in pursuing new technologies and improve the likelihood of corporate success. Graduates of the program are able to help their organizations embrace technology innovation in a timely fashion, focusing the energy of their companies on translating research and development efforts rapidly and effectively into manufacturing strategies and products that satisfy market needs.</p>
        <h3 class="subHeading">Management of Technology Mission</h3>
        <p class="paragraph">To prepare managers and leaders with the skills and competencies that will enable them to</p>
        <ul>
            <li class="paragraph">Understand, manage and lead organizations</li>
            <li class="paragraph">Embrace technology innovation to remain competitive</li>
            <li class="paragraph">Translate technology into business terms to result in richer business decisions, and a higher likelihood of breakthrough business performance.</li>
            <li class="paragraph">Assess, develop and apply solutions to the challenges confronting organizations in today's global economy.</li>
        </ul>
        <h3 class="subHeading">Program Overview</h3>
        <p class="paragraph">This two-year graduate degree program is designed to enhance your technical experience with advanced management and leadership skills. The program addresses the needs of the technically trained employee who must use business principles across the entire gamut of engineering disciplines. The non-technically trained person will also benefit from this program as business management has become intertwined with technology. Learning the skills this program affords will help prepare you to manage the domestic and global resources and processes required in today's business environment.</p>
        <br />
        <p class="paragraph">MSMOT graduates become effective leaders in small and large companies, providing creative guidance to the development and/or adoption and marketing of technology products and services. Specific program objectives include the following:</p>
        <ul>
            <li class="paragraph">To train the technically proficient by adding to their skills a deeper comprehension of business planning and economics, and an understanding of global markets, thereby empowering them to develop entrepreneurial skills. Technologists who are, or aspire to be employed as managers or supervisors and who currently engage in technology planning and development will be immersed in an educational program that integrates studies in technology management with modern management principles and practices.</li>
            <li class="paragraph">To enhance the skills of technologists in the design and manufacturing disciplines, in the management and effective use of information resources, and in the developing strategies that are crucial to effective leadership in technological entrepreneurship.</li>
            <li class="paragraph">To provide graduates in engineering, science and other disciplines with the opportunity to pursue a graduate program that expands their career paths and ultimately leads to leadership roles in technology-dependent businesses.</li>
            <li class="paragraph">To provide technology-dependent business and industry enterprises in Connecticut with people skilled in the management of technology and capable of enhancing the strength and competitiveness of those businesses. The outcome will serve to enrich the entrepreneurial climate in the state.</li>
            <li class="paragraph">To learn the skills relevant to today's competitive global environment where technology is increasingly a core competency of all organizations.</li>
        </ul>
        <br />
        <p class="paragraph">As a consequence of participating in this degree experience, the student will gain the following specific learning outcomes:</p>
        <ul>
            <li class="paragraph">Identify, prioritize, and solve technical and management related problems through analysis, synthesis, and evaluative processes.</li>
            <li class="paragraph">Understand how to plan, organize, lead, and control within an organizational setting.</li>
            <li class="paragraph">Interact with team members and/or work groups to achieve a common goal.</li>
            <li class="paragraph">Increase their individual knowledge and understanding of group and team interactions, and their impact upon business productivity, efficiency, and effectiveness.</li>
            <li class="paragraph">Recognize the skills and techniques needed for problem solving and decision making.</li>
            <li class="paragraph">Communicate effectively both orally and in writing.</li>
            <li class="paragraph">Understand basic accounting methods and their business applications.</li>
            <li class="paragraph">Use financial analysis within a business environment.</li>
            <li class="paragraph">Apply the strategic management process to an analysis of the business environment and make recommendations on preferred courses of action.</li>
            <li class="paragraph">Recognize ethical issues in the management of technology and in the decision making process in business and industry; and stimulate the student's sense of responsibility and help them deal with ambiguity.</li>
            <br />
        </ul>
        <p class="paragraph">Almost all of the MSMOT faculty have been engineers, managers and leaders in industry. Some have started their own companies. They know what it takes to succeed in the business world. They stand ready to help you move your career into overdrive with the new skills and competencies that you will gain.</p>
        <h3 class="subHeading">Students</h3>
        <p class="paragraph">The MSMOT program is designed to accommodate students who wish to attend on a full-time or part-time basis. The program is directed toward the following student groups: (a) engineers and scientists who need skills in critical thinking and decision-making to effectively guide the technology that will enhance product and service quality and their employer's business opportunities; (b) professionals who are charged with implementing technology initiatives in order to effectively compete in the 21st century with a lead over their competitors; (c) managers of technical and business activities responsible for creating strategic business plans and overseeing their execution; (d) research and development practitioners who require skills to recognize relevant technologies developed outside their own business organization and who must judge the merits of investing in them; (e) engineers and scientists who aspire to careers in management and require the knowledge to systematically integrate technology into their company's activity; (f) engineers and scientists interested in academic careers combining science, engineering, and management; and (g) technologists who require broad management skills to provide leadership in business.</p>
        <p class="paragraph">The program does not require GRE or other standardized testing. International students must take either the TOEFL or the IELTS exam.</p>
        <h3 class="subHeading">The MOT Currriculum</h3>
        <p class="paragraph">The MSMOT program offers courses affording students the opportunity to establish the foundations of technology management, and then choose a set of electives that best reflects their interests.  Of these courses, several are in the School of Business MBA program.  A total of 12 courses, including the two-term capstone course, will earn a student the Master's degree.  Entering students are required to have an adequate background in probability and statistics, computer programming using at least one higher order language, and financial accounting. Complete matriculation into MSMOT program, requires that the student have knowledge in the following areas:</p>
        <p class="paragraph col-sm-offset-1">BR 1 - Probability and Statistics</p>
        <p class="paragraph col-sm-offset-1">BR 2 - Computer Programming with a High-Level Language with Applications</p>
        <p class="paragraph col-sm-offset-1">BR 3 - Financial Accounting</p>
        <p class="paragraph">Students who have not completed courses in these areas may be admitted to the program provisionally and must complete these courses as early as possible in their program.</p>
        <h3 class="subHeading">Degree Requirements</h3>
        <p class="paragraph">The degree requires the completion of a minimum of 12 three-credit courses (36 total credits) as indicated below. The designations (B) and (E) following a course name indicate courses offered through the School of Business or the School of Engineering, respectively. Students pursuing the MOT degree in the School of Engineering may take a maximum of five courses from the MBA curriculum in the School of Business.</p>
        <h3 class="subHeading">Required Courses - 24 credits</h3>
        <p class="paragraph">All MSMOT students are required to complete each of the following three-credit courses except where alternatives are approved by the program director.</p>
        <br />
        <p class="paragraph">AC 500 Accounting for Decision-Making (B)</p>
        <p class="paragraph">MOT 460 Project Management (E)</p>
        <p class="paragraph">MOT 415 Information Systems (E)</p>
        <p class="paragraph">MG 508 Strategic Management of Technology and Innovation (B)</p>
        <p class="paragraph">MG 584 Global Competitive Strategy (B)</p>
        <h3 class="subHeading">OR</h3>
        <p class="paragraph">MOT 500 Introduction to Systems Engineering (E)</p>
        <p class="paragraph">MOT 470 Leadership in Technical Enterprise (E)</p>
        <p class="paragraph">MOT 591 Capstone I Project Definition and Planning (E)</p>
        <p class="paragraph">MOT 592 Capstone II Project Execution and Results (E)</p>
        <br />
        <p class="paragraph">Of particular note among the required courses is the sequence of MOT 591 and MOT 592 courses, which constitute the MSMOT capstone, a team-driven effort to define and design realizable solutions to real-world technical/business projects. The capstone courses are supervised by faculty mentors.</p>
        <br />
        <h3 class="subHeading">Elective Courses - 12 credits</h3>
        <p class="paragraph">In addition to the required courses, students must complete four elective courses. MSMOT students may elect to enroll in graduate courses in any discipline within the University that will assist them in meeting their career objectives. Students may, if they choose, take courses in concentration areas such as Management of Design and Manufacturing, Strategic Management of Resources, Management of Information Technology, Systems Engineering Concepts and Methods, and healthcare. Representative concentrations and course electives are shown below:</p>
        <br />
        <h3 class="subHeading">Management of Resources</h3>
        <br />
        <p class="paragraph">MG 584 Global Competitive Strategy (B)</p>
        <p class="paragraph">MOT 450 Planning, Research, and Development (E)</p>
        <p class="paragraph">MOT 485 Management of Intellectual Property (E)</p>
        <br />
        <h3 class="subHeading">Management of Information Technology</h3>
        <br />
        <p class="paragraph">SW 400 Software Engineering Methods (E)</p>
        <p class="paragraph">SW 402 Database Management Systems (E)</p>
        <p class="paragraph">SW 508 Data Warehouse Systems (E)</p>
        <p class="paragraph">SW 518 Data Mining and Business Intelligence (E)</p>
        <br />
        <h3 class="subHeading">Systems Engineering Concepts and Methods</h3>
        <p class="paragraph">MOT 500 Introduction to Systems Engineering (E)</p>
        <p class="paragraph">MOT 525 Principles of Quality Management (E)</p>
        <br />
        <h3 class="subHeading">Other Elective Courses</h3>
        <br />
        <p class="paragraph">MOT students may also select any of the courses listed below, or any graduate courses offered through the School of Engineering (mechanical engineering, software engineering, and electrical and computer engineering) or in the School of Business. Consult the MOT program director to discuss your specific needs.</p>
        <br />
        <p class="paragraph"> MG 500 Managing People for Competitive Advantage (B)</p>
        <p class="paragraph">MG 503 Legal and Ethical Environments of Business (B)</p>
        <p class="paragraph">MK 400 Marketing Management (B)</p>
        <p class="paragraph">OM 400 Integrated Business Processes (B)</p>
        <p class="paragraph">SW 404 Network Concepts (E)</p>
        <p class="paragraph">SW 530 Introduction to Information Security (E)</p>
        <p class="paragraph">SW 531 Applications and Data Security (E)</p>
        <p class="paragraph">SW 406 Web Client-Side Development I (E)</p>
        <p class="paragraph">SW 512 Web Development II with ASP.NET (E)</p>
        <p class="paragraph">SW 409 Advanced Programming in JAVA (E)</p>
        <p class="paragraph">SW 410 Enterprise Java (E)</p>
        <p class="paragraph">SW 505 Advanced Database Concepts (E)</p>
        <br />
        <p class="paragraph">(E) signifies - courses offered by the School of Engineering</p>
        <p class="paragraph">(B) signifies - courses offered by the Dolan School of Business</p>
        <p class="paragraph">A maximum of five graduate courses may be applied to the MSMOT degree from the Dolan School of Business</p>
        <br />
        <br />
    </div>
            </form>
        </main>
    </div>
</body>
</html>
