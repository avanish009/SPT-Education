using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedValue == "0")
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
            con.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = con;
            command.CommandText = ("Select Name FROM AdminDB WHERE[Name]='" + TextBox1.Text + "' AND [Password]= '" + TextBox2.Text + "'");
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows == true)
            {
                dr.Close();
                string a = "Select Name FROM AdminDB WHERE[Name]='" + TextBox1.Text + "'";
                command.CommandText = a;
                SqlDataReader d = command.ExecuteReader();
                d.Read();
                Session["user"] = d[0].ToString();
                Session["UserType"] = "Admin";
                Response.Redirect("Index.aspx");
            }

            else
            {
                Label1.Text = "Kindly Login with Registered Username & Password";
            }
        }
        else if(DropDownList1.SelectedValue == "1")
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
            con.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = con;
            command.CommandText = ("Select UserName FROM StudentDB1 WHERE[UserName]='" + TextBox1.Text +"' AND [Password]= '" + TextBox2.Text +"'");
            SqlDataReader dr = command.ExecuteReader();
            if(dr.HasRows == true)
            {
                dr.Close();
                string a = "Select UserType,FirstName FROM StudentDB1 WHERE[UserName]='"+ TextBox1.Text + "'";
                command.CommandText = a;
                SqlDataReader d = command.ExecuteReader();
                d.Read();
                Session["user"] = d[0].ToString();
                Session["UserType"] = "Student";
                Response.Redirect("Index.aspx");
            }

            else
            {
                Label1.Text = "Kindly Login with Registered Username & Password";
            }
          }
        

        else if(DropDownList1.SelectedValue == "2")
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
            con.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = con;
            command.CommandText = ("Select Username FROM FacultyDB WHERE[UserName]='" + TextBox1.Text +"' AND [Password]= '" + TextBox2.Text +"'");
            SqlDataReader dr = command.ExecuteReader();
            if(dr.HasRows == true)
            {
                dr.Close();
                string a = "Select UserType,FirstName FROM FacultyDB WHERE[UserName]='"+ TextBox1.Text + "'";
                command.CommandText = a;
                SqlDataReader d = command.ExecuteReader();
                d.Read();              
                Session["user"] = d[1].ToString();
                Session["UserType"] = "Faculty";
                Response.Redirect("Index.aspx");
            }

            else
            {
                Label1.Text = "Kindly Login with Registered Username & Password";
            }
          }

        
    }
}