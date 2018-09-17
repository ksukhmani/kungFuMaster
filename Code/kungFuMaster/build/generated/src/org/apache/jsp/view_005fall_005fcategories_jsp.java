package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class view_005fall_005fcategories_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin_header.jsp");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"bootstrap-3.3.7-dist/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script>\n");
      out.write("            function go(name)\n");
      out.write("            {\n");
      out.write("                var ans = confirm(\"Are you sure you want to delete this row?\");\n");
      out.write("                if (ans)\n");
      out.write("                {\n");
      out.write("                    var xmlhttp = new XMLHttpRequest();\n");
      out.write("                    xmlhttp.open(\"GET\", \"delete_from_ajax.jsp?name=\"+name, true);\n");
      out.write("                    xmlhttp.onreadystatechange = function ()\n");
      out.write("                    {\n");
      out.write("                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)\n");
      out.write("                        {\n");
      out.write("                            document.getElementById(\"d1\").innerHTML = xmlhttp.responseText;\n");
      out.write("                            alert(\"Row Deleted\");\n");
      out.write("                        }\n");
      out.write("                    };\n");
      out.write("\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    xmlhttp.send();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
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
      out.write("                <h1 class=\"wow fadeInUp animated\" data-wow-delay=\".5s\"><a href=\"index.html\">B-I-H</a></h1>\n");
      out.write("            </div>\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                <ul class=\"nav navbar-right\">\n");
      out.write("                     <li><a href=\"admin_home.jsp\" class=\"active\"><span data-hover=\"Home\">Home</span></a></li>\n");
      out.write("                    <li><a href=\"admin_change_pass1.jsp\" class=\"scroll\"><span data-hover=\"Change Password\">Change Password</span></a></li>\n");
      out.write("                    <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Add</a>\n");
      out.write("                    <ul class=\"dropdown-menu\">\n");
      out.write("                        <li><a href=\"add_category1.jsp\" class=\"active\" style=\"color: black\"><span data-hover=\"Categories\">Categories</span></li>\n");
      out.write("                        <li><a href=\"add_subcategories.jsp\" class=\"active\" style=\"color: black\"><span data-hover=\"Subcategories\">Subcategories</span></li>\n");
      out.write("                    </ul>\n");
      out.write("                    </li>\n");
      out.write("                   <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">View</a>\n");
      out.write("                    <ul class=\"dropdown-menu\">\n");
      out.write("                        <li><a href=\"view_all_categories.jsp\" class=\"active\" style=\"color: black\"><span data-hover=\"Categories\">Categories</span></li>\n");
      out.write("                        <li><a href=\"view_all_sub_categories.jsp\" class=\"active\" style=\"color: black\"><span data-hover=\"Subcategories\">Subcategories</span></li>\n");
      out.write("                    </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li><a href=\"approve_block_sp.jsp\" class=\"scroll\"><span data-hover=\"Approve/Block Service Providers\">Approve/Block Service Providers</span></a></li>\n");
      out.write("                    <li><a href=\"admin_logout.jsp\" class=\"scroll\"><span data-hover=\"Contact\">Logout</span></a></li>\n");
      out.write("                  \n");
      out.write("                </ul>\n");
      out.write("                <div class=\"clearfix\"> </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\t\n");
      out.write("</div>\n");
      out.write("    <!--//navigation-->");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-8 col-sm-offset-2\">\n");
      out.write("                \n");
      out.write("                    <center>   <h1>View All Categories</h1></center>\n");
      out.write("                    <br>\n");
      out.write("                    <div id=\"d1\">\n");
      out.write("                        <table class=\"table table-hover\">\n");
      out.write("                            <thead class=\"\" style=\"background: rgb(25,52,81);color:white\">\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Photo</td>\n");
      out.write("                                    <td>Category Name</td>\n");
      out.write("                                    <td>Description</td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                ");

                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                                    ResultSet rs = stmt.executeQuery("select* from category");
                                    while (rs.next()) {
                                        String path = rs.getString("photo");
                                        String c_name = rs.getString("c_name");
                                        String description = rs.getString("description");

                                
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>\n");
      out.write("                                        <img src=\"");
      out.print(path);
      out.write("\" width=\"250\" height=\"175\"/>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        ");
      out.print(c_name);
      out.write("  \n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        ");
      out.print(description);
      out.write("   \n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"edit_cat.jsp?name=");
      out.print(c_name);
      out.write("\" class=\"btn btn-success\" style=\"background: rgb(25,52,81);color:white\">Edit</a>\n");
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a onClick=\"go('");
      out.print(c_name);
      out.write("')\" class=\"btn btn-success\" style=\"background: rgb(25,52,81);color:white\">Delete</a>\n");
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");

                                    }

                                
      out.write("\n");
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
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
