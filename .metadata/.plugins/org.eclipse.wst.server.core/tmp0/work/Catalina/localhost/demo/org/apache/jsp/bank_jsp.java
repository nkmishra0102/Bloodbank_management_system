/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.27
 * Generated at: 2020-09-10 04:41:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class bank_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"home.css\">\r\n");
      out.write("<style>\r\n");
      out.write("table {\r\n");
      out.write("  border-collapse: collapse;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("th, td {\r\n");
      out.write("  text-align: left;\r\n");
      out.write("  padding: 8px;\r\n");
      out.write("}\r\n");
      out.write("th{\r\n");
      out.write("background-color: red;}\r\n");
      out.write("\r\n");
      out.write("tr:nth-child(even) {background-color: orange;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");

try
{
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	response.setHeader("Pragma","no-cache");	


if(session.getAttribute("key")== null)
{
	response.sendRedirect("memberlogin.html");
}
}
catch(Exception e)
{
	
}

      out.write("\r\n");
      out.write("<div class=\"topbar\">\r\n");
      out.write("    <img src=\"images/bloodicon.jpg\" height=\"120px\" width=\"120px\" id=\"logo-image\">\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("    <span>Blood Bank Of India</span>\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("<ul>\r\n");
      out.write("  <li><a href=\"home.jsp\">Home</a></li>\r\n");
      out.write("  <li><a href=\"#\">Contact Us</a></li>\r\n");
      out.write("  <li><a href=\"aboutus.html\">About Us</a></li>\r\n");
      out.write("  <li><a href=\"faq.html\">FAQ's</a></li>\r\n");
      out.write("   <li><a href=\"memberlogin.html\">Member Login</a></li>\r\n");
      out.write("\r\n");
      out.write("  <li><form><button class=\"nav-button\">Admin Login</button></form></li>\r\n");
      out.write("  <li><form action=\"logout.jsp\"><button class=\"nav-button\" type=\"submit\" value=\"submit\">Log Out</button></form></li>\r\n");
      out.write("</ul>\r\n");
      out.write("<div style=\"overflow-x:auto;\">\r\n");
      out.write("  <table>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <th>Name</th>\r\n");
      out.write("      <th>Address</th>\r\n");
      out.write("      <th>City</th>\r\n");
      out.write("      <th>Mail</th>\r\n");
      out.write("      <th>Phone</th>\r\n");
      out.write("      <th>Availability</th>\r\n");
      out.write("    </tr>\r\n");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","nk0102");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("call new_procedure");
	while(rs.next())
	{

      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("      <td>");
      out.print( rs.getString("name") );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print( rs.getString("address") );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print( rs.getString("city") );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print( rs.getString("mail") );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print( rs.getString("phone") );
      out.write("</td>\r\n");
      out.write("      <td><a href=\"checkavailability.jsp?id=");
      out.print(rs.getString("name") );
      out.write("\"><button type=\"button\" class=\"delete\">Check</button></a></td>\r\n");
      out.write("    </tr>\r\n");
 } 
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write(" </div>\r\n");
 con.close();
st.close();}

    catch(Exception e){
        out.print(e);
      out.write("<br>");

    }
 
   
    
      out.write("\r\n");
      out.write("   \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
