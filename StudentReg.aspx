<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="StudentReg.aspx.cs" Inherits="StudentReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Registration Form</title>
    <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
        .style1 {
            width: 228px;
                 }

        .auto-style1 {
            width: 251px;
              }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="container">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/sptimages/logo2.png"  height="75px" width="225px"/>
            <section class="register">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Registration&nbsp;&nbsp;&nbsp; <a href="Index.aspx">Go to HOME</a></h1>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
      <div class="reg_section personal_info">
      <h3>Your Personal Information</h3>
      <table>
      <tr>
      <td><asp:TextBox ID="TextBox1" runat="server" placeholder="First Name"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ControlToValidate="TextBox1" runat="server" ErrorMessage="Enter First Name" Text="*"></asp:RequiredFieldValidator>
      </td>
       <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name"></asp:TextBox></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2"  ControlToValidate="TextBox2" runat="server" ErrorMessage="Enter Last Name" Text="*"></asp:RequiredFieldValidator>
      </td>
      </tr>
      <tr>
      <td><asp:TextBox ID="TextBox3" runat="server" placeholder="Your Desired Username"></asp:TextBox></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3"  ControlToValidate="TextBox3" runat="server" ErrorMessage="Enter Username Name" Text="*"></asp:RequiredFieldValidator>
      </td>
      </tr>
      <tr>
      <td><asp:TextBox ID="TextBox4" runat="server" placeholder="E-mail Address"></asp:TextBox></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4"  ControlToValidate="TextBox4" runat="server" ErrorMessage="Enter E-mail Address" Text="*"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
    ErrorMessage="Invalid email address."    ControlToValidate="TextBox4" 
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" Text="*">
</asp:RegularExpressionValidator>
      &nbsp;
      </td>
      </tr>
       <tr>
      <td><asp:TextBox ID="TextBox5" runat="server" placeholder="Your Mobile" 
              MaxLength="10"></asp:TextBox>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
      ControlToValidate="TextBox5" ErrorMessage="Enter A Valid Mobile Number" 
    ValidationExpression="[0-9]{10}" Text="*"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  ControlToValidate="TextBox5" runat="server" ErrorMessage="Enter Mobile Number" Text="*"></asp:RequiredFieldValidator>
      </td>
       <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" placeholder="Parents Mobile" MaxLength="10"></asp:TextBox>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
      ControlToValidate="TextBox6" ErrorMessage="Enter A Valid Mobile Number" 
    ValidationExpression="[0-9]{10}" Text="*"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  ControlToValidate="TextBox6" runat="server" ErrorMessage="Enter Parent's Mobile" Text="*"></asp:RequiredFieldValidator>
      </td>
      </tr>
      <tr><td><asp:TextBox ID="TextBox7" runat="server" placeholder="Birth Date DD/MM/YYYY"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7"  ControlToValidate="TextBox7" runat="server" ErrorMessage="Enter Date of Birth" Text="*"></asp:RequiredFieldValidator></td></tr>
      <tr>
      <td>
      <h3>Gender</h3>
      <asp:DropDownList ID="DropDownList4" runat="server" Width="100px">
          <asp:ListItem Value="0">Select</asp:ListItem>
          <asp:ListItem Value="1">Male</asp:ListItem>
          <asp:ListItem Value="2">Female</asp:ListItem>
          </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator13"  ControlToValidate="DropDownList4" InitialValue="0" runat="server" ErrorMessage="Please Select Gender" Text="*"></asp:RequiredFieldValidator>
       </td>
       </tr>
       </table>
       <table>
       <div class="reg_section password">
       <td><h3>Your Password</h3></td>
       <tr><td><asp:TextBox ID="TextBox8" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8"  ControlToValidate="TextBox8" runat="server" ErrorMessage="Enter Password" Text="*"></asp:RequiredFieldValidator>
      </td>
       <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox9" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9"  ControlToValidate="TextBox9" runat="server" ErrorMessage="Confirm Your Password" Text="*"></asp:RequiredFieldValidator>
      <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Mismatch" ControlToCompare="TextBox8" ControlToValidate="TextBox9" Text="*"></asp:CompareValidator>
       </td>
       </tr>
       </table>
       <table>
       <tr>
       <td class="auto-style1">
      <h3>College</h3>
      <asp:DropDownList ID="DropDownList1" runat="server" Width="275px">
          <asp:ListItem Value="0">----College----</asp:ListItem>
          <asp:ListItem Value="1">L.S. Raheja</asp:ListItem>
          <asp:ListItem Value="2">Mithibai College</asp:ListItem>
          <asp:ListItem Value="3">Thakur College of Science &amp; Commerce</asp:ListItem>
          <asp:ListItem Value="4">H.R. College</asp:ListItem>
          <asp:ListItem Value="5">Narsee Monjee College</asp:ListItem>
           </asp:DropDownList> <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="DropDownList1" InitialValue="0" runat="server" ErrorMessage="Please Select Your College" Text="*"></asp:RequiredFieldValidator>
      </td>
      </tr>
        </table>
          <table>
      <tr>
      <td class="style1"><h3>Course</h3>
      <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="100px">
          <asp:ListItem Value="0">Select</asp:ListItem>
          <asp:ListItem Value="1">Bca</asp:ListItem>
          <asp:ListItem Value="2">BSc.IT</asp:ListItem>
          <asp:ListItem Value="3">BSc.CS</asp:ListItem>
          </asp:DropDownList>&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="DropDownList2"  InitialValue="0" runat="server" ErrorMessage="Please Select Course" Text="*"></asp:RequiredFieldValidator>
      </td>
      <td><h3>Year</h3>
      <asp:DropDownList ID="DropDownList3" runat="server" Height="35px" Width="125px">
          <asp:ListItem Value="0">Select</asp:ListItem>
          <asp:ListItem Value="1">First Year</asp:ListItem>
          <asp:ListItem Value="2">Second Year</asp:ListItem>
          <asp:ListItem Value="3">Third Year</asp:ListItem>
          </asp:DropDownList>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="DropDownList3" InitialValue="0" runat="server" ErrorMessage="Please Select Year" Text="*"></asp:RequiredFieldValidator>
      </td></tr>
      
      </table>
      </div>
       <p class="terms">
           <label>
           I accept Terms & Condition
        </label>
        </p>
      <p class="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Button ID="Button1" runat="server" Text="Sign Up" 
              onclick="Button1_Click"></asp:Button>
             
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"></asp:ValidationSummary>
    </p>
        </div>
    </form>
</body>
</html>
