package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class service_005fprovider_005fsignup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("        <link href=\"bootstrap-3.3.7-dist/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <script src=\"http://maps.googleapis.com/maps/api/js?key=AIzaSyDe1vt5A7_wcqk7mU9eCSJtQN_VFsb_ic8&sensor=false&libraries=places&v=3.exp\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("             var lat1, lng1;\n");
      out.write("\n");
      out.write("\n");
      out.write("            function initialize()\n");
      out.write("            {\n");
      out.write("\n");
      out.write("                var markers = [];\n");
      out.write("\n");
      out.write("                var map = new google.maps.Map(document.getElementById('map1'), {\n");
      out.write("                    mapTypeId: google.maps.MapTypeId.ROADMAP,\n");
      out.write("                    zoom: 15\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                var defaultBounds = new google.maps.LatLngBounds(\n");
      out.write("                        new google.maps.LatLng(-33.8902, 151.1759),\n");
      out.write("                        new google.maps.LatLng(-33.8474, 151.2631));\n");
      out.write("                map.fitBounds(defaultBounds);\n");
      out.write("\n");
      out.write("                // Create the search box and link it to the UI element.\n");
      out.write("                var input = /** @type {HTMLInputElement} */(\n");
      out.write("                        document.getElementById('map_location'));\n");
      out.write("\n");
      out.write("\n");
      out.write("                var searchBox = new google.maps.places.SearchBox(\n");
      out.write("                        /** @type {HTMLInputElement} */(input));\n");
      out.write("\n");
      out.write("                //[START region_getplaces]\n");
      out.write("                // Listen for the event fired when the user selects an item from the\n");
      out.write("                // pick list. Retrieve the matching places for that item.\n");
      out.write("                google.maps.event.addListener(searchBox, 'places_changed', function() {\n");
      out.write("                    var places = searchBox.getPlaces();\n");
      out.write("\n");
      out.write("                    for (var i = 0, marker; marker = markers[i]; i++) {\n");
      out.write("                        marker.setMap(null);\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    // For each place, get the icon, place name, and location.\n");
      out.write("                    markers = [];\n");
      out.write("                    var bounds = new google.maps.LatLngBounds();\n");
      out.write("                    for (var i = 0, place; place = places[i]; i++) {\n");
      out.write("                        var image = {\n");
      out.write("                            url: place.icon,\n");
      out.write("                            size: new google.maps.Size(71, 71),\n");
      out.write("                            origin: new google.maps.Point(0, 0),\n");
      out.write("                            anchor: new google.maps.Point(17, 34),\n");
      out.write("                            scaledSize: new google.maps.Size(50, 50)\n");
      out.write("                        };\n");
      out.write("\n");
      out.write("                        // Create a marker for each place.\n");
      out.write("                        var marker = new google.maps.Marker({\n");
      out.write("                            map: map,\n");
      out.write("                            icon: image,\n");
      out.write("                            title: place.name,\n");
      out.write("                            position: place.geometry.location\n");
      out.write("                        });\n");
      out.write("\n");
      out.write("                        markers.push(marker);\n");
      out.write("\n");
      out.write("                        alert('Lat is:: ' + place.geometry.location.lat() + ' Long is:: ' + place.geometry.location.lng());\n");
      out.write("                        bounds.extend(place.geometry.location);\n");
      out.write("                        lat1 = place.geometry.location.lat();\n");
      out.write("                        lng1 = place.geometry.location.lng();\n");
      out.write("                        document.getElementById(\"lat1\").value=lat1;\n");
      out.write("                        document.getElementById(\"lng1\").value=lng1;\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    map.fitBounds(bounds);\n");
      out.write("\n");
      out.write("                    var defaultBounds1 = new google.maps.LatLngBounds(\n");
      out.write("                            new google.maps.LatLng(lat1 - 0.5, lng1 - 0.5),\n");
      out.write("                            new google.maps.LatLng(lat1 + 0.5, lng1 + 0.5));\n");
      out.write("                    map.fitBounds(defaultBounds1);\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                // [END region_getplaces]\n");
      out.write("\n");
      out.write("                // Bias the SearchBox results towards places that are within the bounds of the\n");
      out.write("                // current map's viewport.\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function go(category)\n");
      out.write("            {\n");
      out.write("\n");
      out.write("\n");
      out.write("                var xmlhttp = new XMLHttpRequest();\n");
      out.write("                xmlhttp.open(\"GET\", \"fetch_subcat_for_cat.jsp?name=\" + category, true);\n");
      out.write("                xmlhttp.onreadystatechange = function ()\n");
      out.write("                {\n");
      out.write("                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)\n");
      out.write("                    {\n");
      out.write("                        document.getElementById(\"d1\").innerHTML = xmlhttp.responseText;\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                xmlhttp.send();\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function check() {\n");
      out.write("                var val = document.getElementById(\"t1\").value;\n");
      out.write("                if((val!==\"\"))\n");
      out.write("                { if (val.length >= 7 && val.indexOf(\".\") !== -1 && val.indexOf(\"@\") !== -1 && val.lastIndexOf(\".\") > val.indexOf(\"@\"))\n");
      out.write("                {\n");
      out.write("                    alert(\"email check\");\n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {\n");
      out.write("                    alert(\"fail\");\n");
      out.write("                    document.getElementById(\"t1\").value=\"\";\n");
      out.write("                }\n");
      out.write("            }}\n");
      out.write("            function check1()\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                var tel = document.getElementById(\"tel\").value;\n");
      out.write("                if(tel!==\"\")\n");
      out.write("                { if(!isNaN(tel))\n");
      out.write("                {\n");
      out.write("                if (tel.length == 10)\n");
      out.write("                {\n");
      out.write("                    alert(\"Pass\");\n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {\n");
      out.write("                    alert(\"Fail1\");\n");
      out.write("                    document.getElementById(\"tel\").value=\"\";\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("            {\n");
      out.write("                alert(\"NOT A NUMBER\");\n");
      out.write("                document.getElementById(\"tel\").value=\"\";\n");
      out.write("            }\n");
      out.write("            }}\n");
      out.write("            function check2()\n");
      out.write("            {\n");
      out.write("                var name = document.getElementById(\"n1\").value;\n");
      out.write("                if(name!==\"\")\n");
      out.write("                {\n");
      out.write("                alert(name);\n");
      out.write("                var xml = new XMLHttpRequest();\n");
      out.write("                xml.onreadystatechange=function()\n");
      out.write("                {\n");
      out.write("                    if(xml.readyState==4 && xml.status==200)\n");
      out.write("                    {\n");
      out.write("                        var res = xml.responseText.trim();\n");
      out.write("                    if(res == \"success\")\n");
      out.write("                    {\n");
      out.write("                    }\n");
      out.write("                    else\n");
      out.write("                    {\n");
      out.write("                        document.getElementById(\"n1\").value=\"\";\n");
      out.write("                        alert(\"Name Must Not Contain Numbers\");\n");
      out.write("                    }\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("                xml.open(\"GET\",\"CheckName.jsp?name=\"+name,true);\n");
      out.write("                xml.send();\n");
      out.write("            }}\n");
      out.write("   \n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"initialize();\">\n");
      out.write("    <center>\n");
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
      out.write("    \n");
      out.write("        <div class=\"container\" style=\"min-height: 523px\">\n");
      out.write("            \n");
      out.write("            <center><h1>Sign up</h1></center>\n");
      out.write("            \n");
      out.write("            <form  action=\"./MultiFileUploader5\" class=\"form-horizontal\" method=\"post\" enctype=\"multipart/form-data\"><br>\n");
      out.write("                ");
String category = "";
                
      out.write("\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Email</label>\n");
      out.write("                    <div class=\"col-sm-10\"><input type=\"text\" class=\"form-control\" name=\"email\" id=\"t1\" onblur=\"check()\" required/></div></div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Name</label>\n");
      out.write("                    <div class=\"col-sm-10\"><input type=\"text\" class=\"form-control\" name=\"name\" onblur=\"check2()\" id=\"n1\" required/></div></div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Phone</label>\n");
      out.write("                    <div class=\"col-sm-10\"><input type=\"text\" id=\"tel\" class=\"form-control\" name=\"phone\"  onblur=\"check1()\" required/></div></div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Website</label>\n");
      out.write("                    <div class=\"col-sm-10\"><input type=\"text\" class=\"form-control\" name=\"web\"/></div></div>\n");
      out.write("                  \n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                     <label class=\"col-sm-2\">Select City</label>\n");
      out.write("                           <div class=\"col-sm-10\"> <select name=\"city\" class=\"form-control\">\n");
      out.write("                <option>--select city--</option>\n");
      out.write("                <option>Amritsar</option>\n");
      out.write("                <option>Ludhiana</option>\n");
      out.write("                <option>Jalandhar</option>\n");
      out.write("                <option>Bathinda</option>\n");
      out.write("                <option>Ferozpur</option>\n");
      out.write("                <option>Pathankot</option>\n");
      out.write("            </select>\n");
      out.write("                           </div></div>\n");
      out.write("\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Enter Starting hour</label>\n");
      out.write("                    <div class=\"col-sm-10\">\n");
      out.write("                        <select class=\"form-control\" name=\"sh\" required>\n");
      out.write("                            <option hidden>--select starting hour--</option>\n");
      out.write("                            ");

                                for (int i = 1; i <= 24; i++) {
                            
      out.write("\n");
      out.write("                            <option>");
      out.print(i);
      out.write("</option>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </div></div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Enter Ending hour</label>\n");
      out.write("                    <div class=\"col-sm-10\">\n");
      out.write("                        <select class=\"form-control\" name=\"eh\" required>\n");
      out.write("                            <option hidden>--select ending hour--</option>\n");
      out.write("                            ");

                                for (int i = 1; i <= 24; i++) {
                            
      out.write("\n");
      out.write("                            <option>");
      out.print(i);
      out.write("</option>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </select></div></div>\n");
      out.write("\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Enter Per-Hour-Price</label>\n");
      out.write("                    <div class=\"col-sm-10\"><input type=\"text\" class=\"form-control\" name=\"php\" required/></div></div>\n");
      out.write("                \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Enter Description</label>\n");
      out.write("                    <div class=\"col-sm-10\"><input type=\"text\" class=\"form-control\" name=\"desc\" required/></div></div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Select Photo</label>\n");
      out.write("                    <div class=\"col-sm-10\"><input type=\"file\" class=\"form-control\" name=\"file\" required/></div></div>\n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                    <label class=\"col-sm-2\">Select Category</label>\n");
      out.write("                    <div class=\"col-sm-10\">\n");
      out.write("                        <select class=\"form-control\" name=\"sel_cat\" onchange=\"go(this.value)\" required>\n");
      out.write("                            <option hidden>--select category--</option>\n");
      out.write("                            \n");
      out.write("                    ");
  Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        ResultSet rs = stmt.executeQuery("select c_name from category");
                        while (rs.next()) {
                            category = rs.getString("c_name");

                    
      out.write(" \n");
      out.write("                    <option value=\"");
      out.print( category);
      out.write('"');
      out.write('>');
      out.print( category);
      out.write("</option>\n");
      out.write("                    ");
}
                    
      out.write("\n");
      out.write("                    </select><br>\n");
      out.write("                    </div></div>\n");
      out.write("                <div id=\"d1\">\n");
      out.write("                </div>\n");
      out.write("              <input type=\"text\"  name=\"map_location\" style=\"width: 400px;\" id=\"map_location\" required />\n");
      out.write("\n");
      out.write("        <div id=\"map1\" style=\"width: 1000px; height: 600px;\">\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("              <input type=\"text\" name=\"lat\" id=\"lat1\">\n");
      out.write("              <input type=\"text\" name=\"long\" id=\"lng1\">\n");
      out.write("        \n");
      out.write("                    \n");
      out.write("                    <center>  <input type=\"submit\" class=\"btn btn-success\" value=\"SIGN UP\"  style=\"background: rgb(25,52,81);color:white;margin-top:10px\"/></center>\n");
      out.write("\n");
      out.write("                <br>\n");
      out.write("\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        ");

            String m = request.getParameter("msg");

            if (m != null) {
        
      out.write("\n");
      out.write("        <label>");
      out.print(m);
      out.write("</label>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("\n");
      out.write("    </center>\n");
      out.write("               ");
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
      out.write("</body>\n");
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
