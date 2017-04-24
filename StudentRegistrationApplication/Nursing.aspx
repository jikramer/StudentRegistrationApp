<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nursing.aspx.cs" Inherits="StudentRegistrationApplication.Nursing" %>

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
                                            <asp:Label runat="server" Font-Bold="true" ID="lblUserName"></asp:Label>
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
                    <h2 class="heading text-center">Nursing</h2>
                    <h3 class="subHeading"></h3>
                    <p class="paragraph"></p>
                    <h3 class="subHeading">Program Options For Adult Learners</h3>
                    <p class="paragraph">The programs for adult learners are designed to draw on previous education and experience and allow students to earn the bachelor's degree by different routes. A program of study for individuals who hold an associate degree in nursing allows students to pursue a B.S. in nursing. Another option for adult learners is an accelerated format for persons holding a bachelor's degree in another field.</p>
                    <h3 class="subHeading">Admission</h3>
                    <p class="paragraph">Students interested in pursuing a bachelor's degree in nursing in the RN to B.S. program may attend on a part-time basis. Classes are available during the academic year and in the summer. Registered nurses must have successfully completed an associate degree or diploma program and possess a RN license. Students interested in the Second Degree program, a 15-month full time accelerated program, must hold a bachelor's degree in any field. Core and prerequisite courses must be completed prior to the start of the program.</p>
                    <br />
                    <p class="paragraph">Admission is competitive and all students must have a minimum GPA of 3.0 to declare a nursing major. Students must complete an application to begin nursing courses.</p>
                    <h3 class="subHeading">Matriculation</h3>
                    <p class="paragraph">
Matriculation is official enrollment in a degree program. Students in the RN to B.S. in Nursing Program are matriculated after successful completion of NS 250, Professional Nursing or NS 252, Health Assessment for RNs or NS 112 Healthcare Delivery.</p>
                    <h3 class="subHeading">Core Requirements</h3>
                    <p class="paragraph">Adult learners must meet the University's core course requirement. Course requirements in the liberal arts and required supportive courses can be met by challenge examinations, transfer credits from other academic institutions, or enrollment in specific courses. Courses are accepted in transfer from other accredited colleges and universities on the basis of a satisfactory (C or better) academic record and course equivalency.</p>
                    <h3 class="subHeading">Prerequisite Course Requirements</h3>
                    <p class="paragraph">The Marion Peckham Egan School of Nursing suggests that all prerequisite courses be completed within 10 years prior to the first nursing course. Applicants normally have completed science courses with grades of A or B in the last three to five years. Acceptance of credit is at the discretion of the Program Director/ Dean. Students are expected to review course material to ensure that their knowledge of the subject matter is current. Students can maximize their potential for success in the nursing program with a strong foundation that is provided by these courses.</p>
                    <h3 class="subHeading">Residency Requirement</h3>
                    <p class="paragraph">A minimum of 60 credits, including credits in nursing, must be completed at Fairfield University. In addition, the last 30 credits for the degree must be taken at Fairfield University.</p>
                    <h3 class="subHeading">Partnership Programs</h3>
                    <p class="paragraph">Fairfield University's Marion Peckham Egan School of Nursing has a partnership with the Connecticut Community College Nursing Program, Bridgeport Hospital and St. Vincent's College. This program provides a seamless transition from associate to bachelor's degree in nursing and grants 34 credits in Advanced Placement nursing</p>
                    <h3 class="subHeading">Credit from International Programs</h3>
                    <p class="paragraph">Students completing coursework outside the United States must submit certified English transcripts and course-by-course evaluation of all academic records. Information may be obtained from World Education Services (800-937-3895 or e-mail info@wes.org).</p>
                    <h3 class="subHeading">Diversity Requirements</h3>
                    <p class="paragraph">RN to BSN students meet the U.S. diversity requirement through enrollment in NS 250, Dimensions of Professional Nursing and world diversity requirements with NS 330, Community, Public and Global Health Nursing and NS 112 Healthcare Delivery.</p>
                    <h3 class="subHeading">Nursing Courses for RN to BS Students</h3>
                    <p class="paragraph">NS 110 Introduction to Professional Nursing</p>
                    <p class="paragraph">NS 112 Healthcare Delivery</p>
                    <p class="paragraph">NS 250 Dimensions of Professional Nursing</p>
                    <p class="paragraph">NS 252 Health Assessment for Registered Nurses</p>
                    <p class="paragraph">NS 270 Health Assessment</p>
                    <p class="paragraph">NS 272 Geriatric Nursing</p>
                    <p class="paragraph">NS 301 Health and Wellness</p>
                    <p class="paragraph">NS 303 Basic Pathophysiology and Pharmacology</p>
                    <p class="paragraph">NS 305 Mental Health Nursing</p>
                    <p class="paragraph">NS 307 Fundamentals of Nursing Care</p>
                    <p class="paragraph">NS 310 Foundations of Research for Evidence Based Practice</p>
                    <p class="paragraph">NS 312 Medical Surgical Nursing I</p>
                    <p class="paragraph">NS 314 Maternal and Newborn Nursing</p>
                    <p class="paragraph">NS 321 Professional Nursing Leadership</p>
                    <p class="paragraph">NS 323 Pediatric Nursing</p>
                    <p class="paragraph">NS 325 Medical Surgical Nursing II</p>
                    <p class="paragraph">NS 330 Community, Public and Global Health Nursing</p>
                    <p class="paragraph">NS 332 Transition to Professional Nursing</p>
                    <p class="paragraph">NS 356 Transition Seminar for Professional Nursing Practice for RNs</p>
                    <p class="paragraph">NS 360 Critical Care Nursing</p>
                    <p class="paragraph">NS 399 Nursing Independent Study</p>
                    <h3 class="subHeading">NS 110 Introduction to Professional Nursing</h3>
                    <p class="paragraph">This course serves as a foundation to the development of the nurse as a professional person. Central to this is the awareness and acceptance of self.  The process of clinical reasoning as an approach to the planning and delivery of nursing care to individuals, families, groups and communities is introduced.  Discussion of nursing’s history and accomplishments serves as the cornerstone for professional behaviors, including: scholarship, communication, collaboration, personal responsibility, accountability, integration of evidence based practice and peer- and self-evaluation.  Three credits (42 theory hours).</p>
                    <h3 class="subHeading">NS 112 Healthcare Delivery</h3>
                    <p class="paragraph">The healthcare delivery system is explored from a historical, economic, political, and health information technology perspective.  Emphasis is given to social, ethical, and legal aspects of the current system that remain unresolved, such as access to care, health disparities, and equity.  The history and progression of healthcare reform and its influence on our current healthcare system performance will be analyzed. Global health issues and their impact on the delivery of health care services are discussed, along with consumer use of complementary and alternative therapies.  This course is designed to give an inter-professional perspective to students interested in health care from any field of study. Three credits (42 theory hours).</p>
                    <h3 class="subHeading">NS 250 Dimensions of Professional Nursing</h3>
                    <p class="paragraph">This course is designed to facilitate career advancement of the registered nurse to the baccalaureate level.  This is the first course in the RN/BSN completion program. Consideration of values, culture, philosophy and personal goals are examined as part of the student’s professional development.  Communication, clinical reasoning and conflict resolution techniques will be utilized to foster positive inter-professional teams. Students will demonstrate an evidence based approach to analyze current healthcare issues including social justice and diversity in professional practice.  (Prerequisites: Connecticut RN license or academic transcript and approval of advisor) Three credits (42 theory hours).</p>
                    <h3 class="subHeading">NS 252 Health Assessment for Registered Nurses</h3>
                    <p class="paragraph">This course enhances knowledge and skills required to perform health assessments for patients throughout the lifespan.  Health assessment focuses not only on physiological components, but also on the more holistic cultural, spiritual, developmental, nutritional, genetic, and mental status assessments.  Clinical reasoning, communication and documentation using electronic medical records are also essential components of this course.  Students expand their skills in interviewing while learning how to perform health histories, and complete physical examinations through course lectures, discussions, simulations, and supervised and individual practice in classroom and laboratory modules.   (Prerequisites: CT RN license) Three credits (28 theory, 28 lab hours).</p>
                    <h3 class="subHeading">NS 270 Health Assessment</h3>
                    <p class="paragraph">This course introduces students to the knowledge and skills required to perform health assessments for patients throughout the lifespan.  Health assessment focuses not only on physiological components, but also on the more holistic cultural, spiritual, developmental, nutritional, genetic, and mental status assessments.  Clinical reasoning, communication and documentation using electronic medical records are also essential components of this course.  Students expand their skills in interviewing while learning how to perform health histories, and complete physical examinations through course lectures, discussions, simulations, and supervised and individual practice in classroom and laboratory modules.  (Prerequisites:  BI 107, BI 108, CH 84.   Four credits (28 theory, 56 lab hours).</p>
                    <h3 class="subHeading">NS 272 Geriatric Nursing</h3>
                    <p class="paragraph">This course focuses on evidence-based nursing care of older adults living in long-term care settings. Normal physiological changes of aging and related assessment skills will be incorporated and evaluated using standardized assessment tools.  Management of common geriatric care problems will be emphasized. Particular focus will be placed on the ethical and spiritual concerns of vulnerable older adult populations.  Students will reflect upon how the nursing role merges with life goals, philosophy and meaning to develop professional behaviors consistent with these aspects of life.   (Pre- or co-requisites:NS 110, NS 112, NS 270*, BI 151*, PY 111*) Four credits (42 theory hours, 42 clinical hours).</p>
                    <h3 class="subHeading">NS 301 Health and Wellness</h3>
                    <p class="paragraph">This course explores factors that influence health and wellness throughout the lifespan.  Epidemiology and evidence based practice provide a framework for the assessment of risk factors.  Students have opportunities for health promotion through clinical experiences with healthy individuals as well as those experiencing chronic conditions.  How people make health related decisions, what risks threaten their health, and reasons for adopting particular lifestyles are examined. Students apply skill and knowledge in planning culturally appropriate interventions in the community. Social determinants of health, communication, and other wellness concepts are explored.  (Pre-requisites: NS 270, NS 272*.)  Three credits (42 theory).</p>
                    <h3 class="subHeading">NS 303 Basic Pathophysiology and Pharmacology</h3>
                    <p class="paragraph">This course focuses on the study of physiological and biological life processes with a focus on deviations from normal, including exemplar cases.  Manifestations of disease and alterations in all body systems are discussed.  Pharmacologic therapies commonly used to manage disease are presented, including content on the recognition of side effects, adverse effects, allergy, and overdose.   (Prerequisites: CH 84, BI 107, BI 108)  Three credits (42 theory hours).</p>
                    <h3 class="subHeading">NS 305 Mental Health Nursing</h3>
                    <p class="paragraph">The focus of this course is the nursing care of individuals with psychiatric disorders.  A holistic approach based on theories of human behavior and personality as well as neurobiological, developmental, trauma-informed, and recovery-oriented models are used to plan and implement care in a variety of settings. Factors that may contribute to an individual developing a psychiatric disorder are discussed and ethical, legal and cultural issues are considered when planning care.   The development of a therapeutic nurse-patient relationship and use of communication techniques to promote healing are emphasized.  (Prerequisites: NS 110, NS 112, PY 111, NS 303*, BI 151*, NS 270*) Four credits (42 theory, 42 clinical hours).</p>
                    <h3 class="subHeading">NS 307 Fundamentals of Nursing Care</h3>
                    <p class="paragraph">In this course, evidence based practice is used as a guide for students to learn how to provide safe and effective patient care across the lifespan. In the laboratory setting, students perform basic to advanced psychomotor skills related to nursing care. Students also learn to effectively use an electronic health record to document clinical findings and care. (Prerequisites: NS 270, MA 16 or higher, NS 303*) Three credits (28 theory, 56 lab hours).</p>
                    <h3 class="subHeading">NS 310 Foundations of Research for Evidence Based Practice</h3>
                    <p class="paragraph">This course provides an introduction to the research process and its application to scholarship in clinical practice.  Students learn to be consumers of research through a review of the literature, critique of research, and identification of methods appropriate to study specific practice-related problems.  An emphasis is placed on clinical reasoning and writing skills.  Consideration is given to ethical, economic, technological, and statistical dimensions. Application is made to clinical research and evidence-based practice. (Prerequisites: MA 17 or MA 217) Three credits (42 theory hours).</p>
                    <h3 class="subHeading">NS 312 Medical Surgical Nursing I</h3>
                    <p class="paragraph">This course introduces the student to illnesses common in the adult population.  The nursing process, theory, and evidence-based practice, are incorporated with clinical practice. An emphasis is placed on clinical reasoning and prioritizing patient care. Throughout the course, informatics is integrated as part of the documentation process for clinical experiences. (Prerequisites: NS 272, NS 301, NS 303, NS 305, NS 307, NS 310*) Five credits (42 theory, 84 clinical hours).</p>
                    <h3 class="subHeading">NS 314 Maternal and Newborn Nursing</h3>
                    <p class="paragraph">This course is designed to provide students with the opportunity to assist the patient and family to cope with changes in reproductive and gynecological needs.  The childbearing cycle including: pregnancy, childbirth, postpartum, lactation, care of the healthy newborn and perinatal complications, and theoretical models will be explored.  Cultural, ethical and legal aspects of reproductive health across the lifespan will be examined.  Emphasis is on development of clinical reasoning and evidence based practice skills related to the nursing care of women and childbearing families.  (Prerequisites: NS 301, NS 303, NS 305, NS 307, NS 312*) Four credits (42 theory, 42 clinical hours).</p>
                    <h3 class="subHeading">NS 321 Professional Nursing Leadership</h3>
                    <p class="paragraph">This course immerses students in issues and concepts central to professional nursing. Political, social, and legal systems that affect the image of nursing and influence its role definition are examined. Organizational dynamics and theories of leadership are considered, with case studies and concurrent clinical experiences providing the foundation for theory integration. Focus is placed on patient safety and quality improvement.  (Prerequisites:  NS 250*, NS 310*, NS 325*) Three credits (42 theory).</p>
                    <h3 class="subHeading">NS 323 Pediatric Nursing</h3>
                    <p class="paragraph">This course utilizes a family centered care approach to provide an understanding of the unique anatomical, physiologic, and developmental differences among neonates, infants, children, adolescents, and young adults. Social and cultural influences on children and their families are discussed in addition to assessment, genetics, health promotion, injury prevention, acute and chronic illness, and palliative and end-of-life care. Students are challenged to implement effective communication techniques, clinical reasoning skills, and evidenced based practices when planning holistic and safe care for children and their families in a wide variety of clinical settings.  (Prerequisites: NS 301, NS 303, NS 305, NS 307, NS 312*)  Four credits (42 theory, 42 clinical hours).</p>
                    <h3 class="subHeading">NS 325 Medical Surgical Nursing II</h3>
                    <p class="paragraph">This course continues the study of nursing care for patients with illnesses common in the adult population. The theoretical framework of the nursing process is used to demonstrate effectiveness in planning and providing holistic evidence-based nursing care for diverse individuals and populations. Professional communication and interprofessional collaboration will be utilized in the delivery of patient-centered care.  (Prerequisite:  NS 312) Five credits (42 theory, 84 clinical hours).</p>
                    <h3 class="subHeading">NS 330 Community, Public and Global Health Nursing</h3>
                    <p class="paragraph">This course focuses on the care of people in their homes, in communities, and around the world. Principals of disease prevention, risk reduction, and health promotion are applied to diverse populations in the USA and worldwide. Students synthesize prior experience and learning with public health theory to provide collaborative, quality care across the lifespan. Using an ecological model, students engage in evidence based care for individuals, families, groups, communities and populations. Global issues related to the impact of social policies on healthcare and health equity, and needs of vulnerable populations are also examined.  (Prerequisites: NS 252, NS 314, NS 321*, NS 323 NS 325.) Four credits (42 theory, 42 clinical hours)</p>
                    <h3 class="subHeading">NS 332 Transition to Professional Nursing</h3>
                    <p class="paragraph">This capstone course addresses provision of holistic, evidence based care to patients and families in a variety of health care settings. Students have the opportunity to work as a member of the health care team with an individual agency preceptor across the course. The focus is on fostering student growth in clinical reasoning, clinical reasoning and leadership development to promote  autonomous professional nursing practice within the clinical setting.  Students develop a Capstone Project based on an identified learning need, for the patient, the patient’s family, or for the nursing staff.  (Prerequisites: NS 314, NS 321*, NS 323, NS 325, NS 330*) Four credits (168 clinical hours).</p>
                    <h3 class="subHeading">NS 356 Transition Seminar for Professional Nursing Practice for RNs</h3>
                    <p class="paragraph">This capstone course challenges the RN student to facilitate change in a clinical setting and positively influence patient outcomes. Students engage in collaborative interprofessional work with members of the healthcare team, and reflect on their own role as a professional nurse. Through this course, students demonstrate evidence based practice, leadership, and clinical reasoning to make the transition to an autonomous professional level of practice.  (Prerequisites: CT RN license, NS 310 NS 321*, NS 330*)  Three credits (42 theory).</p>
                    <h3 class="subHeading">NS 360 Critical Care Nursing</h3>
                    <p class="paragraph">This elective course is an introduction to critical care nursing.  The focus is placed on nursing diagnoses and evidence based practice in the care of the critically ill patient. Common issues such as ethical dilemmas, psychosocial challenges, and symptom management are discussed.   Relevant nursing implications for the care of critically ill patients are addressed.  Students also gain skills in advanced critical care, hemodynamic monitoring, and ventilator management. (Prerequisite: NS 325) Three credits (42 theory hours).</p>
                    <h3 class="subHeading">NS 399 Nursing Independent Study</h3>
                    <p class="paragraph">Through individually designed projects or activities, students work with a faculty member to study a specific area in depth. (Prerequisite: permission of the instructor and dean). One to six credits.</p>
                </div>
            </form>
        </main>
    </div>
</body>
</html>
