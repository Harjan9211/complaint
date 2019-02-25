<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

 
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
          <h2><a href="#">Admin Login</a></h2>
         <form id="form1" runat="server">
                                    <div>
									<table border="1">
                                        <tr>
                                            <td>Username:</td><td>
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

                                        </tr>
                                        <tr><td>Password:</td><td>
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td></tr>
                                        <tr><td colspan="2">
                                            <asp:Button ID="Button1" runat="server" Text="Authentify" OnClick="Button1_Click" /></td></tr>
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