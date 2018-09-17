package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class book_005fservice_005fprovider_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link href=\"bootstrap-3.3.7-dist/css/bootstrap.min.css\" rel=\"stylesheet\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"bootstrap-3.3.7-dist/css/lightbox.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/lightbox.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>    var xmlhttp = new XMLHttpRequest();\n");
      out.write("\n");
      out.write("            function fetch()\n");
      out.write("            {\n");
      out.write("                var sp_email = document.getElementById(\"sp_email\").value;\n");
      out.write("                var date1 = document.getElementById(\"date1\").value;\n");
      out.write("                xmlhttp.open(\"GET\", \"fetch_availability.jsp?sp_email=\" + sp_email + \"&date1=\" + date1, true);\n");
      out.write("                xmlhttp.onreadystatechange = go10;\n");
      out.write("                xmlhttp.send();\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function go10()\n");
      out.write("            {\n");
      out.write("                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)\n");
      out.write("                {\n");
      out.write("\n");
      out.write("                    document.getElementById(\"d\").innerHTML = xmlhttp.responseText;\n");
      out.write("\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            function calculate()\n");
      out.write("            {\n");
      out.write("                var count = 0;\n");
      out.write("                var a = document.getElementsByName(\"cb\");\n");
      out.write("                var price = parseInt(document.getElementById(\"price\").value);\n");
      out.write("                for (var i = 0; i < a.length; i++)\n");
      out.write("                {\n");
      out.write("\n");
      out.write("                    if (a[i].checked)\n");
      out.write("                    {\n");
      out.write("                        count++;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                var total = count * price;\n");
      out.write("                document.getElementById(\"l1\").innerHTML = \"Total Price:\" + total;\n");
      out.write("                document.getElementById(\"tb\").value = total;\n");
      out.write("                var scripts = document.getElementsByTagName('script');\n");
      out.write("                for (var i = 0, l = scripts.length; i < l; i++) {\n");
      out.write("                    if (scripts[i].src === 'https://checkout.razorpay.com/v1/checkout.js') {\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        scripts[i].setAttribute(\"data-amount\",total);\n");
      out.write("                        alert(scripts[i].getAttribute('data-amount'));\n");
      out.write("                        break;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                document.getElementById(\"s1\").setAttribute(\"data-amount\",total+\"\");\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function go3()\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"form1\").action = \"paynow.jsp\";\n");
      out.write("                return true;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function go4()\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"form1\").action = \"paylater.jsp\";\n");
      out.write("                return true;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function convertToISO(timebit)\n");
      out.write("            {\n");
      out.write("                timebit.setHours(0, -timebit.getTimezoneOffset(), 0, 0);\n");
      out.write("                var isodate = timebit.toISOString().slice(0, 10);\n");
      out.write("                return isodate;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function getDate()\n");
      out.write("            {\n");
      out.write("                var bookdate = document.getElementById(\"date1\");\n");
      out.write("                currentdate = new Date();\n");
      out.write("                bookdate.min = convertToISO(currentdate);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"getDate()\">\n");
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
      out.write("\n");
      out.write("        <div class=\"container\" style=\"min-height: 523px\">\n");
      out.write("            \n");
      out.write("        <form action=\"success.jsp\" method=\"post\" id=\"form1\">\n");
      out.write("            ");
String sp_email = request.getParameter("sp_email");

                String myemail = session.getAttribute("user_email").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = stmt.executeQuery("select * from service_provider where sp_email=\'" + sp_email + "\'");
                if (rs.next()) {
                    String name = rs.getString("name");
                    String photo = rs.getString("photo");

            
      out.write("\n");
      out.write("            <input type=\"hidden\" value=\"");
      out.print(sp_email);
      out.write("\" id=\"sp_email\" name=\"sp_email\"/>\n");
      out.write("            <label>You are booking with </label>\n");
      out.write("            <img src=\"");
      out.print( photo);
      out.write("\" style=\"height:150px;width:150px\" />");
      out.print(name);
      out.write("\n");
      out.write("\n");
      out.write("            <input type=\"date\" name=\"date\" id=\"date1\" style=\"margin-right: 40px\"/><input type=\"button\"class=\"btn btn-success\" style=\"background: rgb(25,52,81);color:white\" value=\"Fetch\" onclick=\"fetch()\"/>\n");
      out.write("            <div id=\"d\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <label id=\"l1\">Total Price:0</label>\n");
      out.write("            <input type=\"hidden\"  name=\"tb\" id=\"tb\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("       ");
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
      out.write("     \n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("\n");
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
