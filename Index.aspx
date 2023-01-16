<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Home</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
    <style type="text/css">
        .auto-style1
        {
            width: 18px;
            height: 15px;
        }
        .auto-style2
        {
            width: 18px;
            height: 18px;
        }
        .auto-style3
        {
            width: 18px;
            height: 15px;
        }
        .auto-style4
        {
            width: 18px;
            height: 15px;
        }
        .auto-style5
        {
            width: 18px;
            height: 16px;
        }
        .fb-page
        {
            margin-left: 19px;
        }
    </style>
</head>
<body id="top">
    <div id="fb-root">
    </div>
    <script> (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3";
            fjs.parentNode.insertBefore(js, fjs);
        } (document, 'script', 'facebook-jssdk'));</script>
    <form action="#" method="post" runat="server">
    <div class="wrapper col1">
        <div id="header">
            <div id="logo">
                <img src="images/sptimages/logo2.png" alt="" height="90px" width="300px" />
            </div>
            <div id="newsletter">
                <fieldset>
                    <h1>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
                    </h1>
                    <h1>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </h1>
                </fieldset>
            </div>
            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col2">
        <div id="topbar">
            <div id="topnav">
                <ul>
                    <li class="active"><a href="index.aspx">Home</a></li>
                    <li><a href="Contactus.aspx">Contact Us</a></li>
                    <li><a href="#">Courses</a>
                        <ul>
                            <li><a href="Tybca.aspx">Bca</a></li>
                            <li><a href="Tyit.aspx">Bsc.IT</a></li>
                            <li><a href="Tycs.aspx">Bsc.CS</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Student's Corner</a>
                        <ul>
                            <li><a href="Downloads.aspx">Downloads</a></li>
                            <li><a href="Timetable1.aspx">Lecture Schedule</a></li>
                            <li><a href="Feedback.aspx">Feedback</a></li>
                         </ul>
                    </li>
                    <li><a href="#">Gallery</a>
                        <ul>
                            <li><a href="Achievements.aspx">Achivements</a></li>
                            <li><a href="Trips.aspx">Trips</a></li>
                        </ul>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButton2" runat="server">Admin</asp:LinkButton>
                        <ul>
                            <li><a href="Users.aspx">Users Profiles</a></li>
                            <li><a href="Admin_QA1.aspx">Q & A</a></li>
                            <li><a href="DownloadCodes.aspx">Upload Codes</a></li>
                            <li><a href="DownloadNotes.aspx">Upload Notes</a></li>
                            <li><a href="DownloadProject.aspx">Upload Projects</a></li>
                        </ul>
                        <li>
                            <asp:LinkButton ID="LinkButton3" runat="server">Faculty</asp:LinkButton>
                            <ul>
                                <li><a href="FacultyView.aspx">Student Porfiles</a></li>
                                <li><a href="FacultyQuestionAns.aspx">Q & A</a></li>
                                <li><a href="DownloadCodes.aspx">Upload Codes</a></li>
                                <li><a href="DownloadNotes.aspx">Upload Notes</a></li>
                                <li><a href="DownloadProject.aspx">Upload Projects</a></li>
                                <li><a href="Feedback.aspx">Feedback</a></li>
                            </ul>
                </ul>
            </div>
            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col3">
        <div id="intro">
            <div class="fl_left">
                <h2>
                    SPT Education Welcomes You....</h2>
                <p>
                    &nbsp;</p>
            </div>
            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col4">
        <div id="services">
            <ul>
                <li>
                    <div class="fl_left">
                        <img src="images/sptimages/mission.jpg" alt="" height="180px" width="295" /><br />
                    </div>
                    <h1>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Our Mission Statment</h1>
                </li>
                <li>
                    <div class="fl_left">
                        <img src="images/sptimages/Parent.jpg" alt="" height="180px" width="295" /><br />
                    </div>
                    <h1>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Prospective
                        Parents</h1>
                </li>
                <li class="last">
                    <div class="fl_left">
                        <img src="images/sptimages/Progress.jpg" alt="" height="180px" width="295" /><br />
                    </div>
                    <h1>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Performance Report</h1>
                </li>
            </ul>
            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col5">
        <div id="container">
            <div id="content">
                <br />
                <h2>
                    &nbsp; Welcome to <a>Success Point Team</a></h2>
                <p style="width: 936px">
                    <span style="color: rgb(76, 76, 76); font-family: Tahoma, Geneva, sans-serif; font-size: 14px;
                        font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal;
                        line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none;
                        white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;
                        display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                        A dream established in order to make students industry ready, guiding through the
                        difficulties they might face while preparing for University examinations and generating
                        better results. At SPT we not only focus on the theoretical knowledge but also focus
                        on the practical implementation. SPT focuses to prepare students for exam along
                        industry practices.</span></p>
                <br />
                <h3>
                    &nbsp; Individual Approach to Eduaction</h3>
                <p style="width: 941px">
                    <span style="color: rgb(76, 76, 76); font-family: Tahoma, Geneva, sans-serif; font-size: 14px;
                        font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal;
                        line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none;
                        white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;
                        display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                        Experienced Faculties and Industry Experts Success Point Team is an institution
                        which provides a&nbsp; complete "Guidance to Excellence..!!" In order to do so the
                        classroom consists of not more&nbsp;than 15 students per batch so as to provide
                        individual attention.</span>
                </p>
            </div>
            <div id="column">
                <div class="holder">
                    <br />
                    <h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Programs</h2>
                    <ul id="New Programs">
                        <li><a href="Tyit.aspx">BSC.IT</a> </li>
                        <li><a href="Tybca.aspx">BCA</a> </li>
                        <li><a href="Tycs.aspx">CS</a> </li>
                        <li>Project Guidance Seminars</li>
                    </ul>
                    <p>
                        <img src="images/sptimages/private.jpg" height="120" width="200" />
                    </p>
                </div>
            </div>
            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col6">
        <div id="footer">
            <div id="login">
                <h2>
                    Site Map</h2>
                <form action="#" method="post">
                <fieldset>
                    <legend>Client Login</legend>
                    <div class="fl_left">
                        &nbsp;
                    </div>
                    <div class="fl_right">
                        &nbsp;</div>
                </fieldset>
                </form>
                <ul>
                    <li>
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Index.aspx">&raquo;Index</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Contactus.aspx">&raquo;Contact Us</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Tybca.aspx">&raquo;Courses BCA</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Tyit.aspx">&raquo;Courses IT</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/ForgotPass.aspx">&raquo;Forgot Password</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/SignIn.aspx.cs">&raquo;Sign In</asp:HyperLink></li>
                </ul>
            </div>
            <div class="footbox">
                <h2>
                    Join Us On</h2>
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/logos/facebook.png"
                    NavigateUrl="https://facebook.com/"></asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/images/logos/twitter.png"
                    NavigateUrl="https://twitter.com/"></asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/images/logos/Googleplus.png"
                    NavigateUrl="https://plus.google.com/"></asp:HyperLink>
                <p>
                    <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/images/logos/linkedin.png"
                        NavigateUrl="https://in.linkedin.com/"></asp:HyperLink><asp:HyperLink ID="HyperLink5"
                            runat="server" ImageUrl="~/images/logos/Rssfeeds.png" NavigateUrl="https://www.rss.com/"></asp:HyperLink></p>
            </div>
            <div class="fb-page" data-href="https://www.facebook.com/Success-Point-Team-423863008059129/?modal=admin_todo_tour" data-width="400"
                data-height="400" data-hide-cover="false" data-show-facepile="true" data-show-posts="false">
                <div class="fb-xfbml-parse-ignore">
                    <blockquote cite="https://www.facebook.com/Success-Point-Team-423863008059129/?modal=admin_todo_tour">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/Success-Point-Team-423863008059129/?modal=admin_todo_tour">
                        </a>
                    </blockquote>
                </div>
            </div>
            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col7">
    </div>
    </form>
</body>
</html>
