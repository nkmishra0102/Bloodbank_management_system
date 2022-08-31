<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
  <li><a href="contact.html">Contact Us</a></li>
  <li><a href="aboutus.html">About Us</a></li>
  <li><a href="faq.html">FAQ's</a></li>
  
  <li style="float: right;"><a href="logout.jsp">Log Out</a></li>
  <li style="float: right;"><a href="memberlogin.html">Member Login</a></li> 
  <li style="float: right;"><a href="adminhome.jsp">Admin Login</a></li>
</ul>
<div class="main">
<a href="camp.jsp"><button class="button-2 button1">Blood Camps</button></a>
<a href="bank.jsp"><button class="button-2 button2" style="text-shadow: 2px 2px 5px red;">Blood Banks With Availability</button></a>
<div class="news">
  <img class="mySlides" src="images/news1.jpg" width="525px" height="605px">
  <img class="mySlides" src="images/news2.jpg" width="525px" height="605px">
  <img class="mySlides" src="images/news3.jpg" width="525px" height="605px">
</div>
<a href="register.html"><button class="button-2 button3" style="text-shadow: 2px 2px 5px red;">Register As Donor</button></a>
<a href="profile.jsp"><button class="button-2 button4" style="text-shadow: 2px 2px 5px red;">Track Your Profile</button></a>
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