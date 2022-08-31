 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.sql.*" %>
<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}



.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.button3:hover {
  background-color: #f44336;
  color: white;
}




</style>
</head>
<body>

<% 
String name= request.getParameter("username");


String bank= request.getParameter("bankname");

String quan=request.getParameter("quantity");


 try {
	 

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","nk0102");
	Statement st=con.createStatement();
	ResultSet rs;
	int i= st.executeUpdate("insert into userprofile(username,bname,amount) values('"+name+"','"+bank+"','"+quan+"')");
    if(i==1)
    {
    	out.println("profile has been updated successfully");
    }
    else
    {
    	out.println("error");
    }
    con.close();
}
catch(SQLException e)
{
	System.out.println(e);
}
%>
</body><br>
<a href="profileupdate.jsp"><button class="button button3">Update Another Profile</button></a>
<br>
<a href="adminhome.jsp"><button class="button button3">Go To Home</button></a>
</html>