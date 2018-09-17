package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("  <title>Bootstrap Case</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link href=\"bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\"/>\n");
      out.write("  <script src=\"bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js\"></script>\n");
      out.write("    <script src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("<nav class=\"navbar navbar-inverse navbar-fixed-top \">\n");
      out.write("    \n");
      out.write("    <div class=\"container-fluid\" style=\"border: solid 1px red;\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>                        \n");
      out.write("      </button>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"active\"><a href=\"admin_dashboard.jsp\">Home</a></li>\n");
      out.write("<!--        <li class=\"dropdown\">\n");
      out.write("          <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Page 1 <span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"#\">Page 1-1</a></li>\n");
      out.write("            <li><a href=\"#\">Page 1-2</a></li>\n");
      out.write("            <li><a href=\"#\">Page 1-3</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>-->\n");
      out.write("        <li><a href=\"admin_manage_department.jsp\">Manage Departments</a></li>\n");
      out.write("        <li><a href=\"admin_manage_teachers.jsp\">Manage Teachers</a></li>\n");
      out.write("        <li><a href=\"admin_add_course_fee_detail.jsp\">Add Course Fee Details</a></li>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a href=\"admin_change_password.jsp\"><span class=\"glyphicon glyphicon-user\"></span> Change Password</a></li>\n");
      out.write("        <li><a href=\"admin_logout.jsp\"><span class=\"glyphicon glyphicon-log-out\"></span> Log Out</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("</nav>\n");
      out.write("  \n");
      out.write("    <!-- Data Area -->\n");
      out.write("<div class=\"container\">\n");
      out.write("  \n");
      out.write("  </div>\n");
      out.write("    <br><br>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
