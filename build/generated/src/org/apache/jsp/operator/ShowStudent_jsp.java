package org.apache.jsp.operator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class ShowStudent_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    Class.forName("com.mysql.jdbc.Driver");
    
    String path="jdbc:mysql://localhost:3306/feemanagement";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(path, dbuser, dbpass);
    
    String sql="select * from st_data";
    
    PreparedStatement p1=cn.prepareStatement(sql);
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String a,b,c,d;
        int e=r1.getInt("s_id");
        a=r1.getString("name");
        b=r1.getString("address");
        c=r1.getString("contact");
        d=r1.getString("email");
 
      out.write("\n");
      out.write(" <h3>");
      out.print( e);
      out.write('.');
      out.write(' ');
      out.print( a );
      out.write("</h3>\n");
      out.write(" <p>Address: ");
      out.print( b );
      out.write("<br/></p>\n");
      out.write(" <p>Contact: ");
      out.print( c);
      out.write("</p>\n");
      out.write(" <p>Email: ");
      out.print( d );
      out.write("</p>\n");
      out.write("\n");
      out.write(" <form method=\"post\" action=\"View.jsp\">\n");
      out.write("     <input type=\"hidden\" name=\"h1\" value=\"");
      out.print( e );
      out.write("\"/>\n");
      out.write("     <button type=\"submit\">View Details</button>     \n");
      out.write(" </form>\n");
      out.write("    ");
      out.write("    \n");

    }   

      out.write('\n');
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
