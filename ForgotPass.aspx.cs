using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Net.Mail;

public partial class ForgotPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedValue == "1")
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;


            string strSelect = "SELECT Email,UserName,Password FROM StudentDB1 WHERE Email='" + TextBox1.Text + "'";
            SqlCommand command = new SqlCommand();
            command.Connection = con;
            command.CommandType = CommandType.Text;
            command.CommandText = strSelect;

            SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
            email.Value = TextBox1.Text.Trim().ToString();
            command.Parameters.Add(email);


            //Create Dataset to store results and DataAdapter to fill Dataset
            DataSet dsPwd = new DataSet();
            SqlDataAdapter dAdapter = new SqlDataAdapter(command);
            con.Open();
            dAdapter.Fill(dsPwd);
            con.Close();
            if (dsPwd.Tables[0].Rows.Count > 0)
            {
                MailMessage loginInfo = new MailMessage();
                loginInfo.From = new MailAddress("avanishyadav713@gmail.com", "@vanish123");
                loginInfo.To.Add(TextBox1.Text);

                loginInfo.Subject = "Forgot Password Information";

                loginInfo.Body = "Dear User,<br /><br />It's always a pleasure to help you out. We have just received Retrieve Password request from you.<br /><br />Here are your sign-in details:<br /><br />Username: " + dsPwd.Tables[0].Rows[0]["UserName"] + "<br><br>Password: " + dsPwd.Tables[0].Rows[0]["Password"] + "<br /><br />Warm Regards,<br /><br />Customer Support Team<br /><br />For any further support, you can reach us at HD.com";
                loginInfo.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new System.Net.NetworkCredential("avanishyadav713@gmail.com", "@vanish123");
                smtp.Send(loginInfo);
                Label1.Text = "Password is sent to you email id, You can now login with your credentials ";
            }
            else
            {
                Label1.Text = "Email Address Not Registered";
            }

        }
         if (DropDownList1.SelectedValue == "2")
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;


            string strSelect = "SELECT Email,UserName,Password FROM FacultyDB WHERE Email='" + TextBox1.Text + "'";
            SqlCommand command = new SqlCommand();
            command.Connection = con;
            command.CommandType = CommandType.Text;
            command.CommandText = strSelect;

            SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
            email.Value = TextBox1.Text.Trim().ToString();
            command.Parameters.Add(email);

            //Create Dataset to store results and DataAdapter to fill Dataset
            DataSet dsPwd = new DataSet();
            SqlDataAdapter dAdapter = new SqlDataAdapter(command);
            con.Open();
            dAdapter.Fill(dsPwd);
            con.Close();
            if (dsPwd.Tables[0].Rows.Count > 0)
            {
                MailMessage loginInfo = new MailMessage();
                loginInfo.From = new MailAddress("avanishyadav713@gmail.com");
                loginInfo.To.Add(TextBox1.Text);
                loginInfo.Subject = "Forgot Password Information";

                loginInfo.Body = "Dear Faculty,<br /><br />It's always a pleasure to help you out. We have just received Retrieve Password request from you.<br /><br />Here are your sign-in details:<br /><br />Username: " + dsPwd.Tables[0].Rows[0]["UserName"] + "<br><br>Password: " + dsPwd.Tables[0].Rows[0]["Password"] + "<br /><br />Warm Regards,<br /><br />Customer Support Team<br /><br />For any further support, you can reach us at www.spteducation.com";
                loginInfo.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new System.Net.NetworkCredential("avanishyadav713@gmail.com", "@vanish123");
                smtp.Send(loginInfo);
                Label1.Text = "Password is sent to you email id,you can now login with your credentials  ";
            }
            else
            {
                Label1.Text = "Email Address Not Registered";
            }

        }
        
        
        }

    }