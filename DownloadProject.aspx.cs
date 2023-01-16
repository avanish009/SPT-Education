using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class DownloadProject : System.Web.UI.Page
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
            FillGrid();
        }
        else if (Session["UserType"].ToString() == "Faculty")
        {
            LinkButton2.Visible = false;
            LinkButton3.Visible = true;
            Label1.Text = "Welcome";
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";
            FillGrid();

        }
        else if (Session["UserType"].ToString() == "Student")

        {
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;            
            FileUpload1.Visible = false;
            Label1.Text = "Welcome";
            Label2.Text = Session["user"].ToString();
            LinkButton1.Text = "Sign Out";
            Button1.Visible = false;
        }
    }
    public void FillGrid()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("File", typeof(string));
        dt.Columns.Add("Size", typeof(string));
        dt.Columns.Add("Type", typeof(string));

        foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data/Projects/")))
        {
            FileInfo fi = new FileInfo(strFile);

            dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension));
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/Projects/") + FileUpload1.FileName);
        }

        DataTable dt = new DataTable();
        dt.Columns.Add("File", typeof(string));
        dt.Columns.Add("Size", typeof(string));
        dt.Columns.Add("Type", typeof(string));

        foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data/Projects/")))
        {
            FileInfo fi = new FileInfo(strFile);

            dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension));
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();


    }

    private string GetFileTypeByExtension(string extension)
    {
       switch(extension.ToLower())
    {
    case ".doc":
    case ".docx":
    return "Word Document";

    case ".xlsx":
    case ".xls":
    return "Excel Sheet";

    case ".txt":
    return "Text Document";

    case ".jpg":
    case ".png":
    return "Image";

    case ".pdf":
    return "PDF Document";

    default:
    return "Unknown";
    }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("Content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/Data/Projects/") + e.CommandArgument);
            Response.End();
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
