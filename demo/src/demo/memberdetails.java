package demo;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class memberdetails extends HttpServlet {
public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException
{
	String username;
	username=request.getParameter("uname");
	response.setContentType("text/html");
	PrintWriter out;
	
	out = response.getWriter();
	
	out.println(username);
}
}
