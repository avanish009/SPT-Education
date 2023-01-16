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
public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserType"] == null)
        {

            LinkButton1.Text = "Login";
            Response.Redirect("SignIn.aspx");
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
            GridView1.Visible = true;
           
        }
        else if (Session["UserType"].ToString() == "Faculty")
        {
            LinkButton2.Visible = false;
            LinkButton3.Visible = true;
            Label1.Text = "Welcome";
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";
            GridView1.Visible = true;

        }
        else if (Session["UserType"].ToString() == "Student")
        {
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            GridView1.Visible = false;
            Label1.Text = "Welcome";
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";
            
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
  
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "1")
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
            con.Open();

            string query = "INSERT into FeedbackDB(Name, Email, Role, Feedback) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem + "','" + TextBox3.Text + "')";
            SqlCommand cmd1 = new SqlCommand(query, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Feedback.aspx");
            Label3.Text = "Thank You for your Valuable Feedback";
            

        }

        else if (DropDownList1.SelectedValue == "2")
        {

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
            con.Open();

            string query = "INSERT into FeedbackDB(Name, Email, Role, Feedback) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem + "','" + TextBox3.Text + "')";
            SqlCommand cmd1 = new SqlCommand(query, con);
            cmd1.ExecuteNonQuery();
            con.Close();        
            Response.Redirect("Feedback.aspx");
            Label3.Text = "Thank You for your Valuable Feedback";


        }
    }
    
}