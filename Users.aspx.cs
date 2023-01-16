using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["UserType"] == null)
        {

            LinkButton1.Text = "Login";
            Response.Redirect("SignIn.aspx");
            Label1.Visible = false;

        }
        else if (Session["UserType"].ToString() == "Admin")
        {

            Label1.Text = "Welcome";
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";

        }

        else if (Session["UserType"] != null)
        {
            LinkButton1.Text = "Sign Out";
            Label2.Text = Session["user"].ToString();
            Label1.Text = "Welcome";
        }

        if (!Page.IsPostBack)
        {

            //BindData();
            BindData2();

        }

        

        
    }

    //public void BindData()
    //{

    //    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = "Select * from StudentDB1";

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

    //}

    //protected void Grid_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    //{

    //    Grid.CurrentPageIndex = e.NewPageIndex;

    //    BindData();

    //}

    //protected void Grid_EditCommand(object source, DataGridCommandEventArgs e)
    //{

    //    Grid.EditItemIndex = e.Item.ItemIndex;

    //    BindData();

    //}

    //protected void Grid_CancelCommand(object source, DataGridCommandEventArgs e)
    //{

    //    Grid.EditItemIndex = -1;

    //    BindData();

    //}

    //protected void Grid_DeleteCommand(object source, DataGridCommandEventArgs e)
    //{
    //    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);

    //    SqlCommand cmd = new SqlCommand();
    //    cmd.Connection = con;

    //    string FirstName = (string)Grid.DataKeys[(int)e.Item.ItemIndex];

    //    cmd.CommandText = "Delete from StudentDB1 where FirstName='" + FirstName + "'";

    //    cmd.Connection.Open();

    //    cmd.ExecuteNonQuery();

    //    cmd.Connection.Close();

    //    Grid.EditItemIndex = -1;

    //    BindData();

    //}

    //protected void Grid_UpdateCommand(object source, DataGridCommandEventArgs e)
    //{

    //    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
    //    SqlCommand cmd = new SqlCommand();

    //    cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[0].Controls[0]).Text;
        
    //    cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[1].Controls[0]).Text;

    //    cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[2].Controls[0]).Text;

    //    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[3].Controls[0]).Text;

    //    cmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[4].Controls[0]).Text;

    //    cmd.Parameters.Add("@ParentMobile", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[5].Controls[0]).Text;

    //    cmd.Parameters.Add("@Birthdate", SqlDbType.Date).Value = ((TextBox)e.Item.Cells[6].Controls[0]).Text;

    //    cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[7].Controls[0]).Text;

    //    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[8].Controls[0]).Text;

    //    cmd.Parameters.Add("@College", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[9].Controls[0]).Text;

    //    cmd.Parameters.Add("@Course", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[10].Controls[0]).Text;

    //    cmd.Parameters.Add("@Year", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[11].Controls[0]).Text;

    //    //cmd.Parameters.Add("@Attendance", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[12].Controls[0]).Text;

    //    //cmd.Parameters.Add("@Date", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[12].Controls[0]).Text;


    //    //cmd.Parameters.Add("@Pos", SqlDbType.VarChar).Value = DateTime.Now.ToString();
      

    //    cmd.CommandText = "Update StudentDB set FirstName=@FirstName, LastName=@LastName, UserName=@UserName, Email=@Email, Mobile=@Mobile, ParentMobile=@ParentMobile, Birthdate=@Birthdate, Gender=@Gender, Password=@Password, College=@College, Course=@Course, Year=@Year where FirstName=@FirstName";

    //    cmd.Connection = con;

    //    cmd.Connection.Open();

    //    cmd.ExecuteNonQuery();

    //    cmd.Connection.Close();

    //    Grid.EditItemIndex = -1;

    //    BindData();

    //}

    

    //public void BindData1()
    //{

    //    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
    //    SqlCommand cmd = new SqlCommand();


    //    cmd.CommandText = "Select * from StudentDB1";

    //    cmd.Connection = con;
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);

    //    DataSet ds = new DataSet();
    //    try
    //    {
    //        con.Open();
    //        SqlDataAdapter adapter = new SqlDataAdapter(cmd.CommandText, con);
    //        da.Fill(ds);


    //    }
    //    catch
    //    {
    //    }

    //    da = new SqlDataAdapter(cmd);

    //    da.Fill(ds);

    //    con.Open();

    //    cmd.ExecuteNonQuery();

    //    Grid.DataSource = ds;

    //    Grid.DataBind();

    //    con.Close();

    //}

    public void BindData2()
    {

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from FacultyDB";

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

        Grid1.DataSource = ds;

        Grid1.DataBind();

        con.Close();

    }

    protected void Grid_PageIndexChanged1(object source, DataGridPageChangedEventArgs e)
    {

        Grid1.CurrentPageIndex = e.NewPageIndex;

        BindData2();

    }

    protected void Grid_EditCommand1(object source, DataGridCommandEventArgs e)
    {

        Grid1.EditItemIndex = e.Item.ItemIndex;

        BindData2();

    }

    protected void Grid_CancelCommand1(object source, DataGridCommandEventArgs e)
    {

        Grid1.EditItemIndex = -1;

        BindData2();

    }

    protected void Grid_DeleteCommand1(object source, DataGridCommandEventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        string FirstName = (string)Grid1.DataKeys[(int)e.Item.ItemIndex];

        cmd.CommandText = "Delete from FacultyDB where FirstName='" + FirstName + "'";

        cmd.Connection.Open();

        cmd.ExecuteNonQuery();

        cmd.Connection.Close();

        Grid1.EditItemIndex = -1;

        BindData2();

    }

    protected void Grid_UpdateCommand1(object source, DataGridCommandEventArgs e)
    {

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand();

        cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[0].Controls[0]).Text;

        cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[1].Controls[0]).Text;

        cmd.Parameters.Add("@UserName", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[2].Controls[0]).Text;

        cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[3].Controls[0]).Text;

        cmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[4].Controls[0]).Text;

        cmd.Parameters.Add("@Birthdate", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[5].Controls[0]).Text;

        cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[6].Controls[0]).Text;

        cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[7].Controls[0]).Text;

        //cmd.Parameters.Add("@Education", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[8].Controls[0]).Text;

        //cmd.Parameters.Add("@Experties", SqlDbType.VarChar).Value = ((TextBox)e.Item.Cells[9].Controls[0]).Text;


        //cmd.Parameters.Add("@Pos", SqlDbType.VarChar).Value = DateTime.Now.ToString();


        cmd.CommandText = "Update FacultyDB set FirstName=@FirstName, LastName=@LastName, UserName=@UserName, Email=@Email, Mobile=@Mobile, Birthdate=@Birthdate, Gender=@Gender, Password=@Password where FirstName=@FirstName";

        cmd.Connection = con;

        cmd.Connection.Open();

        cmd.ExecuteNonQuery();

        cmd.Connection.Close();

        Grid1.EditItemIndex = -1;

        BindData2();

    }



    public void BindData3()
    {

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand();


        cmd.CommandText = "Select * from FacultyDB";

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

        Grid1.DataSource = ds;

        Grid1.DataBind();

        con.Close();

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
    protected void Grid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Grid_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

 

}