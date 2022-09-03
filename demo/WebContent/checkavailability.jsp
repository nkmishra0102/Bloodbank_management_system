<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@page import="java.sql.*,java.util.*"%>
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
      <th>Blood Bank Name</th>
      <th>A+</th>
      <th>A-</th>
      <th>B+</th>
      <th>B-</th>
      <th>O+</th>
      <th>O-</th>
      <th>AB+</th>
      <th>AB-</th>
     </tr> 

<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood", "root", "root");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select *from availability where bname='"+id+"';");
rs.next();
%>
<tr>
      <td><%= rs.getString(1) %></td>
      <td><%= rs.getString(2) %></td>
      <td><%= rs.getString(3) %></td>
      <td><%= rs.getString(4) %></td>
      <td><%= rs.getString(5) %></td>
      <td><%= rs.getString(6) %></td>
      <td><%= rs.getString(7) %></td>
      <td><%= rs.getString(8) %></td>
      <td><%= rs.getString(9) %></td>
      
    </tr>
    </table>
 </div>
<% }
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>