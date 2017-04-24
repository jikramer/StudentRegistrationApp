<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SoftwareEngineering.aspx.cs" Inherits="StudentRegistrationApplication.SoftwareEngineering1" %>

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
        <h2 class="heading col-sm-offset-3">Software Engineering</h2>
        <h3 class="subHeading">Introduction</h3>
        <p class="paragraph">The School of Engineering offers a degree in software engineering (SE) as well as graduate-level certificate programs in select areas of software engineering. The SE program is intended to serve the needs of software application developers, web programmers, network and information security administrators, database administrators, and other information technology professionals. Students who do not meet a minimum experience level, or who have other skill deficiencies, will be required to take one or more bridge courses to strengthen their capacity to meet the SE curriculum demands.</p>
        <br />
        <p class="paragraph">The certificate programs allow software professionals to upgrade their skills in selected areas. Certificate program students enroll under "special student" status and participate in courses offered through the SE program, earning a Certificate of Completion. The certificate credits could count toward the SE degree should students choose to pursue it. Four certificate programs are available: Web Applications Development, Database Management, Information Security, and Network Technologies.</p>
        <h3 class="subHeading">Program Overview</h3>
        <p class="paragraph">Engineering education programs seek to impart technical, mathematical, and engineering design knowledge that can be applied to the creative development of products, or solutions to problems, that are useful to society. The SE program emphasizes software as the product to be built, recognizing that social progress and the national economy depend on knowledge industries as well as on traditional manufacturing, and aims to meet the challenge of progressively increasing demand for the skills and competencies of software engineers.</p>
        <br />
        <p class="paragraph">A special feature of the SE program at Fairfield is a team-driven software engineering capstone course during which students experience the various phases of the software engineering development lifecycle while working on significant software development projects chosen by the faculty. The criteria for the projects are that they are complex, allow the students to experience advanced software engineering topics, and are multi-semester long with students joining for two semesters each.</p>
        <h3 class="subHeading">Learning Goals</h3>
        <p class="paragraph">Students in the MSSE program will be instructed to analyze, design, verify, validate, implement, apply, and maintain software systems. Specifically, the following methodologies and skills will be emphasized:</p>
        <ul>
            <li class="paragraph">Requirements gathering methodologies</li>
            <li class="paragraph">Object-oriented design and prototyping following agile and traditional software life cycles</li>
            <li class="paragraph">Project management in software design and development</li>
            <li class="paragraph">Software system implementation using various software development tools</li>
            <li class="paragraph">Software testing and maintenance</li>
            <li class="paragraph">Software documentation</li>
        </ul>
        <p class="paragraph">In sum, students will acquire the skills and real-world knowledge to succeed in the software engineering field through an in-depth exposure to the software development methodologies and tools. A sequence of required courses and elective courses, and the final team-driven capstone project provide depth and breadth to the students' learning experiences.</p>
        <p class="paragraph">In addition to required courses, those in specialization areas build strong in-depth technical knowledge and skills in the area of student's interest. Courses in other engineering and management fields are available as electives.</p>
        <h3 class="subHeading">Students</h3>
        <p class="paragraph">The students who enroll in the MSSE program are:</p>
        <ul>
            <li class="paragraph">IT workers who, responding to the demands of their industry, need to acquire new skills and master new tools to effectively guide software development in their company,</li>
            <li class="paragraph">technologists who wish to fulfill their needs for personal and professional growth,</li>
            <li class="paragraph">engineers and scientists who aspire to a career change,</li>
            <li class="paragraph">undergraduate students in software engineering, computer engineering, or computer science who seek the opportunity to continue their studies for an advanced engineering degree at Fairfield University.</li>
        </ul>
        <p class="paragraph">Students who wish to retrain to move from a different discipline into software engineering are welcome to enroll in the program.  They may expect to do as many as 9 credits of work to catch up in the field.  For example, students with no prior programming experience would be required to take programming language courses under advisement from the program director.  Students may also be encouraged to take additional non-credit courses during their graduate work as needed.  These additional prerequisites will be determined on an individual basis.</p>
        <br />
        <p class="paragraph">Software is ubiquitous in all modern technology, and software engineers with skills and knowledge of software design, development and management are a valuable resource, and very well-sought after.</p>
        <h3 class="subHeading">The SE Curriculum</h3>
        <p class="paragraph">SE students will complete seven required courses, as described below. In addition, students should select one specialization area in which they have an interest, namely computer programming, web technologies, database architecture, computer networking, and health informatics. Each specialization area consists of three required courses. Students may also take two elective courses offered in any engineering graduate program.</p>
        <br />
        <h3 class="subHeading">Prerequisites and Foundation Competencies</h3>
        <p class="paragraph">The SE degree requires students to have competencies that will allow them to pursue graduate coursework. Knowledge and/or experience in data structures, applications programming, systems analysis and design, and mathematics is required. Gaps in knowledge and experience in these areas can be remedied by following bridge courses offered in the SE program:</p>
        <ul>
            <li class="paragraph">CS 131  Fundamentals of Programming for Engineers</li>
            <li class="paragraph">CS 232  Advanced Programming and Data Structures</li>
            <li class="paragraph">SW 402  Database Management Systems</li>
        </ul>
        <p class="paragraph">Students may take SW 407 Java for Programming course, a fast-paced one semester bridge course combining CS 131 and CS 232.  Students who are accepted conditionally into the program with certain bridge courses should complete the bridge requirement within two semesters with a grade of B or higher to satisfy the bridge requirement.  Students may take graduate level courses and bridge courses at the same time.  Bridge courses do not count for credit towards the degree.</p>
        <h3 class="subHeading">The MSSE Program Requirements</h3>
        <p class="paragraph">Completion of a minimum of 10 three-credit courses, plus the two-semester capstone or thesis course, for a total of 36 credits, comprise the graduation requirement for the MSSE program.</p>
        <h3 class="subHeading">Required Courses - 21 credits</h3>
        <p class="paragraph">The program requires two capstone or thesis courses and five required core courses listed below to cover the software project management and software development life cycle of requirements gathering, analysis, design, prototyping, implementation, testing, deployment, and maintenance.</p>
        <br />
        <p class="paragraph">Five required core courses (15 credits) are:</p>
        <ul>
            <li class="paragraph">SW 400 Software Engineering Methods - an exploration of requirements gathering, system analysis, to a specific software project.</li>
            <li class="paragraph">SW 401 Software Design Methods - an exploration of software design, modeling language, design patterns, and prototyping of application to a specific software project.</li>
            <li class="paragraph">SW 409 Advanced Programming in Java  - build proficiency at an advanced level in one programming language.</li>
            <li class="paragraph">SW 420 Software Testing and Maintenance - an exploration of software testing and maintenance of the software system.</li>
            <li class="paragraph">SW 421 Software Project Management - an exploration of software project activities from conception to completion based on best practices.</li>
        </ul>
        <p class="paragraph">Two options for a two-semester long required course sequence as described below.</p>
        <h3 class="subHeading">Thesis Option, SW 560, SW 561 (6 credits)</h3>
        <p class="paragraph">Students may choose the thesis option at the agreement of a faculty member and approval by the program director.</p>
        <br />
        <p class="paragraph">In the event that a student in one option (Capstone or Thesis) wishes to switch to the other option, the course that was taken in one option will not count toward fulfilling the graduation requirement. Capstone or thesis classes can be taken only after the completion of 18 credits at the minimum.</p>
        <h3 class="subHeading">Capstone Option, SW 550, SW 551 (6 credits)</h3>
        <p class="paragraph">The Capstone projects are team driven. The results of these projects provide a library of case studies, designs, and tools that will be of general interest to information technology professionals and organizations in the area.</p>
        <br />
        <p class="paragraph">Students in the Software Capstone Project class are typically organized into teams that contribute to a significant software development project. These projects are chosen to advance the student's knowledge in topics related to the specialization areas. Students consult with their advisors and instructors to determine which projects will contribute most to their education. Students may also suggest projects if they are of sufficient complexity and will advance their knowledge in an area of interest. A capstone topic should be approved by the instructor and accepted by the director of the program prior to starting the capstone sequence.</p>
        <h3 class="subHeading">Specializations / Concentration Courses - 9 credits</h3>
        <br />
        <h3 class="subHeading">A. Computer Programming</h3>
        <p class="paragraph">This specialization allows professionals to gain a greater understanding of object-oriented programming languages and object-oriented design of software systems. It includes Operating Systems, Algorithms, and Network Programming.</p>
        <br />
        <p class="paragraph">Courses in this area are:</p>
        <p class="paragraph">SW 427 Operating Systems and Programming</p>
        <p class="paragraph">SW 499 Algorithms</p>
        <p class="paragraph">ECE 460 Network Programming</p>
        <h3 class="subHeading">B. Web Technology</h3>
        <p class="paragraph">This specialization allows professionals to gain a greater understanding of the leading technologies in building web application systems. Coursework focuses upon topics important to the web architect such as Web design, web development, sever management, and web application security. The tools used by the student are the most up to date tools available such as Dreamweaver, Visual Studio, .NET, JBoss, Eclipse, and WebSphere, etc.</p>
        <br />
        <p class="paragraph">Courses in this area are:</p>
        <p class="paragraph">SW 406 Web Client-Side Development I</p>
        <p class="paragraph">SW 410 Enterprise Java or SW 512 Web Development II with ASP.NET or SW 516 PHP/MySQL</p>
        <p class="paragraph">SW 530 Introduction to Information Security or SW 531 Applications and Data Security or SW416 Mobile App Development</p>
        <h3 class="subHeading">C. Database Architecture</h3>
        <p class="paragraph">This specialization allows professionals to gain a greater understanding of database architecture and design. It includes modeling, designing, implementation, testing of the complex database with associated software, and database maintenance. Coursework in database architecture focuses on database performance issues, database clusters, distributed databases, data warehousing, data mining, object relational mapping, and information security.</p>
        <br />
        <p class="paragraph">Courses in this area are:</p>
        <p class="paragraph">SW 505 Advanced Database Concepts</p>
        <p class="paragraph">SW 508 Data Warehouse Systems</p>
        <p class="paragraph">SW 518 Data Mining and Business Intelligence</p>
        <h3 class="subHeading">D. Computer Networking</h3>
        <p class="paragraph">Students get hands-on experience with network system architecture, networking programming, routers and switches, and develop the skills to perform secure network capacity planning and performance monitoring. This course of study combines vendor independent concepts and analytical skills development with work utilizing state of the art equipment from Cisco and Microsoft and other important vendors in the networking industry.</p>
        <br />
        <p class="paragraph">Courses in this area are:</p>
        <p class="paragraph">SW 404 Network Concepts</p>
        <p class="paragraph">SW 596 Network Routing and Switching</p>
        <p class="paragraph">SW 448 Server Management or SW 530 Introduction to Information Security or SW 531 Applications and Data Security or SW 599 Information Security Measures and Countermeasures</p>
        <h3 class="subHeading">Elective Courses - 6 credits</h3>
        <p class="paragraph">Electives may be chosen from courses listed under Software Engineering Graduate Certificate Programs, as well as SW 482: Special Topics, and SW 483: Independent Study, or any other Engineering Master level course, under advisement of department chair or academic advisor.</p>
        <h3 class="subHeading">Software Engineering Graduate Certificate Programs</h3>
        <p class="paragraph">Applicants interested in earning a certificate of advanced study in Software Engineering (12 credits) and those interested in taking selected courses from the Software Engineering curriculum may be admitted on a non-matriculating basis to the School of Engineering as special-status students. Non-matriculated students must have a Bachelor degree from an accredited university and a minimum of three years experience as a professional software developer or programmer, and academic and professional records that suggest the likelihood of success in demanding graduate courses. Non-matriculated students are admitted to courses on a seating-available basis only. Matriculated students are given preference for course offerings, especially for required and core courses.</p>
        <h3 class="subHeading">Web Applications Development Certificate</h3>
        <p class="paragraph">SW 406 Web Client-Side Development I</p>
        <p class="paragraph">SW 512 Web Development II with ASP.NET</p>
        <p class="paragraph">SW 516 PHP/MySQL</p>
        <p class="paragraph">SW 530 Introduction to Information Security</p>
        <h3 class="subHeading">OR</h3>
        <p class="paragraph">SW 406 Web Client-Side Development I</p>
        <p class="paragraph">SW 409 Java for Programmers II</p>
        <p class="paragraph">SW 410 Enterprise Java</p>
        <p class="paragraph">SW 416 Mobile App Development</p>
        <h3 class="subHeading">Database Management Certificate</h3>
        <p class="paragraph">SW 505 Advanced Database Concepts</p>
        <p class="paragraph">SW 508 Data Warehouse Systems</p>
        <p class="paragraph">SW 518 Data Mining and Business Intelligence</p>
        <p class="paragraph">SW 530 Introduction to Information Security OR SW 531 Applications and Data Security</p>
        <h3 class="subHeading">Information Security Certificate</h3>
        <p class="paragraph">SW 404 Network Concepts</p>
        <p class="paragraph">SW 530 Introduction to information Security</p>
        <p class="paragraph">SW 531 Applications and Data Security</p>
        <p class="paragraph">SW 599 Information Security Measures and Countermeasures</p>
        <h3 class="subHeading">Network Technology Certificate</h3>
        <p class="paragraph">SW 404 Network Concepts</p>
        <p class="paragraph">SW 448 Server Management</p>
        <p class="paragraph">SW 596 Network Routing and Switching</p>
        <p class="paragraph">SW 599 Information Security Measures and Countermeasures</p>
        <p class="paragraph"><strong>Note:</strong> The sequence of courses SW 404 and SW 596 provides students with the course materials needed to prepare for and take Cisco Certificated Networking Associate (CCNA) examination.  These students are provided with the opportunity for a voucher to partially cover the cost of that certification test.</p>
    </div>
            </form>
        </main>
    </div>
</body>
</html>
