package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005flogin1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/public_header.jsp");
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
      out.write("    <body>\n");
      out.write("        ");
      out.write("<link href=\"css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("<link href=\"css/style.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/flexslider.css\" type=\"text/css\" media=\"screen\" />\n");
      out.write("\n");
      out.write("<!--web-fonts-->\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Oranienbaum' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!--//web-fonts-->\n");
      out.write("<!-- js -->\n");
      out.write("<script src=\"js/jquery-1.11.1.min.js\"></script> \n");
      out.write("<script src=\"js/modernizr.custom.js\"></script>\n");
      out.write("<script src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("      var xmlhttp;\n");
      out.write("            function fetch_search(value)\n");
      out.write("            {\n");
      out.write("                xmlhttp = new XMLHttpRequest();\n");
      out.write("                xmlhttp.open(\"GET\", \"autocomplete.jsp?value=\"+value, true);\n");
      out.write("                xmlhttp.onreadystatechange =go8;\n");
      out.write("                xmlhttp.send();\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function go8()\n");
      out.write("            {\n");
      out.write("\n");
      out.write("                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)\n");
      out.write("                {\n");
      out.write("\n");
      out.write("                    document.getElementById(\"search_h\").innerHTML = xmlhttp.responseText;\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }\n");
      out.write("    \n");
      out.write("    \n");
      out.write("</script>\n");
      out.write("<!-- //js -->\n");
      out.write("<!--banner-->\n");
      out.write("<div class=\"top-nav\" style=\"background: rgb(25,52,81)\">\n");
      out.write("    <!--navigation-->\n");
      out.write("    <div class=\"top-nav\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"navbar-header logo\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <h1 class=\"wow fadeInUp animated\" data-wow-delay=\".5s\"><a href=\"index.html\">B-W-E</a></h1>\n");
      out.write("            </div>\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                <ul class=\"nav navbar-right\" style=\"position: relative\">\n");
      out.write("                    <li><a href=\"index.jsp\" class=\"active\"><span data-hover=\"Home\">Home</span></a></li>\n");
      out.write("                    <li class=\"dropdown-menu-right\"><a class=\"dropdown-menu-right\" data-toggle=\"dropdown\" href=\"#\">Login</a>\n");
      out.write("                    <ul class=\"dropdown-menu\">\n");
      out.write("                        <li><a href=\"user_login.jsp\" class=\"active\" style=\"color: black\"><span data-hover=\"User Login\">User Login</span></li>\n");
      out.write("                        <li><a href=\"service_provider_login.jsp\" class=\"active\" style=\"color: black\"><span data-hover=\"Service Provider Login\">Service Provider Login</span></li>\n");
      out.write("                    </ul>\n");
      out.write("                    </li>\n");
      out.write("                   <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Register</a>\n");
      out.write("                    <ul class=\"dropdown-menu\">\n");
      out.write("                        <li><a href=\"user_signup.jsp\" class=\"active\" style=\"color: black\"><span data-hover=\"User Sign Up\">User Sign Up</span></li>\n");
      out.write("                        <li><a href=\"service_provider_signup.jsp\" class=\"active\" style=\"color: black\"><span data-hover=\"Service Provider Sign Up\">Service Provider Sign Up</span></li>\n");
      out.write("                    </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li><a href=\"index.jsp#about\" class=\"scroll\"><span data-hover=\"About\">About</span></a></li>\n");
      out.write("                    <li><a href=\"index.jsp#contact\" class=\"scroll\"><span data-hover=\"About\">Contact us</span></a></li>\n");
      out.write("                    <li>\n");
      out.write("                         <input type=\"text\" class=\"form-control\" name=\"search\" placeholder=\"search service provider\" onkeyup=\"fetch_search(this.value)\"/>\n");
      out.write("                         <div id=\"search_h\" style=\"position: absolute;top: 50px;left: 0px;background-color: white;width: 200px;z-index: 1000;\"></div>\n");
      out.write("                    </li>\n");
      out.write("                  \n");
      out.write("                </ul>\n");
      out.write("                <div class=\"clearfix\"> </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\t\n");
      out.write("</div>\n");
      out.write("    <!--//navigation-->\n");
      out.write("\n");
      out.write("        <div class=\"container\" style=\"min-height: 523px\">\n");
      out.write("            <center>\n");
      out.write("                <form class=\"form-horizontal\" action=\"admin_login2.jsp\" method=\"post\" >\n");
      out.write("                    \n");
      out.write("                        <h1>Admin Login</h1>\n");
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
      out.write("                    <br>  <center>  <a href=\"admin_forgotpassword1.jsp\">Forgot Password</a></center>\n");
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
