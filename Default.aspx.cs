// default page for Main Module
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlDataAdapter adap = new SqlDataAdapter();
    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();
    DataSet d = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        String str = DateTime.Today.ToShortDateString();

        Label1.Text = str;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //data source for Connect String 
        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=COMPLAINT;Integrated Security=True";
        com.CommandType = CommandType.Text;
        //DML Query for New Record
        com.CommandText = "insert into complaint (complaint_type,house_no,phoneno,complaint_text,date_of_complaint) values('" + DropDownList1.SelectedItem.ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Today.ToShortDateString() + "')";
        adap.InsertCommand = com;
        com.Connection = con;
        try
        {
            con.Open();
            com.ExecuteNonQuery();     // Query Binding
        }
        catch (Exception e2)
        {
        }
        GridView1.Visible = true; 

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx"); // Header Redirection
    }
}