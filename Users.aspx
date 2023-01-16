<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Users</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" />
    <link href="css/gallery.css" rel="stylesheet" />
</head>
<body id="top">
    <form id="form1" runat="server">
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
                    <li><a href="Index.aspx">Home</a></li>
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
                        <li class="active">
                            <asp:LinkButton ID="LinkButton3" runat="server">Faculty</asp:LinkButton>
                            <ul>
                                <li><a href="FacultyView.aspx">Student Porfiles</a></li>
                                <li><a href="Admin_QA1.aspx">Q & A</a></li>
                                
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
    <div>
        <h3 align="center"> Users Profiles</h3>
    </div>
<div class="wrapper col5">
  <div id="container">
    <div id="content">
        <div style="font-family:Arial">
           <table>
            
        &nbsp;<div>
            <h1>Registered Faculties</h1>
               <br />
            <asp:DataGrid ID="Grid1" runat="server" PageSize="5" AllowPaging="True"
                DataKeyField="FirstName" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black"
                OnPageIndexChanged="Grid_PageIndexChanged1" OnCancelCommand="Grid_CancelCommand1"
                OnDeleteCommand="Grid_DeleteCommand1" OnEditCommand="Grid_EditCommand1"
                OnUpdateCommand="Grid_UpdateCommand1" HorizontalAlign="Center"
                Width="16px" PagerStyle-Width="100px" OnSelectedIndexChanged="Grid_SelectedIndexChanged"
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"
                CellSpacing="2" AllowSorting="True">

                <Columns>
                    <asp:BoundColumn HeaderText="FirstName" DataField="FirstName" ItemStyle-Height="10px">
<ItemStyle Height="10px"></ItemStyle>
                    </asp:BoundColumn>
                    <asp:BoundColumn HeaderText="LastName" DataField="LastName"></asp:BoundColumn>

                    <asp:BoundColumn HeaderText="UserName" DataField="UserName"></asp:BoundColumn>

                    <asp:BoundColumn HeaderText="Email" DataField="Email"></asp:BoundColumn>

                    <asp:BoundColumn HeaderText="Mobile" DataField="Mobile"></asp:BoundColumn>
                    <asp:BoundColumn HeaderText="Birthdate" DataField="Birthdate"></asp:BoundColumn>
                    <asp:BoundColumn HeaderText="Gender" DataField="Gender"></asp:BoundColumn>
                    <asp:BoundColumn HeaderText="Password" DataField="Password"></asp:BoundColumn>
                    <asp:EditCommandColumn EditText="Edit" CancelText="Cancel" UpdateText="Update" 
                        HeaderText="Edit" ButtonType="PushButton"></asp:EditCommandColumn>

                    <asp:ButtonColumn CommandName="Delete" HeaderText="Delete" Text="Delete" 
                        ButtonType="PushButton"></asp:ButtonColumn>
                </Columns>

                <FooterStyle BackColor="#CCCCCC" />

                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />

                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left"
                    Mode="NumericPages" Width="100px" />

                <ItemStyle BackColor="White" />

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />

            </asp:DataGrid>
        </div>
            </table>

        </div>
      
    
      <div>
       <table>
           &nbsp;<div>
            <h1></h1>
        </div>
       </table>
   </div>
        </div>
    
    <div class="clear"></div>
  </div>
</div>

<div class="wrapper col7">
    </div>
    </form>
</body>
</html>