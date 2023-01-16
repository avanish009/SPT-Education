<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tycs.aspx.cs" Inherits="Tycs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TY BSc.IT</title>
    <link href="css/CSIT.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 169px;
        }

        .auto-style2 {
            width: 578px;
        }

        .auto-style3 {
            width: 718px;
        }
    </style>
</head>
<body id="top">
    <div class="wrapper col1">
  <div id="header">
    <div id="logo">
         <img src="images/sptimages/logo2.png" height="90px" width="300px"/>
    </div>
    <div id="newsletter">
      
      <form action="#" method="post"  runat="server">
        <fieldset>
           <h1>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
                            
                        <h1>
                            <asp:Label ID="Label1" runat="server" ></asp:Label>
                            <asp:Label ID="Label2" runat="server" ></asp:Label>
                        </h1>
            
        </fieldset>
      </form>
    </div>
    <br class="clear" />
  </div>
</div>
    <div class="wrapper col2">
        <div id="topbar">
            <div id="topnav">
                <ul>
                    <li><a href="Index.aspx">Home</a></li>
                    <li><a href="Contactus.aspx">Contact Us</a></li>
                    </ul>
        <li class="active"><a href="#">Courses</a>
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
                        <li><a href="#">Gallery</a>
                            <ul>
                                <li><a href="Achievements.aspx">Achivements</a></li>
                                <li><a href="Trips.aspx">Trips</a></li>

                            </ul>
                        </li>
                </ul>
            </div>
            
            <br class="clear" />
        </div>
    </div>
    
    <form id="form1" >
        <div>
            <td>
                <br /><br />
                <div>
                    <center class="semester_hed"><u><b>SEM-V</b></u></center>
                    <br />
                    <table width="98%" align="center" border="0" cellspacing="0" cellpadding="2" style="margin-left: 5px" class=" result_tbl_brd">
                        <tbody>
                            <tr>
                                <td style="padding-left: 15px" bgcolor="#49a2dc" class="auto-style3"><strong>Subject</strong></td>
                                <td style="padding-left: 15px; padding-right: 30px;" bgcolor="#49a2dc" class="resultin1"><strong>Fees</strong></td>
                            </tr>
                            <tr>
                                <td style="padding-left: 15px" class="auto-style3">Data Communication, Networking &amp; Security-I</td>
                                <td style="padding-left: 15px" class="resultin1">5500</td>
                            </tr>
                            <tr>
                                <td style="padding-left: 15px" class="auto-style3">Advanced Java &#8211; I </td>
                                <td style="padding-left: 15px" class="resultin1">5500</td>
                            </tr>
                            <tr>
                                <td style="padding-left: 15px" class="auto-style3">Operating Systems</td>
                                <td style="padding-left: 15px" class="resultin1">5500</td>
                            </tr>
                            <tr>
                                <td style="padding-left: 15px" class="auto-style3">Database Management System - II</td>
                                <td style="padding-left: 15px" class="resultin1">4000</td>
                            </tr>
                            <tr>
                                <td style="padding-left: 15px" class="auto-style3">All Practicals</td>
                                <td style="padding-left: 15px" class="result_in2">6000</td>
                            </tr>
                        </tbody>
                    </table>
                    <p style="margin-left: 5px; margin-right: 5px">
                </div>
                <br /><br />
                <div>
                    <center class="semester_hed"><u><b>SEM-VI</center>
                    <br />
                    <table width="98%" align="center" border="0" cellspacing="0" cellpadding="2" style="margin-left: 5px" class=" result_tbl_brd">
                        <tbody>
                            <tr>
                                <td style="padding-left: 15px" bgcolor="#49a2dc" class="auto-style2"><strong>Subject</strong></td>
                                <td style="padding-left: 15px; padding-right: 30px;" bgcolor="#49a2dc" class="auto-style1"><strong>Fees<Fees</strong></td>
                            </tr>
                            <tr>
                                <td style="padding-left: 15px" class="auto-style2">Data Communication, Networking &amp; Security-II </td>
                                <td style="padding-left: 15px" class="auto-style1">4500</td>
                            </tr>
                            <tr>
                                <td style="padding-left: 15px" class="auto-style2">Advanced Java - II </td>
                                <td style="padding-left: 15px" class="auto-style1">5500</td>
                            </tr>
                            <tr>
                                <td style="padding-left: 15px" class="auto-style2">Linux</td>
                                <td style="padding-left: 15px" class="auto-style1">4000</td>
                            </tr>
                            <tr>
                                <td style="padding-left: 15px" class="auto-style2">Software Engineering </td>
                                <td style="padding-left: 15px" class="resultin1">4000
                            </tr>
                            <tr>
                                <td style="padding-left: 15px" class="auto-style2">All Practicals </td>
                                <td style="padding-left: 15px" class="resultin1">4000</td>
                            </tr>
                        </tbody>
                    </table>
                    <p style="margin-left: 5px; margin-right: 5px">
                </div>
                <div><center> We will perform Mock Practical Exam at our branch</center> </div>
                <br/>
                <br/>
                <br/>
                <b><center><span class="course_hed">Group Offer: </span>Join in a group of 4 or more and get Group benefit</center></b><br>
                <center>CALL OR ASK FOR EARLY BIRD OFFER.</center>
                <br/>
                <br />
                <br />
                <center class="semester_hed"><u><b>COMBO OFFER</b></u></center>
                <br />
                <table width="98%" align="center" border="0" cellspacing="0" cellpadding="2" style="margin-left: 5px" class="result_tbl_brd">
                    <tbody>
                        <tr>
                            <td style="padding-left: 15px" bgcolor="#49a2dc" class="result_in"><strong>Particulars</strong></td>
                            <td style="padding-left: 15px" bgcolor="#49a2dc" class="resultin1"><strong>Offers</strong></td>
                            <td style="padding-left: 15px" bgcolor="#49a2dc" class="resultin1"><strong>Benefit</strong></td>
                        </tr>
                        <tr>
                            <td style="padding-left: 15px" class="result_in">Sem V (All 5 subjects)</td>
                            <td style="padding-left: 15px" class="resultin1">19000</td>
                            <td style="padding-left: 15px" class="resultin1">2000</td>
                        </tr>
                        <tr>
                            <td style="padding-left: 15px" class="result_in">Sem V (only programing)</td>
                            <td style="padding-left: 15px" class="resultin1">15000</td>
                            <td style="padding-left: 15px" class="resultin1">1500</td>
                        </tr>
                        <tr>
                            <td style="padding-left: 15px">Sem V + VI [All (5 + 3 = 8) subjects]</td>
                            <td style="padding-left: 15px" class="result_in2">28000</td>
                            <td style="padding-left: 15px" class="result_in2">4000</td>
                        </tr>
                    </tbody>
                </table>
                <br>
                <p style="margin-left: 5px; margin-right: 5px" onfocus="">
                    <b>At Success Point Team</b> we try to make sure that while leaving a course the candidate should not noly have the theorotical knowledge to think, but also the training to implement and solve the problem practically
                </p>
            </td>
            <div>
               <br />
                <br />
                <b>
                <p><center><h1>Join Us & Get Successful Results</h1></center></p>
                </b>
            </div>
        </div>
   <div class="wrapper col7">
    </div>
    </form>
</body>
</html>

