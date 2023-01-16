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

public partial class StudentReg : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection (WebConfigurationManager.ConnectionStrings["sptdb"].ConnectionString);
        con.Open();

        
        string strUsername = "SELECT UserName FROM StudentDB1 WHERE UserName='" + TextBox3.Text+"'";
        string strSelect = "SELECT Email FROM StudentDB1 WHERE Email='" + TextBox4.Text+"'";
        SqlCommand command = new SqlCommand();
        command.Connection = con;
        command.CommandType = CommandType.Text;
        command.CommandText = strSelect;
        DataSet dsEmail = new DataSet();
        SqlDataAdapter dAdapter = new SqlDataAdapter(command);
        dAdapter.Fill(dsEmail);

        command.CommandText = strUsername;
        DataSet dsUser = new DataSet();
        SqlDataAdapter dAdap = new SqlDataAdapter(command);
        dAdap.Fill(dsUser);

        if ((dsEmail.Tables[0].Rows.Count > 0) || (dsUser.Tables[0].Rows.Count > 0))
        {
            Label1.Text = "Username or Email ID is Already registered Kindly Sign Up with another Username or Email ID";
        }

        else
        {
            string query = "insert into StudentDB1(FirstName, LastName, UserName, Email, Mobile, ParentMobile, BirthDate, Gender, Password, College, Course, Year, UserType) values('" + TextBox1.Text + "','" + TextBox2.Text + "' , '" + TextBox3.Text + "','" + TextBox4.Text + "' , '" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList4.SelectedItem + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + DropDownList3.SelectedItem + "','Student');";
            SqlCommand cmd1 = new SqlCommand(query, con);
            cmd1.ExecuteNonQuery();
            Response.Redirect("SignIn.aspx");
            con.Close();
        }

    }
   
}