<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Feedback</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" />
    <link href="css/gallery.css" rel="stylesheet" />
</head>
<body id="top">
<div id="fb-root"></div>
<script>    (function (d, s, id) {
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
                    <li><a href="index.aspx">Home</a></li>
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
                        </li>
                        <li class="active">
                            <asp:LinkButton ID="LinkButton3" runat="server">Faculty</asp:LinkButton>
                            <ul>
                                <li><a href="FacultyView.aspx">Student Porfiles</a></li>
                                <li><a href="Admin_QA1.aspx">Q & A</a></li>
                                <li><a href="Chat.aspx">Group Chat</a></li>
                                <li><a href="DownloadCodes.aspx">Upload Codes</a></li>
                                <li><a href="DownloadNotes.aspx">Upload Notes</a></li>
                                <li><a href="DownloadProject.aspx">Upload Projects</a></li>
                                <li><a href="Feedback.aspx">Feedback</a></li>
                            </ul>
                            </li>
                </ul>
            </div>
            <br class="clear" />
        </div>
    </div>
    <div class="wrapper col5">
        <div id="container">
            <div id="content">

                <div id="comments">
                    <h2>Valuable Feedbacks</h2>
                    <ul class="commentlist">
                        <li class="comment_odd">
                            <div class="author">
                                <span class="name">Sayli</span> <span class="wrote">wrote:</span>
                            </div>
                            <div class="submitdate"></div>
                            <p>Teaching Of SPT faculties is too good. It help me to understand each and every 
                                chapter in detail and even cleared my basics of programming. After joining SPT I 
                                started to take intrest in Programming</p>
                        </li>
                        <li class="comment_even">
                            <div class="author">
                                <span class="name">Rohan</span> <span class="wrote">wrote:</span>
                            </div>
                            <div class="submitdate"></div>
                            <p>Programming is too easy if you join SPT. The teaching method and industrial 
                                examples have helped me a lot for my progress in SY.BSc.CS. I would like to tell 
                                everyone that please join SPT if any one wants to get good marks and good 
                                knowledge.</p>
                        </li>
                        <li class="comment_odd">
                            <div class="author">
                                <span class="name">Dolly</span> <span class="wrote">wrote:</span>
                            </div>
                            <div class="submitdate"></div>
                            <p>I learned a lot of new things and a good knowledge about project development. The 
                                faculties helped me to get best understanding of subjects and practicals. Thank 
                                you so much Sir</p>
                            <p>&nbsp;</p>
                            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                Width="926px" AutoGenerateColumns="False" 
                                AllowSorting="True">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                                    <asp:BoundField DataField="Feedback" HeaderText="Feedback" 
                                        SortExpression="Feedback" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:SPTEducationConnectionString %>" 
                                SelectCommand="SELECT * FROM [FeedbackDB]"></asp:SqlDataSource>
                        </li>
                    </ul>
                </div>
                <h2>Write A Comment</h2>
                <div id="respond">
                    
                        <p>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="E-mail"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox2" runat="server" ErrorMessage="Please Enter Email Address"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ErrorMessage="Invalid email address" ControlToValidate="TextBox2"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                Display="Dynamic">
                            </asp:RegularExpressionValidator>
                        </p>
                        <p>
                           <asp:DropDownList ID="DropDownList1" runat="server" Width="95" >

                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Student</asp:ListItem>
                                    <asp:ListItem Value="2">Faculty</asp:ListItem>
                                </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" InitialValue="0" ControlToValidate="DropDownList1" runat="server" ErrorMessage="Please Select Your Role"></asp:RequiredFieldValidator></p>
                            
                    <p><asp:TextBox ID="TextBox3" runat="server" placeholder="Feedback" Height="150px" Width="500px" TextMode="MultiLine"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox3" runat="server" ErrorMessage="Please Enter Your Feedback"></asp:RequiredFieldValidator>

                        </p>
                        <p>
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" 
                                Width="80px" />
                         <asp:Label ID="Label3" runat="server"></asp:Label>
                        </p>
                  
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
    </div>
        </form>
</body>
</html>
