using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Timetable1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("SignIn.aspx");
            LinkButton1.Text = "Login";
            Label1.Visible = false;
            Label2.Visible = false;
            txtSub.Visible = false;
            txtDate.Visible = false;
            txtproff.Visible = false;
            txttime.Visible = false;
            Button1.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label7.Visible = false;

        }
        else if (Session["UserType"].ToString() == "Admin")
        {
            LinkButton2.Visible = true;
            LinkButton3.Visible = false;
            Label1.Text = "Welcome";
            Label2.Text = Session["UserType"].ToString();
            LinkButton1.Text = "Sign Out";
            txtSub.Visible = true;
            txtDate.Visible = true;
            txtproff.Visible = true;
            txttime.Visible = true;
            Button1.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label7.Visible = true;
        }
        else if (Session["UserType"].ToString() == "Faculty")
        {
            LinkButton2.Visible = false;
            LinkButton3.Visible = true;
            Label1.Text = "Welcome";
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";
            txtSub.Visible = true;
            txtDate.Visible = true;
            txtproff.Visible = true;
            txttime.Visible = true;
            Button1.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label7.Visible = true;
        }
        else if (Session["UserType"].ToString() == "Student")
        {

            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            Label1.Text = "Welcome";
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";
            txtSub.Visible = false;
            txtDate.Visible = false;
            txtproff.Visible = false;
            txttime.Visible = false;
            Button1.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label7.Visible = false;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
        con.Open();

        string query = "INSERT into TimetableDB (Date, Time, ProfName, Subject) values('" + txtDate.Text + "','" + txttime.Text + "','" + txtproff.Text + "','"+txtSub.Text+"')";
        SqlCommand cmd1 = new SqlCommand(query, con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Label8.Text = "Timetable Submitted Succesfully";

    }
    //protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}
    //protected void Grid_DeleteCommand(object source, DataGridCommandEventArgs e)
    //{
    //    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);

    //    SqlCommand cmd = new SqlCommand();
    //    cmd.Connection = con;

    //    string Name = (string)Grid.DataKeys[(int)e.Item.ItemIndex];

    //    cmd.CommandText = "Delete from TimetableDB where Name='" + Name + "'";

    //    cmd.Connection.Open();

    //    cmd.ExecuteNonQuery();

    //    cmd.Connection.Close();

    //    Grid.EditItemIndex = -1;

    //    BindData();

    //}

    //private void BindData()
    //{
    //    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = "Select * from TimetableDB";

    //    cmd.Connection = con;

    //    SqlDataAdapter da = new SqlDataAdapter(cmd);

    //    DataSet ds = new DataSet();
    //    try
    //    {
    //        con.Open();
    //        SqlDataAdapter adapter = new SqlDataAdapter(cmd.CommandText, con);
    //        da.Fill(ds);
    //        con.Close();

    //    }
    //    catch
    //    {
    //        con.Close();
    //    }



    //    con.Open();
    //    cmd.ExecuteNonQuery();

    //    Grid.DataSource = ds;

    //    Grid.DataBind();

    //    con.Close();
    
}