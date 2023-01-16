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


public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] == null)
        {
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton1.Text = "Login";
            Label1.Visible = false;
            Label2.Visible = false;


        }
        else if (Session["UserType"].ToString() == "Admin")
        {
            LinkButton2.Visible = true;
            LinkButton3.Visible = false;
            Label1.Text = "Welcome";
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";

        }
        else if (Session["UserType"].ToString() == "Faculty")
        {
            LinkButton2.Visible = false;
            LinkButton3.Visible = true;
            Label1.Text = "Welcome";
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";

        }
        else if (Session["UserType"].ToString() == "Student")
        {

            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            Label1.Text = "Welcome";
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedValue == "1")
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
            con.Open();

            string query = "INSERT into ContactAdmin(Name, Email, Mobile, Subject, Queries) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            SqlCommand cmd1 = new SqlCommand(query, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Label3.Text = "Thank You for Contacting us, We will get in touch with you as soon as possible";
            
        }

        else if(DropDownList1.SelectedValue == "2")
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
            con.Open();

            string query = "INSERT into ContactFaculty(Name, Email, Mobile, Subject, Queries) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            SqlCommand cmd1 = new SqlCommand(query, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Label3.Text = "Thank You for Contacting us, We will get in touch with you as soon as possible";
            
        }
        

    }
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["UserType"] == null)
        {
            Response.Redirect("SignIn.aspx");

        }
        else
        {
            Session["UserType"] = null;
            LinkButton1.Text = "Login";
            Response.Redirect("Index.aspx");

        }
    }
}