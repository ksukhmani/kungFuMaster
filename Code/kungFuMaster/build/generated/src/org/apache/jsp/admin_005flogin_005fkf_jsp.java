package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005flogin_005fkf_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header_admin_kf.jsp");
    _jspx_dependants.add("/footer.jsp");
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"bootstrap-3.3.7-dist/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background: url('kung_fu2.jpg')no-repeat; background-position: center; height: 100%; background-size: cover;\">\n");
      out.write("        ");
      out.write("<link href=\"css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("<link href=\"css/style.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--web-fonts-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"top-nav\" style=\"background: rgb(25,52,81)\">\n");
      out.write("    \n");
      out.write("    <!--navigation-->\n");
      out.write("    <div class=\"top-nav\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            \n");
      out.write("                \n");
      out.write("               \n");
      out.write("               <center> <label style=\"color:white;font-size: 50px\" ><b>KUNG FU</b></label></center>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("    </div>\t\n");
      out.write("</div>\n");
      out.write("    <!--//navigation-->\n");
      out.write("\n");
      out.write("        <div class=\"container\" style=\"min-height: 523px\">\n");
      out.write("            <center>\n");
      out.write("                <form class=\"form-horizontal\" action=\"admin_login_kf2.jsp\" method=\"post\" >\n");
      out.write("                    \n");
      out.write("                    <h1 style=\"color: black; font-weight: bold; font-size: 60px; margin-top: 20px;\">Admin <label style=\"color: #0cd0c0\">Login</label></h1>\n");
      out.write("                    \n");
      out.write("                        <br>\n");
      out.write("                    <div class=\"form-group has-feedback\">\n");
      out.write("                         <div class=\"input-group \">\n");
      out.write("                            <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("                            <input id=\"email\" type=\"text\" class=\"form-control\" name=\"en\" placeholder=\"Email\" required>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group has-feedback\">\n");
      out.write("                        <div class=\"input-group \">\n");
      out.write("                            <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-lock\"></i></span>\n");
      out.write("                            <input id=\"password\" type=\"password\" class=\"form-control\" name=\"ps\" placeholder=\"Password\" required>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <br>    <center><input type=\"submit\" value=\"Login\" class=\"btn btn-success\" style=\"background: rgb(25,52,81);color:white\"/></center>\n");
      out.write("                    <br>  <center>  <a href=\"forgot_ps_kf1.jsp\">Forgot Password</a></center>\n");
      out.write("                </form>\n");
      out.write("                ");

                    String m = request.getParameter("msg");

                    if (m != null) {

                
      out.write("  \n");
      out.write("                <label style=\"color: red\">");
      out.print( m);
      out.write("</label>\n");
      out.write("\n");
      out.write("                ");

                    }

                
      out.write("\n");
      out.write("\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("<div class=\"container-fluid\" style=\"background: rgb(25,52,81);padding: 0px;margin: 0px;\">\n");
      out.write("    <div class=\"row\" style=\"padding: 0px;margin: 0px\">\n");
      out.write("        <div class=\"col-sm-7\" style=\"padding: 15px\">\n");
      out.write("            <p style=\"color: #24FFED;font-size: 20px\">Guru Nanak Dev University,Amritsar</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-5\" style=\"padding: 15px\">\n");
      out.write("            <p style=\"color:#24FFED;font-size: 20px\">Developed By:Komal Nayyar & Jobandeep kaur</p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
