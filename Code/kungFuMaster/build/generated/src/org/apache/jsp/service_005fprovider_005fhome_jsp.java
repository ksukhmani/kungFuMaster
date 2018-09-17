package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class service_005fprovider_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/sp_header.jsp");
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
      response.setContentType("text/html; charset=EUC-KR");
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
      out.write("        <link href=\"bootstrap-3.3.7-dist/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"bootstrap-3.3.7-dist/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("            function readandpreview(fileobj, imageid)\n");
      out.write("            {\n");
      out.write("                var firstfile = fileobj.files[0];\n");
      out.write("\n");
      out.write("                var reader = new FileReader();\n");
      out.write("\n");
      out.write("                reader.onload = (function (f)\n");
      out.write("                {\n");
      out.write("                    return function read12(e)\n");
      out.write("                    {\n");
      out.write("                        document.getElementById(imageid).src = e.target.result;\n");
      out.write("                    };\n");
      out.write("                })(firstfile);\n");
      out.write("\n");
      out.write("                reader.readAsDataURL(firstfile);\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            #map {\n");
      out.write("                height: 400px;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"http://maps.googleapis.com/maps/api/js?key=AIzaSyDe1vt5A7_wcqk7mU9eCSJtQN_VFsb_ic8&sensor=false\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            html { height: 100% }\n");
      out.write("            body { height: 100%; margin: 0; padding: 0 }\n");
      out.write("            #map-canvas { height: 100% }\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            function go()\n");
      out.write("            {\n");
      out.write("\n");
      out.write("                var lat1 = document.getElementById(\"latitude\").value;\n");
      out.write("                var lng1 = document.getElementById(\"longitude\").value;\n");
      out.write("\n");
      out.write("                var mapProp = {\n");
      out.write("                    center: new google.maps.LatLng(lat1, lng1),\n");
      out.write("                    zoom: 9,\n");
      out.write("                    mapTypeId: google.maps.MapTypeId.HYBRID\n");
      out.write("                };\n");
      out.write("\n");
      out.write("                var map = new google.maps.Map(document.getElementById(\"maps1\"), mapProp);\n");
      out.write("\n");
      out.write("                var marker = new google.maps.Marker({\n");
      out.write("                    position: new google.maps.LatLng(lat1, lng1)\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                marker.setMap(map);\n");
      out.write("            }\n");
      out.write("            function profile()\n");
      out.write("            {\n");
      out.write("                $(\"#mymodal\").modal(\"show\");\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body  onload=\"go()\" style=\"background-color:#ffff99\">\n");
      out.write("            ");
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
      out.write("                    <li><a href=\"service_provider_home.jsp\" class=\"active\"><span data-hover=\"Home\">Home</span></a></li>\n");
      out.write("                    <li><a href=\"edit_service_provider.jsp\" class=\"scroll\"><span data-hover=\"Edit Profile\">Edit Profile</span></a></li>\n");
      out.write("                    <li><a href=\"sp_view_booking.jsp\" class=\"scroll\"><span data-hover=\"View My Bookings\">View My Bookings</span></a></li>\n");
      out.write("                    <li><a href=\"sp_change_password.jsp\" class=\"scroll\"><span data-hover=\"Change Password\">Change Password</span></a></li>\n");
      out.write("                    <li><a href=\"sp_logout.jsp\" class=\"scroll\"><span data-hover=\"Logout\">Logout</span></a></li>\n");
      out.write("                    \n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"clearfix\"> </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\t\n");
      out.write("</div>\n");
      out.write("<!--//navigation-->\n");
      out.write("\n");
      out.write("        ");
   String photo = "";
        
      out.write("\n");
      out.write("        ");

            String sp_email = (String) (session.getAttribute("sp_email"));
            {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = stmt.executeQuery("select * from service_provider where sp_email=\'" + sp_email + "\'");
                if (rs.next()) {
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    String website = rs.getString("website");
                    String per_hour_price = rs.getString("per_hour_price");
                    String starting_hour = rs.getString("starting_hour");
                    String ending_hour = rs.getString("ending_hour");
                    String description = rs.getString("description");
                    String sub_category = rs.getString("sub_category");
                    photo = rs.getString("photo");
                    String longitude = rs.getString("longitude");
                    String latitude = rs.getString("latitude");


        
      out.write("\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                <img src=\"sp_pics/homeservices.jpg\" style=\"width:100% ;height:250px\" />\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row\" >\n");
      out.write("                <div class=\"col-sm-8 col-sm-offset-2\" style=\"background: white; padding: 20px;margin-top: 10px\">\n");
      out.write("                    <img src=\"");
      out.print( photo);
      out.write("\" width=\"150\" height=\"150\" name=\"photo\"/><label>   Welcome ");
      out.print( name);
      out.write("</label>\n");
      out.write("                    <div class=\"row\" ><span style=\"color:blue;margin-left:14px\" onclick=\"profile()\">Change Profile Picture</span></div>\n");
      out.write("                    <div class=\"col-sm-offset-10\" ><a href=\"sp_change_password.jsp\">Change Password</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-offset-10\" ><a href=\"sp_view_booking.jsp\">View My Bookings</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-8 col-sm-offset-2\" style=\"background: white; padding: 20px;margin-top: 10px\">\n");
      out.write("                    <form action=\"edit_service_provider.jsp\">\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print(latitude);
      out.write("\" name=\"latitude\" id=\"latitude\"/>\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print(longitude);
      out.write("\" name=\"longitude\" id=\"longitude\"/>\n");
      out.write("                        <label>Your Basic Details</label><br>\n");
      out.write("                        <div class=\"form-group\"> <label class=\"col-sm-2\">Email</label>\n");
      out.write("                            <div class=\"col-sm-10\"><label>");
      out.print( sp_email);
      out.write("</label></div></div>\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print( sp_email);
      out.write("\" name=\"email\"/>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\"> <label class=\"col-sm-2\">Phone</label>\n");
      out.write("                            <div class=\"col-sm-10\"><label>");
      out.print( phone);
      out.write("</label></div></div>\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print( phone);
      out.write("\" name=\"phone\"/>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\"> <label class=\"col-sm-2\">Website</label>\n");
      out.write("                            <div class=\"col-sm-10\"><label>");
      out.print( website);
      out.write("</label></div></div>\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print(website);
      out.write("\" name=\"web\"/>\n");
      out.write("                        <div class=\"form-group\"> <label class=\"col-sm-2\">Per_hour_price</label>\n");
      out.write("                            <div class=\"col-sm-10\"><label>");
      out.print(per_hour_price);
      out.write("</label></div></div>\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print( per_hour_price);
      out.write("\" name=\"php\"/>\n");
      out.write("                        <div class=\"form-group\"> <label class=\"col-sm-2\">Starting hour</label>\n");
      out.write("                            <div class=\"col-sm-10\"><label>");
      out.print(starting_hour);
      out.write("</label></div></div>\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print( starting_hour);
      out.write("\" name=\"sh\"/>\n");
      out.write("                        <div class=\"form-group\"> <label class=\"col-sm-2\">Ending hour</label>\n");
      out.write("                            <div class=\"col-sm-10\"><label>");
      out.print(ending_hour);
      out.write("</label></div></div>\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print( ending_hour);
      out.write("\" name=\"eh\"/>\n");
      out.write("                        <div class=\"form-group\"> <label class=\"col-sm-2\">Description</label>\n");
      out.write("                            <div class=\"col-sm-10\"><label>");
      out.print(description);
      out.write("</label></div></div>\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print( description);
      out.write("\" name=\"des\"/>\n");
      out.write("                        <div class=\"form-group\"> <label class=\"col-sm-2\">Sub Category</label>\n");
      out.write("                            <div class=\"col-sm-10\"><label>");
      out.print(sub_category);
      out.write("</label></div></div>\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print(sub_category);
      out.write("\" name=\"scat\"/>\n");
      out.write("                        <div class=\"col-sm-offset-11\"><input type=\"submit\" class=\"btn btn-success\" value=\"Edit\" style=\"background: rgb(25,52,81);color:white\" /></div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                <div class=\"col-sm-8 col-sm-offset-2\" style=\"background: white; padding: 20px; margin-top: 10px; \">\n");
      out.write("                    <div class=\"row\" > <label class=\"col-sm-2\">Work Gallery</label>\n");
      out.write("                        <button class=\"btn btn-success\"   data-toggle=\"modal\" data-target=\"#add_photo\" style=\"float:right;background: rgb(25,52,81);color:white\"><span class=\"glyphicon glyphicon-plus-sign\">Add Photos</span></button>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\" style=\"height: 300px;overflow: auto; padding: 10px\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                        ");


                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                            Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                            ResultSet rs1 = stmt1.executeQuery("select * from work_gallery where sp_email=\'" + sp_email + "\'");
                            while (rs1.next()) {
                                String photo1 = rs1.getString("photo");
                                String caption1 = rs1.getString("caption");
                                String id = rs1.getString("gallery_id");
                        
      out.write("\n");
      out.write("                        <div class=\"col-sm-4\" style=\"position:relative\">\n");
      out.write("                            <a href=\"delete_photo.jsp?id=");
      out.print( id);
      out.write("\" onclick=\"return confirm('Are you sure you want to delete this photo?')\">\n");
      out.write("                                <div class=\"glyphicon glyphicon-remove-sign\" style=\"color:black;font-size:25px;position:absolute;top:0px;right:15px\"></div></a>\n");
      out.write("\n");
      out.write("                            <img src=\"");
      out.print(photo1);
      out.write("\" style=\"width:100%;height:150px\"/><br>\n");
      out.write("                            <label>");
      out.print(caption1);
      out.write("</label>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        ");

                            }

                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div> \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-8 col-sm-offset-2\" style=\"background: white; padding: 20px;margin-top: 10px\">\n");
      out.write("                    <label class=\"col-sm-2\">Location On Map</label>\n");
      out.write("                    <br>\n");
      out.write("                    <div id=\"maps1\" style=\"height:400px\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            ");
                    }
                }
            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Modal -->\n");
      out.write("            <div id=\"add_photo\" class=\"modal fade\" role=\"dialog\">\n");
      out.write("                <div class=\"modal-dialog\" >\n");
      out.write("\n");
      out.write("                    <!-- Modal content-->\n");
      out.write("                    <div class=\"modal-content\" style=\"background-color: white\">\n");
      out.write("\n");
      out.write("                        <div class=\"modal-header\">\n");
      out.write("                            <center><label>Add Photo</label></center>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-body\">\n");
      out.write("                            <form action=\"./MultiFileUploader6\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("\n");
      out.write("                                <div class=\"form-group\" >\n");
      out.write("                                    <label class=\"col-sm-2\">Select Photo</label>\n");
      out.write("                                    <div class=\"col-sm-10\" ><input type=\"file\" class=\"form-control\"  name=\"file\" required=\"\" />\n");
      out.write("                                        <br></div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label class=\"col-sm-2\">Enter Caption</label>\n");
      out.write("                                    <div class=\"col-sm-10\"><textarea name=\"caption\" class=\"form-control\">\n");
      out.write("                                        </textarea></div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <center>  <input type=\"submit\" value=\"Add\" class=\"btn btn-success\" style=\"background: rgb(25,52,81);color:white;margin-top: 10px\"/></center>\n");
      out.write("\n");
      out.write("                            </form>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-footer\">\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">Close</button>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"mymodal\" class=\"modal fade\" role=\"dialog\">\n");
      out.write("                <div class=\"modal-dialog\">\n");
      out.write("\n");
      out.write("                    <!-- Modal content-->\n");
      out.write("                    <div class=\"modal-content\">\n");
      out.write("\n");
      out.write("                        <div class=\"modal-header\">\n");
      out.write("                            <center><label>Change Profile Picture</label></center>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-body\">\n");
      out.write("                            <form class=\"form-horizontal\" action=\"./change_profile_picture\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                                <img src=\"");
      out.print(photo);
      out.write("\" style=\"height:250px;width: 250px\" id=\"im1\"/><br><br>\n");
      out.write("                                <input type=\"file\" value=\"");
      out.print(photo);
      out.write("\" onchange=\"readandpreview(this,'im1')\" name=\"file\" />\n");
      out.write("                                <input type=\"submit\" value=\"Change\"  class=\"col-sm-offset-10 btn btn-default btn-info\" />\n");
      out.write("\n");
      out.write("                            </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-footer\">\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">Close</button>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
