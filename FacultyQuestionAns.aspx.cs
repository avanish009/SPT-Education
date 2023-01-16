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

public partial class FacultyQuestionAns : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] == null)
        {
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            Response.Redirect("SignIn.aspx");
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

        if (!Page.IsPostBack)
        {

            BindData();

        }
    }
    public void BindData()
    {

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from ContactFaculty";

        cmd.Connection = con;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        try
        {
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd.CommandText, con);
            da.Fill(ds);
            con.Close();

        }
        catch
        {
            con.Close();
        }



        con.Open();
        cmd.ExecuteNonQuery();

        Grid.DataSource = ds;

        Grid.DataBind();

        con.Close();

    }

    protected void Grid_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {

        Grid.CurrentPageIndex = e.NewPageIndex;

        BindData();

    }

    protected void Grid_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        string Name = (string)Grid.DataKeys[(int)e.Item.ItemIndex];

        cmd.CommandText = "Delete from ContactFaculty where Name='" + Name + "'";

        cmd.Connection.Open();

        cmd.ExecuteNonQuery();

        cmd.Connection.Close();

        Grid.EditItemIndex = -1;

        BindData();

    }



    public void BindData1()
    {

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand();


        cmd.CommandText = "Select * from ContactFaculty";

        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        try
        {
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd.CommandText, con);
            da.Fill(ds);


        }
        catch
        {
        }

        da = new SqlDataAdapter(cmd);

        da.Fill(ds);

        con.Open();

        cmd.ExecuteNonQuery();

        Grid.DataSource = ds;

        Grid.DataBind();

        con.Close();

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
        con.Open();

        string query = "INSERT into Faculty_Response(Question, Email, Answer ) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        SqlCommand cmd1 = new SqlCommand(query, con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Label3.Text = "Answer Submitted Succesfully";

        SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con1;


        string strSelect = "SELECT Question,Email,Answer FROM Faculty_Response WHERE Email='" + TextBox2.Text + "'";
        SqlCommand command = new SqlCommand();
        command.Connection = con1;
        command.CommandType = CommandType.Text;
        command.CommandText = strSelect;

        SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        email.Value = TextBox1.Text.Trim().ToString();
        command.Parameters.Add(email);


        //Create Dataset to store results and DataAdapter to fill Dataset
        DataSet dsPwd = new DataSet();
        SqlDataAdapter dAdapter = new SqlDataAdapter(command);
        con1.Open();
        dAdapter.Fill(dsPwd);
        con.Close();
        if (dsPwd.Tables[0].Rows.Count > 0)
        {
            MailMessage loginInfo = new MailMessage();
            loginInfo.From = new MailAddress("avanishyadav713@gmail.com", "SPT Education");
            loginInfo.To.Add(TextBox2.Text);

            loginInfo.Subject = "Response for your Question";

            loginInfo.Body = "Dear User,<br /><br />Thanking you for contacting SPT Education Team. We are always here to Answer your questions.<br /><br />Here is your Response from SPT Faculty Member:<br /><br />Question: " + dsPwd.Tables[0].Rows[0]["Question"] + "<br><br>Answer: " + dsPwd.Tables[0].Rows[0]["Answer"] + "<br /><br />Regards,<br />SPT Faculty";
            loginInfo.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new System.Net.NetworkCredential("avanishyadav713@gmail.com", "@vanish123");
            smtp.Send(loginInfo);
        }

    }
    protected void Grid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["user"] == null)
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
    
