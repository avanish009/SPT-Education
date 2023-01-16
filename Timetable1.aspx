<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Timetable1.aspx.cs" Inherits="Timetable1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Timetable</title>
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
    <script>        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3";
            fjs.parentNode.insertBefore(js, fjs);
        } (document, 'script', 'facebook-jssdk'));</script>
    <form id="Form1" runat="server">
    <div class="wrapper col1">
        <div id="header">
            <div id="logo">
                <img src="images/sptimages/logo2.png" alt="" height="90px" width="300px" />
            </div>
            <div id="newsletter">
                <fieldset>
                    <h1>
                        <asp:LinkButton ID="LinkButton1" runat="server" ></asp:LinkButton>
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
                            <li><a href="Timetable.aspx">Lecture Schedule</a></li>
                            <li><a href="Feedback.aspx">Feedback</a></li>
                            <li><a href="Chat.aspx">Group Chat</a></li>
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
                            <li><a href="Chat.aspx">Group Chat</a></li>
                            <li><a href="DownloadCodes.aspx">Upload Codes</a></li>
                            <li><a href="DownloadNotes.aspx">Upload Notes</a></li>
                            <li><a href="DownloadProject.aspx">Upload Projects</a></li>
                        </ul>
                        <li>
                            <asp:LinkButton ID="LinkButton3" runat="server">Faculty</asp:LinkButton>
                            <ul>
                                <li><a href="FacultyView.aspx">Student Porfiles</a></li>
                                <li><a href="FacultyQuestionAns.aspx">Q & A</a></li>
                                <li><a href="Chat.aspx">Group Chat</a></li>
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
   
    <div class="wrapper col5">
        <div id="container">
            <div id="content">
            <div style="font-family:Arial">
                <h1 align="center">Lecture Schedule </h1>
                <img class="imgr" src="../images/demo/imgr.gif" alt="" width="125" height="125" />
                <p>Student Should Reach 10 minutes before the Lecture Starts as the faculties are very punctual so should be the Students</p>
                <p>If there is any change in the Lecture Schedule you will be notified one day before.</p>


                <p>If any student cannot attend the lecture he should inform the faculties. If the student fails to inform the faculties, Parents will be called to know the reason</p>

                <asp:GridView ID="GridView1" runat="server" Width="754px" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="ProfName" HeaderText="ProfName" 
                            SortExpression="ProfName" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" 
                            SortExpression="Subject" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SPTEducationConnectionString %>" 
                    SelectCommand="SELECT * FROM [TimetableDB] ORDER BY [Date] DESC"></asp:SqlDataSource>
                <br />
                
                
                <p><b>*Sunday timing will be declared in Saturday's Lecture</b></p>
                <asp:Label ID="Label3" runat="server" Text="Enter Date:"></asp:Label>
&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtDate" runat="server" Height="23px" Width="204px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Timming: "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txttime" runat="server" Height="21px" Width="195px"></asp:TextBox>
                <br />
                <br />
                </b>
                <asp:Label ID="Label5" runat="server" Text="Profesor Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtproff" runat="server" Height="25px" Width="189px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="Subject:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSub" runat="server" Height="28px" Width="183px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <div class="clear"></div>

    </div>
    </div>
    <div class="clear"></div>
  </div>
</div>
<div class="wrapper col6">
        <div id="footer">
            <div id="login">
                <h2>Site Map</h2>
                </form>
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
                        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Tycs.aspx">&raquo;Courses CS</asp:HyperLink></li>
                        <li>
                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Tyit.aspx">&raquo;Courses IT</asp:HyperLink></li>
                        <li>
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/ForgotPass.aspx">&raquo;Forgot Password</asp:HyperLink></li>
                        <li>
                        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/SignIn.aspx.cs">&raquo;Sign In</asp:HyperLink></li>

                </ul>
            </div>
            
            <div class="footbox">
                <h2>Join Us On</h2>
                
                                        
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/logos/facebook.png"  NavigateUrl="https://facebook.com/"></asp:HyperLink>
                    
                        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/images/logos/twitter.png" NavigateUrl="https://twitter.com/"></asp:HyperLink>
                    
                        <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/images/logos/Googleplus.png"  NavigateUrl="https://plus.google.com/"></asp:HyperLink>
                    
                        <p><asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/images/logos/linkedin.png"  NavigateUrl="https://in.linkedin.com/"></asp:HyperLink><asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/images/logos/Rssfeeds.png"  NavigateUrl="https://www.rss.com/"></asp:HyperLink></p>
                
            </div>
            <div class="fb-page" data-href="https://www.facebook.com/Success-Point-Team-423863008059129/?modal=admin_todo_tour" data-width="400" data-height="400" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/Success-Point-Team-423863008059129/?modal=admin_todo_tour">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="https://www.facebook.com/Success-Point-Team-423863008059129/?modal=admin_todo_tour"></a></blockquote></div></div>
            <br class="clear" />
        </div>
    </div>
<div class="wrapper col7">
        <div id="copyright">
            <p class="fl_left">
                Copyright &copy; 2015 - All Rights Reserved - <a href="#">Success Point Team</a></p>
            <p class="fl_right">
                Website Desgined By 
                <a href="#">Makrand Patne</a></p>
            <br class="clear" />
        </div>
    </div>
    </form>
</body>
</html>
