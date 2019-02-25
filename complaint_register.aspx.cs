// Moodule for Complaint Register 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class complaint_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            String str = Session["uname"].ToString();

        }
        catch (Exception e1)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        string str = Calendar1.SelectedDate.ToShortDateString(); // Type Caste For Date Type 
        Session["date1"]=str;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        // sql query to fetch phone no 
        SqlDataSource1.SelectCommand = "select * from complaint where phoneno='" + TextBox1.Text + "'";
    }
}