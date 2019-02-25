// Register Module for CLient
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class complaint_register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();   // Mapping with Sql Server Backend
    SqlCommand com = new SqlCommand();
    SqlDataAdapter adap = new SqlDataAdapter();
    DataSet d = new DataSet();                            //Data Set Object 

    protected void Page_Load(object sender, EventArgs e)
    {
         
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //DataBind Source Connection String
        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=COMPLAINT;Integrated Security=True";
        com.CommandType = CommandType.Text;
        com.CommandText = "insert into clientlogin values('"+ TextBox1.Text+"','"+TextBox2.Text+"','"+ TextBox3.Text+"','"+ TextBox4.Text+"')";
        adap.InsertCommand = com;
        com.Connection = con;
        try
        {
            con.Open();
            com.ExecuteNonQuery();  // execution of Query to fetch Object 

        }
        catch (Exception e2)
        {
        }
    }
}