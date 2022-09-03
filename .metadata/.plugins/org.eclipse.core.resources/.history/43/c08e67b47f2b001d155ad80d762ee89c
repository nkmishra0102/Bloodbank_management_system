<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page import="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="home.css">
<style type="text/css">
	h1{
		color: white;
  text-shadow: 2px 2px 4px #000000;
	}
	.username,.password,.name,.sex,.bloodgroup,.dob,.address,.city,.mail,.phone
	{
		width: 50%;
		margin: auto;
		height: 50px;
		background-color: orange;
		color: black;
		text-align: center;
		border-radius: 5px;
		box-shadow: 10px 10px 10px black;
        font-size: 20px;
	}
</style>
</head>
<body>
<%
try
{
	
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
if(session.getAttribute("key")== null)
{
	response.sendRedirect("memberlogin.html");
}
}
catch(Exception e)
{
	
}
%>
<div class="topbar">
		<img src="images/bloodicon.jpg" height="120px" width="120px" id="logo-image">
	
	
		<span>Blood Bank Of India</span>
	</div>
	
<ul>
   <li><a href="home.jsp">Home</a></li>
  <li><a href="#">Contact Us</a></li>
  <li><a href="aboutus.html">About Us</a></li>
  <li><a href="faq.html">FAQ's</a></li>
   <li><a href="memberlogin.html">Member Login</a></li>

  <li><form><button class="nav-button">Admin Login</button></form></li>
  <li><form action="logout.jsp"><button class="nav-button" type="submit" value="submit">Log Out</button></form></li>
</ul>
<%
try {
	String a= (String)session.getAttribute("key");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","nk0102");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from mem_details where username='"+a+"';");
	rs.next();
	
%>
<h1>LOGIN DETAILS</h1><hr>
<div class="username"><p style="padding-top: 10px;">Username:<%= rs.getString("username") %></p></div>
<div class="password"><p style="padding-top: 10px;">Password:<%= rs.getString("password") %></p></div>
<h1>PERSONAL DETAILS</h1><hr>
<div class="name"><p style="padding-top: 10px;">name:<%= rs.getString("name") %></p></div>
<div class="sex"><p style="padding-top: 10px;">Sex:<%= rs.getString("sex") %></p></div>
<div class="bloodgroup"><p style="padding-top: 10px;">Blood Group:<%= rs.getString("bg") %></p></div>
<div class="dob"><p style="padding-top: 10px;">Date Of Birth:<%= rs.getString("dob") %></p></div>
<h1>CONTACT DETAILS</h1><hr>
<div class="address"><p style="padding-top: 10px;">Address:<%= rs.getString("address") %></p></div>
<div class="city"><p style="padding-top: 10px;">City:<%= rs.getString("city") %></p></div>
<div class="mail"><p style="padding-top: 10px;">Mail Id:<%= rs.getString("mail") %></p></div>
<div class="phone"><p style="padding-top: 10px;">Phone Number:<%= rs.getString("phno") %></p></div>



<% con.close();
st.close();}

    catch(Exception e){
        out.print(e);%><br><%
    }
 
   
    %>
</body>
</html>