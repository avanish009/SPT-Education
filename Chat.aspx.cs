using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.HtmlControls;

public partial class Chat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserType"] == null)
        {
            Response.Redirect("SignIn.aspx");
        }
        else if (Session["UserType"].ToString() == "Admin")
        {
            LinkButton2.Visible = true;
            LinkButton3.Visible = false;
            Label1.Text = "Welcome";
            Label2.Text = Session["UserType"].ToString();
            LinkButton1.Text = "Sign Out";

        }
        else if (Session["UserType"].ToString() == "Faculty")
        {
            LinkButton2.Visible = false;
            LinkButton3.Visible = true;
            Label1.Text = "Welcome";
            Label2.Text = Session["UserType"].ToString();
            LinkButton1.Text = "Sign Out";

        }
        else if (Session["UserType"].ToString() == "Student")
        {

            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            Label1.Text = "Welcome";
            Label2.Text = Session["UserType"].ToString();
            LinkButton1.Text = "Sign Out";

        }

        HtmlMeta h = new HtmlMeta();
        h.HttpEquiv = "Refresh";
        h.Content = "5;Chat.aspx";
        this.Page.Controls.Add(h);
        
        
        
        TextBox5.Enabled = false;
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
        con.Open();
        string get = "Select * from Chat";
        SqlCommand cmd = new SqlCommand(get, con);
        
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string Username = dr["Username"].ToString();
            string Chat = dr["Message"].ToString();
            TextBox5.Text = TextBox5.Text + Username + ":" + Chat + "\r\n";
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
        con.Open();

                string query = "INSERT into Chat(UserName, Message) values('" + Session["user"].ToString() + "','" + TextBox1.Text + "')";
        SqlCommand cmd1 = new SqlCommand(query, con);
        cmd1.ExecuteNonQuery();
      //  Response.Redirect("SignIn.aspx");
        con.Close();

        

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("SignIn.aspx");

        }
        else
        {
            Session["user"] = null;
            LinkButton1.Text = "Login";
            Response.Redirect("Index.aspx");

        }
    }
}