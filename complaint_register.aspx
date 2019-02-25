<%@ Page Language="C#" AutoEventWireup="true" CodeFile="complaint_register.aspx.cs" Inherits="complaint_register" %>

 <!DOCTYPE HTML>
 
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
							
							
          <li> <h3><a>Hello Mr.<%=Session["uname"] %></a><a href="index.html">Logout</a></h3></li>
                            
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
          <h2><a href="#">Complaint Register</a></h2>
           <form id="form1" runat="server">
    <div>
    <p>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    </p>
        <p style="width: 484px">
            Search By Mobile No:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Search" />
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" Height="134px" style="margin-top: 19px" Width="751px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="complaint_type" HeaderText="complaint_type" SortExpression="complaint_type" />
                    <asp:BoundField DataField="house_no" HeaderText="house_no" SortExpression="house_no" />
                    <asp:BoundField DataField="phoneno" HeaderText="phoneno" SortExpression="phoneno" />
                    <asp:BoundField DataField="complaint_text" HeaderText="complaint_text" SortExpression="complaint_text" />
                    <asp:BoundField DataField="date_of_complaint" HeaderText="date_of_complaint" SortExpression="date_of_complaint" />
                    <asp:BoundField DataField="allocated_date" HeaderText="allocated_date" SortExpression="allocated_date" />
                    <asp:BoundField DataField="completion_date" HeaderText="completion_date" SortExpression="completion_date" />
                    <asp:BoundField DataField="complaint_allocated_to" HeaderText="complaint_allocated_to" SortExpression="complaint_allocated_to" />
                    <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <EmptyDataTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>a</asp:ListItem>
                        <asp:ListItem>b</asp:ListItem>
                        <asp:ListItem>c</asp:ListItem>
                        <asp:ListItem>d</asp:ListItem>
                    </asp:DropDownList>
                </EmptyDataTemplate>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [complaint] WHERE [cid] = @cid" InsertCommand="INSERT INTO [complaint] ([complaint_type], [house_no], [phoneno], [complaint_text], [date_of_complaint], [allocated_date], [completion_date], [complaint_allocated_to], [remarks]) VALUES (@complaint_type, @house_no, @phoneno, @complaint_text, @date_of_complaint, @allocated_date, @completion_date, @complaint_allocated_to, @remarks)" SelectCommand="SELECT [cid], [complaint_type], [house_no], [phoneno], [complaint_text], [date_of_complaint], [allocated_date], [completion_date], [complaint_allocated_to], [remarks],[status] FROM [complaint] WHERE (([date_of_complaint] = @date_of_complaint)) order by status desc" UpdateCommand="UPDATE [complaint] SET [complaint_type] = @complaint_type, [house_no] = @house_no, [phoneno] = @phoneno, [complaint_text] = @complaint_text, [date_of_complaint] = @date_of_complaint, [allocated_date] = @allocated_date, [completion_date] = @completion_date, [complaint_allocated_to] = @complaint_allocated_to, [remarks] = @remarks ,[status]=@status WHERE [cid] = @cid">
                <DeleteParameters>
                    <asp:Parameter Name="cid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="complaint_type" Type="String" />
                    <asp:Parameter Name="house_no" Type="String" />
                    <asp:Parameter Name="phoneno" Type="String" />
                    <asp:Parameter Name="complaint_text" Type="String" />
                    <asp:Parameter Name="date_of_complaint" Type="String" />
                    <asp:Parameter Name="allocated_date" Type="String" />
                    <asp:Parameter Name="completion_date" Type="String" />
                    <asp:Parameter Name="complaint_allocated_to" Type="String" />
                    <asp:Parameter Name="remarks" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1/27/2019" Name="date_of_complaint" SessionField="date1" Type="String" />
                    
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="complaint_type" Type="String" />
                    <asp:Parameter Name="house_no" Type="String" />
                    <asp:Parameter Name="phoneno" Type="String" />
                    <asp:Parameter Name="complaint_text" Type="String" />
                    <asp:Parameter Name="date_of_complaint" Type="String" />
                    <asp:Parameter Name="allocated_date" Type="String" />
                    <asp:Parameter Name="completion_date" Type="String" />
                    <asp:Parameter Name="complaint_allocated_to" Type="String" />
                    <asp:Parameter Name="remarks" Type="String" />
                    <asp:Parameter Name="status" />
                    <asp:Parameter Name="cid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
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