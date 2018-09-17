package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class add_005fsubcategories_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
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
      out.write("        <div class=\"container\" style=\"min-height:523px\">\n");
      out.write("        <form action=\"./MultiFileUploader3\" method=\"post\" enctype=\"multipart/form-data\" class=\"form-horizontal\">\n");
      out.write("            <center>  <h2>Add Subcategory</h2></center>\n");
      out.write("            <br>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Enter Subcategory</label>\n");
      out.write("                    <div class=\"col-sm-10\"><input type=\"text\" class=\"form-control\" name=\"sub_cat\" /></div></div>\n");
      out.write("           <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Enter Description</label>\n");
      out.write("                    <div class=\"col-sm-10\"><textarea name=\"desc\" class=\"col-sm-12\"/></textarea></div></div>\n");
      out.write("             <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Select Photo</label>\n");
      out.write("                    <div class=\"col-sm-10\"><input type=\"file\" class=\"form-control\" name=\"img\" /></div></div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Select Category</label>\n");
      out.write("                    <div class=\"col-sm-10\">\n");
      out.write("            <select name=\"cat\" class=\"col-sm-12\">\n");
      out.write("                <option hidden>--select--</option>\n");
      out.write("                ");

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs = stmt.executeQuery("select c_name from category");
                    while (rs.next()) {
                        String s = rs.getString("c_name");
                
      out.write("\n");
      out.write("                <option value=\"");
      out.print(s);
      out.write('"');
      out.write('>');
      out.print(s);
      out.write("</option>\n");
      out.write("                ");
}
                
      out.write("\n");
      out.write("            </select></div><br><br><br>\n");
      out.write("            <center>    <input type=\"submit\" value=\"Add\" style=\"background: rgb(25,52,81);color:white\"  class=\"btn btn-success\"/></center>\n");
      out.write("        </form>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("                   ");
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
      out.write("</body>\n");
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
