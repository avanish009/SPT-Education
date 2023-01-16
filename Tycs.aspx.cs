using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tycs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {

            LinkButton1.Text = "Login";
            Label1.Visible = false;


        }
        else if (Session["user"].ToString() == "Admin")
        {

            Label1.Visible = true;
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";

        }

        else if (Session["user"] != null)
        {
            LinkButton1.Text = "Sign Out";
            Label2.Text = Session["user"].ToString();
            Label1.Visible = false;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}