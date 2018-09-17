package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_005fadmin_005fkf_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<link href=\"css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("<link href=\"css/style.css\" type=\"text/css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--web-fonts-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"top-nav\" style=\"background: url('kung_fu2.jpg')no-repeat; background-position: center; height: 100%; background-size: cover;\">\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <!--navigation-->\n");
      out.write("    <div class=\"top-nav\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            \n");
      out.write("                \n");
      out.write("               \n");
      out.write("               <center> <label style=\"color:white;font-size: 50px;font-style: inherit\" ><b>KUNG FU</b></label></center>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("    </div>\t\n");
      out.write("</div>\n");
      out.write("    <!--//navigation-->\n");
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
