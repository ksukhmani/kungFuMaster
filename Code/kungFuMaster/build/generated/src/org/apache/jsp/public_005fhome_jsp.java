package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class public_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
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

      out.write("  \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Book My Helper</title>\n");
      out.write("        <style>\n");
      out.write("            .main\n");
      out.write("            {\n");
      out.write("                width: 100%;\n");
      out.write("                height: 90%;\n");
      out.write("            }\n");
      out.write("            .d1\n");
      out.write("            {\n");
      out.write("                width: 100%;\n");
      out.write("                height: 100%;\n");
      out.write("                transition:  all 1s ease;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .d1:hover\n");
      out.write("            {\n");
      out.write("                transform: scale(1.2);\n");
      out.write("                transition:  all 1s ease;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("\n");
      out.write("\n");
      out.write("            var xmlhttp;\n");
      out.write("            function fetch(value)\n");
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
      out.write("                    document.getElementById(\"searchdiv\").innerHTML = xmlhttp.responseText;\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link href=\"bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function ()\n");
      out.write("            {\n");
      out.write("                //If u want to change Interval of corousal\n");
      out.write("                $('.carousel').carousel({\n");
      out.write("                    interval: 3000\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("\n");
      out.write("            <div class=\"container-fluid\" style=\"border: solid 1px red;\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>                        \n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\">Book My Helper</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"active\"><a href=\"#\">Home</a></li>\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Page 1 <span class=\"caret\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a href=\"#\">Page 1-1</a></li>\n");
      out.write("                                <li><a href=\"#\">Page 1-2</a></li>\n");
      out.write("                                <li><a href=\"#\">Page 1-3</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li><a href=\"#\">Page 2</a></li>\n");
      out.write("                        <li><a href=\"#\">Page 3</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"#\"><span class=\"glyphicon glyphicon-user\"></span> Sign Up</a></li>\n");
      out.write("                        <li><a href=\"#\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <!-- Data Area -->\n");
      out.write("        <div class=\"\">    \n");
      out.write("            <h1></h1>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\" >\n");
      out.write("            <!-- Indicators -->\n");
      out.write("            <ol class=\"carousel-indicators\">\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\n");
      out.write("            </ol>\n");
      out.write("\n");
      out.write("            <!-- Wrapper for slides -->\n");
      out.write("            <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("                <div class=\"item active\">\n");
      out.write("                    <img src=\"corousal_images/beauty.jpg\" alt=\"Chania\" style=\"width:100% ;height:300px\" >\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"corousal_images/refinishing.jpg\" alt=\"Chania\" style=\"width:100% ;height:300px\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"corousal_images/repairs.jpg\" alt=\"Flower\" style=\"width:100% ;height:300px\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"corousal_images/tutor.jpg\" alt=\"Flower\" style=\"width:100% ;height:300px\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Left and right controls -->\n");
      out.write("            <a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span>\n");
      out.write("                <span class=\"sr-only\">Previous</span>\n");
      out.write("            </a>\n");
      out.write("            <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\">\n");
      out.write("                <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>\n");
      out.write("                <span class=\"sr-only\">Next</span>\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\" style=\"margin-top:60px;position:relative\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <div class=\"lead\">  <label class=\"col-sm-offset-2 col-sm-3\">Search Service Provider </label>\n");
      out.write("                    <div class=\"col-sm-5\"><input type=\"text\" class=\"form-control\" name=\"search\" placeholder=\"Search Service Provider Here\" onkeyup=\"fetch(this.value)\"/>\n");
      out.write("                    </div></div>\n");
      out.write("            </div>\n");
      out.write("            <div  id=\"searchdiv\" style=\"position:absolute;left:560px;top:53px;background-color:white;width:500px;z-index:100\"></div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\" style=\"margin-top:60px; padding-left: 30px;background-color:cornsilk;z-index:-10\">\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                ");

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs = stmt.executeQuery("select * from category");
                    while (rs.next()) {
                        String c_name = rs.getString("c_name");
                        String photo = rs.getString("photo");

                
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"col-sm-3\">\n");
      out.write("                    <div> \n");
      out.write("                        <div style=\"overflow: hidden\" class=\"main\">\n");
      out.write("                            <img  src=\"");
      out.print(photo);
      out.write("\" class=\"d1\" style=\"width:200px; height: 200px; border: solid 1px black\"/></div>\n");
      out.write("                        <a href=\"home_subcat_forcat.jsp?name=");
      out.print(c_name);
      out.write('"');
      out.write('>');
      out.print(c_name);
      out.write("</a>\n");
      out.write("                    </div></div>\n");
      out.write("                    ");
}
                    
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("       ");
      out.write("<div class=\"container-fluid\" style=\"background: rgb(25,52,81);padding: 0px;margin: 0px;\">\n");
      out.write("    <div class=\"row\" style=\"padding: 0px;margin: 0px\">\n");
      out.write("        <div class=\"col-sm-7\" style=\"padding: 15px\">\n");
      out.write("            <p style=\"color: #24FFED;font-size: 20px\">Guru Nanak Dev University,Amritsar</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-5\" style=\"padding: 15px\">\n");
      out.write("            <p style=\"color:#24FFED;font-size: 20px\">Developed By:Komal Nayyar</p>\n");
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
