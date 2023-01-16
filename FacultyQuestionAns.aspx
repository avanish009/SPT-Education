<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FacultyQuestionAns.aspx.cs" Inherits="FacultyQuestionAns" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Faculty QA</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" />
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
    <form id="form1" runat="server" method="post" action="FacultyQuestionAns.aspx">
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
                        </li>
                        <li  class="active">
                            <asp:LinkButton ID="LinkButton3" runat="server">Faculty</asp:LinkButton>
                            <ul>
                                <li><a href="FacultyView.aspx">Student Porfiles</a></li>
                                <li><a href="Admin_QA1.aspx">Q & A</a></li>
                                
                                <li><a href="DownloadCodes.aspx">Upload Codes</a></li>
                                <li><a href="DownloadNotes.aspx">Upload Notes</a></li>
                                <li><a href="DownloadProject.aspx">Upload Projects</a></li>
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
                    <h1 align="center">Question From Users</h1>
                    <div>
                    <asp:DataGrid ID="Grid" runat="server" PageSize="5" AllowPaging="True"
                DataKeyField="Name" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black"
                OnPageIndexChanged="Grid_PageIndexChanged" OnDeleteCommand="Grid_DeleteCommand" 
                 HorizontalAlign="Center" Width="100px" PagerStyle-Width="100px" OnSelectedIndexChanged="Grid_SelectedIndexChanged"
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"
                CellSpacing="2" AllowSorting="True">

                <Columns>
                    <asp:BoundColumn HeaderText="Name" DataField="Name"></asp:BoundColumn>
                    
                    <asp:BoundColumn HeaderText="Email" DataField="Email"></asp:BoundColumn>

                    <asp:BoundColumn HeaderText="Mobile" DataField="Mobile"></asp:BoundColumn>
                    
                    <asp:BoundColumn HeaderText="Subject" DataField="Subject"></asp:BoundColumn>

                    <asp:BoundColumn HeaderText="Queries" DataField="Queries"></asp:BoundColumn>

                    <asp:ButtonColumn CommandName="Delete" HeaderText="Delete" Text="Delete"></asp:ButtonColumn>
                </Columns>

                <FooterStyle BackColor="#CCCCCC" />

                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />

                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left"
                    Mode="NumericPages" Width="100px" />

                <ItemStyle BackColor="White" />

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />

            </asp:DataGrid>
                    </div>
                  
                    

                    <h1 align="center">Respose Form</h1>
                             <p>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Question ?"   TextMode="MultiLine"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Please Write Question of User" ></asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox2" runat="server" ErrorMessage="Enter Email Address" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                    ErrorMessage="Invalid email address." ControlToValidate="TextBox2"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    Display="Dynamic" >
                                </asp:RegularExpressionValidator>
                            </p>
                            <p>
                                <asp:TextBox ID="TextBox3" runat="server" placeholder="Answer" Height="100px" Width="400" TextMode="MultiLine"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox3" runat="server" ErrorMessage="Please Write Response" ></asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Button ID="Button1" runat="server" Text="Submit" 
                                    onclick="Button1_Click1" />&nbsp; 
                                <asp:Label ID="Label3" runat="server"></asp:Label></p>
                </div>
                    
                </div>
                <div class="clear"></div>
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

