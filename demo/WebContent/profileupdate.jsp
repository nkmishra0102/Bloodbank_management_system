<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@page import="java.sql.*"%>

<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="home.css">
<style type="text/css">
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



 <div class="form_width">
  <form action="profileupdate2.jsp" method="post">
  <p>ADD BLOOD DONATION DETAILS</p>
    <label for="name">User Name</label>
    <input type="text" id="campname" name="username" placeholder="User name.." required>

    
   
    

   
    
    <label for="city">Bank Name</label>
    <input type="text" id="city" name="bankname" placeholder="Bank Name.." required>
    <label for="address">Quantity in ml</label>
    <input type="text" id="address" name="quantity" placeholder="Quantity in (ml).." required>
   
    <button class="loginbutton"type="submit" value="submit ">Submit</button>
  </form>
</div>
   
</body>
</html>