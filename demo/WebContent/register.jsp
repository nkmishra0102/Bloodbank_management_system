 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.sql.*" %>
<%@ include file="register.html" %>
</head>
<body>

<% 
String username= request.getParameter("username");

String password= request.getParameter("password");
String name= request.getParameter("name");
String address= request.getParameter("address");
String bg= request.getParameter("bg");
String phno=request.getParameter("phone");
String city= request.getParameter("city");
String sex= request.getParameter("sex");
String dob=request.getParameter("dob");
String mail= request.getParameter("mail");

 try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","root");
	Statement st=con.createStatement();
	ResultSet rs;
	int i= st.executeUpdate("insert into mem_details(username,password,name,address,bg,phno,city,sex,dob,mail) values('"+username+"','"+password+"','"+name+"','"+address+"','"+bg+"','"+phno+"','"+city+"','"+sex+"','"+dob+"','"+mail+"')");
    if(i==1)
    {
    	response.sendRedirect("memberlogin.html");
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
</body>
</html>