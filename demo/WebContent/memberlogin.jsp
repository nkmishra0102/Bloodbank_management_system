<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@page import="java.sql.*"%>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="home.css">

</head>
<body>
<div class="topbar">
		<img src="images/bloodicon.jpg" height="120px" width="120px" id="logo-image">
	
	
		<span>Blood Bank Of India</span>
	</div>
	<ul>
  <li><a href="home.jsp">Home</a></li>
  <li><a href="#">Contact Us</a></li>
  <li><a href="aboutus.html">About Us</a></li>
  <li><a href="faq.html">FAQ's</a></li>
  <li><form><button class="nav-button">Member Login</button></form></li>
  <li><form><button class="nav-button">Admin Login</button></form></li>
  <li><form><button class="nav-button">Log Out</button></form></li>
</ul>
<%
String unam=request.getParameter("uname");
String pass=request.getParameter("psw");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","nk0102");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select username,password from mem_details where username='"+unam+"';");
	rs.next();
	String a=rs.getString(1);
	String b=rs.getString(2);
	
		if(unam.equals(a) && pass.equals(b))
		{
			
			session.setAttribute("key",unam);
			response.sendRedirect("home.jsp");
		}
		else
		{
			response.sendRedirect("memberlogin.html");
		}
	
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>