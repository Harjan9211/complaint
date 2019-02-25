// Client Login Module 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class complaint_register : System.Web.UI.Page
{
    // Sql Connection Variable 

    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();
    SqlDataAdapter adap = new SqlDataAdapter();
    DataSet d = new DataSet();
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
        // Mapping Variable Connection String 
        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=COMPLAINT;Integrated Security=True";
        com.CommandType = CommandType.Text;
        com.CommandText = "select * from clientlogin where username='"+TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        adap.SelectCommand = com;
        com.Connection = con;
        try
        {
            con.Open();
            adap.Fill(d);
            if (d.Tables[0].Rows.Count > 0)
            {
                Session["cname"] = TextBox1.Text;
                Response.Redirect("Default.aspx");


            }

        }
        catch (Exception e2)
        {
        }
    }
}