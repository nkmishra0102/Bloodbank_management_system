<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
<% try
{
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	response.setHeader("Pragma","no-cache");	


if(session.getAttribute("key2")== null)
{
	response.sendRedirect("adminlogin.html");
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
  
  <li style="float: right;"><a href="logout.jsp">Log Out</a></li>
  <li style="float: right;"><a href="memberlogin.html">Member Login</a></li> 
</ul>
<div class="main">
<a href="campupdate.jsp"><button class="button-2 button1">Update Blood Camps</button></a>
<a href="bankupdate.jsp"><button class="button-2 button2" style="text-shadow: 2px 2px 5px red;">Update Blood Banks</button></a>
<div class="news">
  <img class="mySlides" src="images/news1.jpg" width="525px" height="605px">
  <img class="mySlides" src="images/news2.jpg" width="525px" height="605px">
  <img class="mySlides" src="images/news3.jpg" width="525px" height="605px">
</div>
<a href="#"><button class="button-2 button3" style="text-shadow: 2px 2px 5px red;">Update Blood Banks Availability</button></a>
<a href="profileupdate.jsp"><button class="button-2 button4" style="text-shadow: 2px 2px 5px red;">Update Profile</button></a>
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
<div class="th-bar">
  <img src="images/news4.jpg" height="300px" width="30%">
  <div class="th-bar-par"><h1>Why donate blood?</h1><p>Our nation requires 4 crore units of blood while only 40 lakh units are available.Every two seconds someone needs blood.There is no substitute for human blood. It cannot be manufactured.Blood donation is extremely noble deed, yet there is scarcity of regular blood donors across india.We focus on creating and expanding a virtual army of blood donating volunteers who can be searched or contacted by family of patients in time of need.</p></div>
</div>
</body>
</body>
</html>