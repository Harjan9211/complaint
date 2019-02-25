<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
 
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>WCSST 3</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script src="js/jquery-1.4.2.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.jcarousel.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/functions.js" type="text/javascript" charset="utf-8"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
<!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="header">
  <div class="shell">
    <h1><a href="#"><span>Hostel Complaint System</span></a></h1>
    <div id="navigation">
      <ul>
                            <li class="active"><a href="index.html">Homepage</a></li>
							
							<li><a href="login.aspx">Admin Panel</a></li>
                                <li><h3><a>Hello mr.<%=Session["cname"] %></a>|<a href="index.html">logout!</a></h3></li>
          
      </ul>
    </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div class="slider-container">
  <div class="shell">
    <div class="slider">
      <div class="slider-holder">
        <ul>
          <li><img src="css/images/first.jpg" alt="" /></li>
          <li><img src="css/images/second.jpg" alt="" /></li>
          <li><img src="css/images/first.jpg" alt="" /></li>
          <li><img src="css/images/second.jpg" alt="" /></li>
        </ul>
      </div>
      <a href="#" class="slider-prev notext">prev</a> <a href="#" class="slider-next notext">next</a>
      <div class="slider-nav">
        <ul>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#" class="active">3</a></li>
          <li><a href="#">4</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<div class="container">
  <div class="shell">
    <div class="main">
      <div class="cols">
        <div class="col">
          <div class="post">
            <h2><a href="#">Who Are We?</a></h2>
            <p><strong>We are the Students</strong></p>
               <br />
              <br />
              <br />
              <br />
              <br />
          </div>
        </div>
        <div class="col">
          <div class="post">
            <h2><a href="#">What We Do ?</a></h2>
            <p><strong>We performed Secured Duty</strong></p>
               <br />
              <br />
              <br />
              <br />
              <br />
          </div>
        </div>
        <div class="col last-col">
          <div class="post">
            <h2><a href="#">Student Hostel Complaint</a></h2>
            <p><strong>It Facilitates the Students</strong></p>
              <br />
              <br />
              <br />
              <br />
              <br />

          </div>
        </div>
        <div class="cl">&nbsp;</div>
      </div>
      <div class="content">
        <div class="post">
          <h2><a href="#">New Complaint</a></h2>
          <form id="form1" runat="server">
    <div>
    <table border="1" width="800px" align="center">
        <tr><td><h1>Complaint Book</h1>      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>  </td></tr>
        <tr><td>Complaint Type:<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Civil</asp:ListItem>
            <asp:ListItem>Electrical</asp:ListItem>
            <asp:ListItem>House Keeping</asp:ListItem>
            <asp:ListItem>Estate</asp:ListItem>
            <asp:ListItem>HR</asp:ListItem>
            </asp:DropDownList></td></tr>
        <tr><td>Room No.<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            Phone No.<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" MaximumValue="9999999999999" MinimumValue="999999999" Type="Double"></asp:RangeValidator>
            </td></tr>

        <tr><td>Complaint Box:<asp:TextBox ID="TextBox3" runat="server" Height="101px" TextMode="MultiLine" Width="349px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td>
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reload" />
            </td></tr>
        <tr><td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="complaint_type" HeaderText="complaint_type" SortExpression="complaint_type" />
                    <asp:BoundField DataField="house_no" HeaderText="house_no" SortExpression="house_no" />
                    <asp:BoundField DataField="phoneno" HeaderText="phoneno" SortExpression="phoneno" />
                    <asp:BoundField DataField="complaint_text" HeaderText="complaint_text" SortExpression="complaint_text" />
                    <asp:BoundField DataField="date_of_complaint" HeaderText="date_of_complaint" SortExpression="date_of_complaint" />
                    <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [complaint_type], [house_no], [phoneno], [complaint_text], [date_of_complaint], [cid] FROM [complaint] where cid=(select max(cid) from complaint)"></asp:SqlDataSource>
        </td></tr>
    </table>
    </div>
    </form>
          <p> </p>
        </div>
      </div>
      <div class="sidebar">
        <div class="post">
          <h2><a href="#">College Level System</a></h2>
          <p>It is a College Level System</p>
        </div>
      </div>
      <div class="cl">&nbsp;</div>
    </div>
  </div>
</div>
<div class="footer">
  <div class="shell">
    <p class="lf">Copyright &copy; 2019 All Rights Reserved</p>
    <p class="rf"><a href="" target="_blank">Complait System</a> by Students</p>
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
<div align=center></div></body>
</html> 