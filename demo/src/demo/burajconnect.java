package demo;
import java.sql.*;

public class burajconnect {

	public static void main(String[] args){
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila?autoReconnect=true&useSSL=false","root","nk0102");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from actor");
		while(rs.next())
		
			
		System.out.println(rs.getString(2));
			
		
con.close();

	}
		
	catch (Exception e)
	{
		
	}
	}
}
