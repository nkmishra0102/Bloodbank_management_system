<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<% String s= request.getParameter("username");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/buraj","root","nk0102");
	Statement st=con.createStatement();
	int i=0;
	i=st.executeUpdate("insert into ex(pass) values('"+s+"')");
}
catch (Exception e)
{
	out.print(e);
}
	%>
</body>
</html>