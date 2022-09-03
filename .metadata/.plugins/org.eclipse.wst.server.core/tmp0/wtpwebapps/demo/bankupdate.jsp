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
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=date], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

.loginbutton {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.loginbutton:hover {
  background-color: red;
}

.form_width {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 60%;
  margin: auto;
}
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
      <th>Name</th>
      
      <th>Address</th>
      <th>City</th>
      <th>Mail Id</th>
      <th>Contact</th>
      <th>Delete</th>
    </tr>
<%
try {
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	response.setHeader("Pragma","no-cache");	

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from blood_bank;");
	while(rs.next())
	{
%>
<tr>
      <td><%= rs.getString("name") %></td>
     
      <td><%= rs.getString("address") %></td>
      <td><%= rs.getString("city") %></td>
       <td><%= rs.getString("mail") %></td>
      <td><%= rs.getString("phone") %></td>
      <td><a href="deletebank.jsp?id=<%=rs.getString("name") %>"><button type="button" class="delete">Delete</button></a></td>
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
    <div class="form_width">
  <form action="bankadd.jsp" method="post">
  <p>ADD A BANK</p>
    <label for="name">Bank Name</label>
    <input type="text" id="campname" name="bankname" placeholder="Bank name.." required>

    
   
    

   
    
    <label for="city">City</label>
    <input type="text" id="city" name="city" placeholder="City.." required>
    <label for="address">Address</label>
    <input type="text" id="address" name="address" placeholder="Bank address.." required>
     <label for="city">MailId</label>
    <input type="text" id="city" name="mail" placeholder="Mail Id.." required>
    
    <label for="phone">Phone</label>
    <input type="text" id="phone" name="phone" placeholder="Bank phonenumber.." required>
    <button class="loginbutton"type="submit" value="submit ">Add Bank</button>
  </form>
</div>
   
</body>
</html>