<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@page import="java.sql.*"%>

<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="home.css">
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}
th{
background-color: red;}

tr:nth-child(even) {background-color: orange;}
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
<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>Name</th>
      <th>Date</th>
      <th>Address</th>
      <th>City</th>
      <th>Contact</th>
    </tr>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from camp;");
	while(rs.next())
	{
%>
<tr>
      <td><%= rs.getString("name") %></td>
      <td><%= rs.getString("date") %></td>
      <td><%= rs.getString("address") %></td>
      <td><%= rs.getString("city") %></td>
      <td><%= rs.getString("contact") %></td>
     
    </tr>
<% } %>
</table>
 </div>
<% con.close();
st.close();}

    catch(Exception e){
        out.print(e);%><br><%
    }
 
   
    %>
   
</body>
</html>