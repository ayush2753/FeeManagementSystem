package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/h1.jsp");
  }

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

      out.write("<!--<h1>Login</h1>\n");
      out.write("<form method=\"post\" action=\"CheckLogin.jsp\">\n");
      out.write("<p>Email <input type=\"email\" name=\"l1\" id=\"s1\"/></p>\n");
      out.write("<p>Password <input type=\"password\" name=\"l2\" id=\"s2\" /></p>\n");
      out.write("<button type=\"submit\" name=\"btn\" >Login</button>\n");
      out.write("</form>-->\n");
      out.write("<!--<html>\n");
      out.write("<head>\n");
      out.write("    <link href=\"static/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <img src=\"static/images/images.jpg\" width=\"1100\" height=\"117\"/>\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-expand-lg bg-body-tertiary\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("  \n");
      out.write("    <a class=\"navbar-brand\" href=\"#\">Navbar</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarColor04\" aria-controls=\"navbarColor04\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarColor04\">\n");
      out.write("      <ul class=\"navbar-nav me-auto\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" href=\"#\">Home\n");
      out.write("            <span class=\"visually-hidden\">(current)</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"\">Features</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"#\">Pricing</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"#\">About</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\" href=\"#\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">Dropdown</a>\n");
      out.write("          <div class=\"dropdown-menu\">\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">Action</a>\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">Another action</a>\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">Something else here</a>\n");
      out.write("            <div class=\"dropdown-divider\"></div>\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">Separated link</a>\n");
      out.write("          </div>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      <form class=\"d-flex\">\n");
      out.write("        <input class=\"form-control me-lg-2\" type=\"search\" placeholder=\"Search\">\n");
      out.write("        <button class=\"btn btn-secondary my-2 my-sm-0\" type=\"submit\">Search</button>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  </nav>-->\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <link href=\"static/css/New folder/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write(" \n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-expand-lg bg-dark\" data-bs-theme=\"dark\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"#\">FEE Portal</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarColor02\" aria-controls=\"navbarColor02\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarColor02\">\n");
      out.write("      <ul class=\"navbar-nav me-auto\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" href=\"#\">Home\n");
      out.write("            <span class=\"visually-hidden\">(current)</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"#\">Student</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"#\">ADMIN</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"#\">LOGOUT</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\" href=\"#\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">Dropdown</a>\n");
      out.write("          \n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      <form class=\"d-flex\">\n");
      out.write("        <input class=\"form-control me-sm-2\" type=\"search\" placeholder=\"Search\">\n");
      out.write("        <button class=\"btn btn-secondary my-2 my-sm-0\" type=\"submit\">Search</button>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write(" ");
      out.write("\n");
      out.write("<section class=\"vh-100\">\n");
      out.write("    <div class=\"container-fluid h-custom\">\n");
      out.write("      <div class=\"row d-flex justify-content-center align-items-center h-100\">\n");
      out.write("        <div class=\"col-md-9 col-lg-6 col-xl-5\">\n");
      out.write("          <img src=\"https://img.lovepik.com/element/45009/8997.png_860.png\"/>\n");
      out.write("            class=\"img-fluid\" alt=\"Sample image\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-8 col-lg-6 col-xl-4 offset-xl-1\">\n");
      out.write("            <form method=\"post\" action=\"CheckLogin.jsp\">\n");
      out.write("            <p style=\"font-size: 42px;\">LOGIN</p>\n");
      out.write("            <p style=\"font-size: 32px;\">SIGN IN</p>\n");
      out.write("            <div class=\"form-outline mb-4\">\n");
      out.write("              <input type=\"email\" id=\"form3Example3\" class=\"form-control form-control-lg\"\n");
      out.write("                     placeholder=\"Enter a valid email address\" name=\"t1\" />\n");
      out.write("              <label class=\"form-label\" for=\"form3Example3\">Email address</label>\n");
      out.write("            </div>\n");
      out.write("  \n");
      out.write("            \n");
      out.write("            <div class=\"form-outline mb-3\">\n");
      out.write("              <input type=\"password\" id=\"form3Example4\" class=\"form-control form-control-lg\"\n");
      out.write("                     placeholder=\"Enter password\" name=\"t2\"/>\n");
      out.write("              <label class=\"form-label\" for=\"form3Example4\">Password</label>\n");
      out.write("            </div>\n");
      out.write("  \n");
      out.write("            <div class=\"d-flex justify-content-between align-items-center\">\n");
      out.write("             \n");
      out.write("              <div class=\"form-check mb-0\">\n");
      out.write("                <input class=\"form-check-input me-2\" type=\"checkbox\" value=\"\" id=\"form2Example3\" />\n");
      out.write("                <label class=\"form-check-label\" for=\"form2Example3\">\n");
      out.write("                  Remember me\n");
      out.write("                </label>\n");
      out.write("              </div>\n");
      out.write("              <a href=\"#!\" class=\"text-body\">Forgot password?</a>\n");
      out.write("            </div>\n");
      out.write("  \n");
      out.write("            <div class=\"text-center text-lg-start mt-4 pt-2\">\n");
      out.write("              <button type=\"submit\" class=\"btn btn-primary btn-lg\"\n");
      out.write("                      style=\"padding-left: 2.5rem; padding-right: 2.5rem;\" name=\"b1\">Login</button>\n");
      out.write("              <p class=\"small fw-bold mt-2 pt-1 mb-0\">Don't have an account? <a href=\"#!\"\n");
      out.write("                  class=\"link-danger\">Register</a></p>\n");
      out.write("            </div>\n");
      out.write("  \n");
      out.write("          </form>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("  </section>");
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
