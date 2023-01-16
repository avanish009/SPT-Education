<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
    </head>
<body>
    <form id="form2" runat="server">
        <div class="container">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/sptimages/logo2.png"  height="75px" width="225px"/>
            <section class="register">
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>   
                <div class="reg_section personal_info">
                    <h3>Please Login with your credentials</h3>
                    <table>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Enter First Name" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" 
                                    TextMode="Password"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox2" runat="server" ErrorMessage="Enter Password" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="95">

                                    <asp:ListItem Value="0">Admin</asp:ListItem>
                                    <asp:ListItem Value="1">Student</asp:ListItem>
                                    <asp:ListItem Value="2">Faculty</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                            <a href="ForgotPass.aspx">Forgot Password?</a>
                                
                            </td>
                        </tr>

                    </table>

                    <p class="submit">
                        <asp:Button ID="Button1" runat="server" Text="Login"
                            OnClick="Button1_Click"></asp:Button>
                    &nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="Index.aspx">Go to HOME</a>
                    </p>
                    </div>
                    <div><p class="submit">
                    <p><asp:Label ID="Label1" runat="server" ></asp:Label><br /><br />
                        Not A Member Yet? Register Now
                        <a href="StudentReg.aspx">Student   /   </a><a href="FacultyReg.aspx">Faculty</a>
                        </p>
                        </p>
                        </div>
                </div>
    </form>
    
</body>
</html>

