package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_005fforgotpassword1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <link href=\"bootstrap-3.3.7-dist/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("            <script>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("           \n");
      out.write("           \n");
      out.write("            function fetchsec()\n");
      out.write("            {  \n");
      out.write("                var email = document.getElementById(\"email\").value;\n");
      out.write("                alert(email);\n");
      out.write("                var xmlhttp = new XMLHttpRequest();\n");
      out.write("                 xmlhttp.open(\"GET\",\"user_forgotpassword2.jsp?email=\"+email,true);\n");
      out.write("                 xmlhttp.onreadystatechange =go7;\n");
      out.write("                xmlhttp.send();\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function go7()\n");
      out.write("            {\n");
      out.write("               \n");
      out.write("                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)\n");
      out.write("                {\n");
      out.write("\n");
      out.write("                    document.getElementById(\"secques\").innerHTML = xmlhttp.responseText;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }  \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"container\">\n");
      out.write("            \n");
      out.write("             \n");
      out.write("            \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <div class=\"col-sm-2\">\n");
      out.write("                    <label style=\"margin-top: 20px\">Email</label>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-10\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"email\" name=\"email\" required style=\"margin-top: 20px\"/>\n");
      out.write("                    </div>\n");
      out.write("                </div>  \n");
      out.write("            \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <div class=\"col-sm-2\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-10\">\n");
      out.write("                        <center><input type=\"button\"  value=\"GO\" class=\"btn btn-success\" onclick=\"fetchsec()\" style=\"margin-top:20px\"/></center>\n");
      out.write("                    </div>                    \n");
      out.write("                </div>\n");
      out.write("            \n");
      out.write("             <div id=\"secques\">\n");
      out.write("                </div>\n");
      out.write("             \n");
      out.write("        </div>\n");
      out.write("       \n");
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
