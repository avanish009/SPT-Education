<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPass.aspx.cs" Inherits="ForgotPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="css/style.css">
    </head>
<body>
    <form id="form1" runat="server" method="post" action="ForgotPass.aspx">
    
        <div class="container">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/sptimages/logo2.png"  height="75px" width="225px"/>
            <section class="register">
            
    <h1>Forgot Password ?</h1>
        <table>
            <tr><br />
                Enter Your E-mail
            </tr>
            <tr>
      <td><asp:TextBox ID="TextBox1" runat="server" placeholder="E-mail Address" Width="200px"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4"  ControlToValidate="TextBox1" runat="server" ErrorMessage="Enter E-mail Address" Text="*"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
    ErrorMessage="Invalid email address."    ControlToValidate="TextBox1" 
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
    Display="Dynamic" Text="*">
</asp:RegularExpressionValidator>
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
        <td><p class="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click"></asp:Button></p></td>
             
            </tr>
            <tr>
            <td><asp:Label ID="Label1" runat="server"></asp:Label></td>
            </tr>
        </table>
    </form>
</body>
</html>
