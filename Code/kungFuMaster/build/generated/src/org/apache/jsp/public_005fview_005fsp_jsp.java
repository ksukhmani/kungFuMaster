package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class public_005fview_005fsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/public_header.jsp");
    _jspx_dependants.add("/user_header.jsp");
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
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Bootstrap Case</title>\n");
      out.write("         <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link href=\"bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("           var xmlhttp;\n");
      out.write("           \n");
      out.write("           \n");
      out.write("            function city(value)\n");
      out.write("            {  \n");
      out.write("                var sub_cat = document.getElementById(\"t1\").value;\n");
      out.write("               \n");
      out.write("                xmlhttp = new XMLHttpRequest();\n");
      out.write("                xmlhttp.onreadystatechange = go1;\n");
      out.write("                xmlhttp.open(\"GET\", \"filter_sp.jsp?city=\" + value+\"&sub_cat=\"+sub_cat, true);\n");
      out.write("                xmlhttp.send();\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function go1()\n");
      out.write("            {\n");
      out.write("               \n");
      out.write("                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)\n");
      out.write("                {\n");
      out.write("\n");
      out.write("                    document.getElementById(\"id_city\").innerHTML = xmlhttp.responseText;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }  \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("           ");

       if(session.getAttribute("user_email")==null)
       {
   
      out.write("\n");
      out.write("    ");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"top-nav\" style=\"background: rgb(25,52,81)\">\n");
      out.write("    \n");
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
      out.write("                    <li class=\"dropdown\"><a class=\"dropdown-menu-right\" data-toggle=\"dropdown\" href=\"#\">Login</a>\n");
      out.write("                        <ul class=\"dropdown-menu dropdown-menu-right\" >\n");
      out.write("                            <li ><a href=\"user_login.jsp\" class=\"active\" style=\"color: black\"><span data-hover=\"User Login\">User Login</span></li>\n");
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
      out.write("    ");
}
else
{

      out.write('\n');
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
      out.write("<script>\n");
      out.write("    var xmlhttp;\n");
      out.write("    function fetch_search_user(value)\n");
      out.write("    {\n");
      out.write("        xmlhttp = new XMLHttpRequest();\n");
      out.write("        xmlhttp.open(\"GET\", \"autocomplete.jsp?value=\" + value, true);\n");
      out.write("        xmlhttp.onreadystatechange = go8;\n");
      out.write("        xmlhttp.send();\n");
      out.write("\n");
      out.write("    }\n");
      out.write("    function go8()\n");
      out.write("    {\n");
      out.write("\n");
      out.write("        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)\n");
      out.write("        {\n");
      out.write("\n");
      out.write("            document.getElementById(\"search_u\").innerHTML = xmlhttp.responseText;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>\n");
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
      out.write("                    <li><a href=\"user_home.jsp\" class=\"active\"><span data-hover=\"Home\">Home</span></a></li>\n");
      out.write("                    <li><a href=\"view_user_booking.jsp\" class=\"scroll\"><span data-hover=\"View My Bookings\">View My Bookings</span></a></li>\n");
      out.write("                    <li><a href=\"user_changepassword.jsp\" class=\"scroll\"><span data-hover=\"Change Password\">Change Password</span></a></li>\n");
      out.write("                    <li><a href=\"user_logout.jsp\" class=\"scroll\"><span data-hover=\"Logout\">Logout</span></a></li>\n");
      out.write("\n");
      out.write("                    <li>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"search\" placeholder=\"search service provider\" onkeyup=\"fetch_search_user(this.value)\"/>\n");
      out.write("                        <div id=\"search_u\" style=\"position: absolute;top: 50px;left: 0px;background-color: white;width: 200px;z-index: 1000;\"></div>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"clearfix\"> </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\t\n");
      out.write("</div>\n");
      out.write("<!--//navigation-->\n");
      out.write('\n');
}
    
      out.write("\n");
      out.write("    <div class=\"container-fluid\" style=\"min-height: 523px;padding: 0px\">\n");
      out.write("           \n");
      out.write("\n");
      out.write("\n");
      out.write("            ");
  String sub_category = request.getParameter("name");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs2 = stmt2.executeQuery("select count(*) as c1 from service_provider where sub_category=\'" + sub_category + "\'");

                if (rs2.next())  {
                    int c1 = rs2.getInt("c1");

            
      out.write("\n");
      out.write("            \n");
      out.write("            <input type=\"hidden\" name=\"sub_cat\" value=\"");
      out.print(sub_category);
      out.write("\" id=\"t1\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("            ");
  Class.forName("com.mysql.jdbc.Driver");
                Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt3 = conn3.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs3 = stmt3.executeQuery("select * from subcategories where sub_cat_name=\'" + sub_category + "\'");

                rs3.next();

                String cat = rs3.getString("category_name");
                String photo = rs3.getString("photo");
            
      out.write("\n");
      out.write("             \n");
      out.write("            <center> <div style=\"width:100%\"><img src=\"");
      out.print(photo);
      out.write("\" style=\"width: 100%; height: 250px\"/></div>\n");
      out.write("            <center> <div class=\"lead\"><label>Total ");
      out.print( c1);
      out.write(" service provider(s) under ");
      out.print(sub_category);
      out.write(" </label></div><br></center>\n");
      out.write("               \n");
      out.write("                <a href=\"index.jsp\" style=\"font-size: 25px\" ><button class=\"btn btn-success\" style=\"background: rgb(25,52,81);color:white\">");
      out.print(cat);
      out.write("</button></a><div class=\"glyphicon glyphicon-chevron-right\"></div>\n");
      out.write("                <a href=\"public_home2.jsp?name=");
      out.print(cat);
      out.write("\" style=\"font-size: 25px\"><button class=\"btn btn-success\" style=\"background: rgb(25,52,81);color:white\">");
      out.print(sub_category);
      out.write("</button></a><div class=\"glyphicon glyphicon-chevron-right\"></div>\n");
      out.write("                <label style=\"font-size: 25px\">Service Providers</label>\n");
      out.write("             <div style=\"margin-left:1000px\">   Filter According to city <select name=\"city\" onchange=\"city(this.value)\">\n");
      out.write("                <option>--select city--</option>\n");
      out.write("                <option>Amritsar</option>\n");
      out.write("                <option>Ludhiana</option>\n");
      out.write("                <option>Jalandhar</option>\n");
      out.write("                <option>Bathinda</option>\n");
      out.write("                <option>Ferozpur</option>\n");
      out.write("                <option>Pathankot</option>\n");
      out.write("                 </select></div>\n");
      out.write("            \n");
      out.write("                <div class=\"row\" style=\"padding: 10px\" id=\"id_city\">\n");
      out.write("            ");
 ResultSet rs4 = stmt2.executeQuery("select * from service_provider where sub_category=\'" + sub_category + "\'");
                while (rs4.next()) {
                    String name = rs4.getString("name");
                    String photo_sp = rs4.getString("photo");
                    String price = rs4.getString("per_hour_price");
                    String sp_email=rs4.getString("sp_email");
            
      out.write("\n");
      out.write("            \n");
      out.write("            <div class=\"col-sm-3\" style=\"border: solid 2px black; margin-left: 10px\">\n");
      out.write("\n");
      out.write("                        <label style=\"font-size: 20px; font-style: italic; font-family: cursive\">");
      out.print(name);
      out.write("</label><br>\n");
      out.write("                        <img src=\"");
      out.print(photo_sp);
      out.write("\" style=\"width: 220px;height: 200px\"/><br>\n");
      out.write("                        <label style=\"font-size: 15px\">Per_hour_price: ");
      out.print(price);
      out.write("</label><br>\n");
      out.write("                        <a href=\"service_provider_detail.jsp?sp_email=");
      out.print(sp_email);
      out.write("\"> <input type=\"button\" class=\"btn btn-success\" style=\"float: right; background: #cc9900; color: white;background: rgb(25,52,81);color:white\"  value=\"Book\"/>\n");
      out.write("                        </a>\n");
      out.write("                </div>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            ");

                }
              
      out.write("\n");
      out.write("              \n");
      out.write("        </div>\n");
      out.write("                ");
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
      out.write("    \n");
      out.write("    </body>\n");
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
