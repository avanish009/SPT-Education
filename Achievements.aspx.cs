using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Achievements : System.Web.UI.Page
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