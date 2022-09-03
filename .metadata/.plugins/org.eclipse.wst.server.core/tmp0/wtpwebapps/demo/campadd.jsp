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
String name= request.getParameter("campname");


String address= request.getParameter("address");

String phno=request.getParameter("phone");
String city= request.getParameter("city");

String dob=request.getParameter("dob");


 try {
	 response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
		response.setHeader("Pragma","no-cache");	

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","root");
	Statement st=con.createStatement();
	ResultSet rs;
	int i= st.executeUpdate("insert into camp(name,date,address,city,contact) values('"+name+"','"+dob+"','"+address+"','"+city+"','"+phno+"')");
    if(i==1)
    {
    	response.sendRedirect("campupdate.jsp");
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