package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class filter_005fsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
          String city = request.getParameter("city");
            String sub_cat = request.getParameter("sub_cat");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs2 = stmt2.executeQuery("select count(*) as c1 from service_provider where sub_category=\'" + sub_cat + "\'and city='" + city + "'");
            if (rs2.next()) {
                int c1 = rs2.getInt("c1");


        
      out.write("\n");
      out.write("        <label>");
      out.print(c1);
      out.write(" Service Provider(s) under this subcategory</label>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
}

      out.write("\n");
      out.write(" <div class=\"row\" style=\"padding: 10px\">\n");
      out.write("            ");
 ResultSet rs4 = stmt2.executeQuery("select * from service_provider where sub_category='" + sub_cat + "'and city='" + city +"'");
                while (rs4.next()) {
                    String name = rs4.getString("name");
                    String photo_sp = rs4.getString("photo");
                    String price = rs4.getString("per_hour_price");
            
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
      out.write("                        <input type=\"button\" style=\"float: right; background: #cc9900; color: white\"  value=\"Book\"/>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("%>");
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
