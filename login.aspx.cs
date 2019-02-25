// login module 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    SqlDataAdapter adap = new SqlDataAdapter();
    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();
    DataSet d = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Data Mapping Connection String

        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=COMPLAINT;Integrated Security=True";
        com.CommandType = CommandType.Text;
        com.CommandText = "select * from admin_login where username='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'";
        adap.SelectCommand = com;
        com.Connection = con;
        try
        {
            con.Open();
            adap.Fill(d);
            if (d.Tables[0].Rows.Count > 0)
            {
                // session variable for Logged User

                Session["uname"] = TextBox1.Text;
                Response.Redirect("complaint_register.aspx");
            }
        }
        catch (Exception e2)
        {
        }
    }
}