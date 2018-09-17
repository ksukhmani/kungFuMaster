<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.7-dist/css/lightbox.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-3.3.7-dist/js/lightbox.min.js" type="text/javascript"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDe1vt5A7_wcqk7mU9eCSJtQN_VFsb_ic8&sensor=false"></script>
        <title>JSP Page</title>
        <script type="text/javascript">
            var xmlhttp = new XMLHttpRequest();
            var sp_email;
            function book()
            {


                xmlhttp.open("GET", "check_booking.jsp", true);
                xmlhttp.onreadystatechange = go10;
                xmlhttp.send();

            }
            function go10()
            {
                sp_email = document.getElementById("sp_email").value;
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {
                    var status = xmlhttp.responseText.trim();
                    if (status == "success")
                    {
                        $("#mymodal").modal("show");

                    } else if (status == "fail")
                    {
                        window.location.href = "book_service_provider.jsp?sp_email=" + sp_email;

                    }
                }
            }

            function login()
            {
                alert("hello");

                sp_email = document.getElementById("sp_email").value;
                alert(sp_email);
                var email = document.getElementById("email").value;
                alert(email);
                var password = document.getElementById("pass").value;
                alert(sp_email+" "+email+" "+password);
                xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "login_check2.jsp?email=" + email + "&password=" + password, true);
                xmlhttp.onreadystatechange = go11;
                xmlhttp.send();

            }
            function go11()
            {

                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {
                    var status1 = xmlhttp.responseText.trim();
                    if (status1 == "correct")
                    {
                        window.location.href = "book_service_provider.jsp?sp_email=" + sp_email;

                    } else if (status1 == "incorrect")
                    {
                        alert("Incorrect email/password");

                    }
                }
            }

            function go()
            {
                fetch_review();
                var lat1 = document.getElementById("latitude").value;
                var lng1 = document.getElementById("longitude").value;
                var mapProp = {
                    center: new google.maps.LatLng(lat1, lng1),
                    zoom: 9,
                    mapTypeId: google.maps.MapTypeId.HYBRID
                };

                var map = new google.maps.Map(document.getElementById("maps1"), mapProp);

                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(lat1, lng1)
                });

                marker.setMap(map);
            }



            function rating()
            {
                xmlhttp.open("GET", "check_booking.jsp", true);
                xmlhttp.onreadystatechange = go13;
                xmlhttp.send();

            }
            function go13()
            {
                sp_email = document.getElementById("sp_email").value;
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {
                    var status = xmlhttp.responseText.trim();
                    if (status == "success")
                    {
                        $("#mymodallogin").modal("show");

                    } else if (status == "fail")
                    {
                        $("#mymodalrating").modal("show");

                    }
                }
            }
            function loginrating()
            {

                sp_email = document.getElementById("sp_email").value;
                var email = document.getElementById("email1").value;
                var password = document.getElementById("pass1").value;
                xmlhttp.open("GET", "login_check2.jsp?email=" + email + "&password=" + password, true);
                xmlhttp.onreadystatechange = go14;
                xmlhttp.send();

            }
            function go14()
            {

                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {
                    var status1 = xmlhttp.responseText.trim();
                    if (status1 == "correct")
                    {
                        $("#mymodallogin").modal("hide");
                        $("#mymodalrating").modal("show");

                    } else if (status1 == "incorrect")
                    {
                        alert("Incorrect email/password");

                    }
                }
            }
            var n = 0;
            function fill(obj)
            {
                var img = obj.src;
                var id = obj.id;
                var val = parseInt(id.substring(id.indexOf("_") + 1));
                var i;
                if (n == 0)
                {
                    i = 1;
                } else
                {
                    i = n + 1;
                }
                for (; i <= 5; i++)
                {
                    if (i <= val)
                    {
                        document.getElementById("rating_" + i).src = "./filled_star.png";

                    } else
                    {
                        document.getElementById("rating_" + i).src = "./empty_star.png";
                    }
                }

            }
            function selected(obj)
            {
                var id = obj.id;
                var val = parseInt(id.substring(id.indexOf("_") + 1));
                n = val;
                alert(n);

            }
            function unfill(obj)
            {
                var i;
                if (n == 0)
                {
                    i = 1;
                } else
                {
                    i = n + 1;
                }
                for (; i <= 5; i++)
                {
                    document.getElementById("rating_" + i).src = "./empty_star.png";
                }
            }

            function setrating()

            {
                var sp_email = document.getElementById("sp_email").value;
                var ta = document.getElementById("ta").value;
                xmlhttp.open("GET", "setrating.jsp?n=" + n + "&ta=" + ta + "&sp_email=" + sp_email, true);
                xmlhttp.onreadystatechange = go66;
                xmlhttp.send();

            }
            function go66()
            {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {
                    $("#mymodalrating").modal("hide");
                    alert("Rating given");
                    fetch_review();

                }

            }

            function fetch_review()

            {
                var sp_email = document.getElementById("sp_email").value;
                xmlhttp.open("GET", "fetch_review.jsp?sp_email=" + sp_email, true);
                xmlhttp.onreadystatechange = go67;
                xmlhttp.send();

            }
            function go67()
            {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {
                    document.getElementById("newrating").innerHTML = xmlhttp.responseText;


                }

            }






        </script>
    </head>
    <body onload="go()" >

          <%
       if(session.getAttribute("user_email")==null)
       {
   %>
    <%@include file="public_header.jsp"%>
    <%}
else
{
%>
<%@include file="user_header.jsp"%>
<%}
    %>
        <div class="container-fluid">
            
            <%String sp_email = request.getParameter("sp_email");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = stmt.executeQuery("select * from service_provider where sp_email=\'" + sp_email + "\'");
                if (rs.next()) {
                    String sub_category = rs.getString("sub_category");
                    String photo_sp = rs.getString("photo");
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    String website = rs.getString("website");
                    String per_hour_price = rs.getString("per_hour_price");
                    int starting_hour = Integer.parseInt(rs.getString("starting_hour"));
                    int ending_hour = Integer.parseInt(rs.getString("ending_hour"));
                    String description = rs.getString("description");
                    String city = rs.getString("city");
                    String latitude = rs.getString("latitude");
                    String longitude = rs.getString("longitude");

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                    Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs1 = stmt1.executeQuery("select * from subcategories where sub_cat_name=\'" + sub_category + "\'");
                    if (rs1.next()) {
                        String photo = rs1.getString("photo");

            %>
            <input type="hidden" id="sp_email" value="<%=sp_email%>"/>

            <input type="hidden" id="latitude" value="<%=latitude%>"/>
            <input type="hidden" id="longitude" value="<%=longitude%>"/>

            <div class="row">
                <div style="border:solid 2px black">    
                    
                    <img src="<%= photo %>" style="width: 100%; height: 300px;" />
                    
                </div>
                    
                
            </div>
            <hr>

            <div class="row" style="padding: 0px">
                <div class="col-sm-10 col-sm-offset-1" style="background-color:white;margin-top: 10px;border: solid 2px black; padding: 0px">
                    <div  data-toggle="collapse" data-target="#basic" style="background: rgb(25,52,81);color:white;font-size:20px; padding: 10px">Basic Details <span class="glyphicon glyphicon-plus" style="float: right"></span></div>

                    <div class="collapse in" id="basic">

                        <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <img src="<%=photo_sp%>" style="width:150px;height:150px"/>
                            </div>
                            <div class="col-sm-9">
                                <label><%=name%></label>
                                <br>


                                

                                <% Connection conn4 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                                    Statement stmt4 = conn4.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                                    ResultSet rs4 = stmt4.executeQuery("select avg(num) as average from ratings where sp_email=\'" + sp_email + "\'");
                                    if (rs4.next()) {
                                        float f = rs4.getFloat("average");
                                        int a = (int) (f);

                                        for (int i = 1; i <= a; i++) {
                                %>

                                <img src="./filled_star.png"  height="25" width="25">
                                <%
                                    }
                                    if ((f - a) == 0) {
                                        for (int i = 1; i <= 5 - a; i++) {
                                %>
                                <img src="./empty_star.png"  height="25" width="25">
                                <%
                                    }
                                } else {
                                %>

                                <img src="./halffilled_star.png"  height="25" width="25">
                                <%for (int i = 1; i <= 3 - a; i++) {
                                %>
                                <img src="./empty_star.png"  height="25" width="25">
                                <%   }

                                        }
                                    }
                                %>
                                
                                <br><br>
<input type="button" class="btn btn-success" value="Book"  onclick="book()" style="background: rgb(25,52,81);color:white;margin-right:30px"/>
                            </div>
                        </div>




                        <form class="form-horizontal" style="padding-left:25px">
                            <div class="form-group" >
                                <div class="glyphicon glyphicon-envelope" style="color:#cc0033"></div>
                               <label> <%=sp_email%></label></div>
                            <div class="form-group">
                                <div class="glyphicon glyphicon-phone" style="color: #000000 "></div>
                                 <%=phone%></div>
                            <div class="form-group">
                                <div class="glyphicon glyphicon-log-in" style="color:#1b6d85"></div>
                                <%=website%></div>
                            <div class="form-group">
                                <div class="glyphicon glyphicon-usd" style="color: #cc0066"></div>
                          <label><%=per_hour_price%></label></div>
                            <div class="form-group">
                                <div class="glyphicon glyphicon-time" style="color: #00cccc"></div>
                                <%
                                    if (starting_hour <= 12) {
                                %>
                                <label><%=starting_hour%>am(starting hr)</label>

                                <% } else {
                                    starting_hour = starting_hour - 12;


                                %>
                               <label><%=starting_hour%>pm(starting hr)</label>
                                <%}%>
                            </div>
                            <div class="form-group">
                                <div class="glyphicon glyphicon-time" style="color: #660000"></div>
                                <%
                                    if (ending_hour <= 12) {
                                %>
                                <label><%=ending_hour%>am(ending hr)</label> 

                                <% } else {
                                    ending_hour = ending_hour - 12;


                                %>
                                <label><%=ending_hour%>pm(ending hr)</label>
                                <%}%></div>

                            <div class="form-group">
                                <label style="color: #330066"> <%=description%></label></div>
                            <div class="form-group">
                                <div class="glyphicon glyphicon-map-marker" style="color: #ff9900"></div>
                               <label> <%=city%></label></div>




                        </form>
                    </div>

                </div>
            </div>





            <%
                    }
                }
            %>

            <div class="row" style="margin-top: 20px;padding:0px">
                <div class="col-sm-10 col-sm-offset-1" style="background-color:white;margin-top: 10px;border: solid 2px black; padding: 0px">
                    <div  data-toggle="collapse" data-target="#basic1" style="background: rgb(25,52,81);color: white; padding: 10px;font-size:20px;">View Gallery<span class="glyphicon glyphicon-plus" style="float: right"></span></div>

                    <div class="collapse in" id="basic1">

                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                            Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                            ResultSet rs2 = stmt2.executeQuery("select * from work_gallery where sp_email=\'" + sp_email + "\'");
                            while (rs2.next()) {
                                String photo2 = rs2.getString("photo");
                        %>
                        <input type="hidden" value="<%=sp_email%>" id="sp"/>
                        <div class="col-sm-4" style="margin-bottom: 10px;margin-top: 10px">
                            <a href="<%=photo2%>"  data-lightbox="image-1" title="image1"> <img src="<%=photo2%>"  style="height:150px;width:150px;border:solid 1px black"/><br></a>

                        </div> 



                        <%}
                        %>
                    </div>
                </div>
            </div>
            <div class="row" style="padding: 0px">
                <div class="col-sm-10 col-sm-offset-1" style="background-color:white;margin-top: 20px;border: solid 2px black; padding: 0px">
                    <div  data-toggle="collapse" data-target="#basicmap" style="background: rgb(25,52,81);color: white;font-size:20px; padding: 10px">Locate us on <span class="glyphicon glyphicon-plus" style="float: right"></span></div>

                    <div class="collapse in" id="basicmap">
                        <div id="maps1" style="height: 400px">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="padding: 0px">
                <div class="col-sm-10 col-sm-offset-1" style="background-color:white;margin-top: 20px;border: solid 2px black; padding: 0px">
                    <div  data-toggle="collapse" data-target="#basicmap1" style="background: rgb(25,52,81);color:white;font-size:20px; padding: 10px">User Rating <span class="glyphicon glyphicon-plus" style="float: right"></span></div>

                    <div class="collapse in" id="basicmap1">
                        <br><br>
                        <input type="button" class="btn btn-success"   value="Add New Ratings" style="margin-left:900px;background: rgb(25,52,81);color:white" onclick="rating()"/>
                        <br>
                        <br>
                        <div id="newrating" style="padding: 10px">
                        </div>

                    </div>
                </div>
            </div>
        </div>


    </div>
    <!-- Modal -->
    <div id="mymodal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content" style="background-color: white">

                <div class="modal-header">
                    <center><label>Login</label></center>
                </div>
                <div class="modal-body">

                    <div class="form-group" >
                        <label class="col-sm-2">Enter email</label>
                        <div class="col-sm-10" ><input type="text" class="form-control"  id="email" required="" />
                            <br></div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2">Enter password</label>
                        <div class="col-sm-10"><input type="password" id="pass" class="form-control"/></div>
                    </div>


                    <center>  <input type="button" value="Login"  style="margin-top: 10px;background: rgb(25,52,81);color:white" class="btn btn-success" onclick="login()"/></center>




                </div>
                <div class="modal-footer">
                    <button type="button" class="close" data-dismiss="modal">Close</button>

                </div>

            </div>
        </div>
    </div>
    <!-- Modal -->
    <div id="mymodalrating" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content" style="background-color: white">

                <div class="modal-header">
                    <center><label>Reviews</label></center>
                </div>
                <div class="modal-body">

                    <div id="main" style="min-height:70px" > 
                        <center> 
                            <img id="rating_1" src="./empty_star.png"  height="40" width="40" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)"></td>
                            <td> <img id="rating_2" src="./empty_star.png"  height="40" width="40" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)"></td> 
                            <td> <img id="rating_3" src="./empty_star.png" height="40" width="40" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)"></td>
                            <td><img id="rating_4" src="./empty_star.png"  height="40" width="40" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)"></td>
                            <td> <img id="rating_5" src="./empty_star.png" height="40" width="40" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)">
                        </center></div>
                    <div class="form-group">
                        <label class="col-sm-2">Enter Rating</label>
                        <div class="col-sm-10"><textarea name="ta" id="ta" class="col-sm-12"></textarea></div>
                    </div>
                    <center>  <input type="button" value="Add"  style="margin-top: 10px;background: rgb(25,52,81);color:white" class="btn btn-success" onclick="setrating()"/></center>


                </div>
                <div class="modal-footer">
                    <button type="button" class="close" data-dismiss="modal">Close</button>

                </div>

            </div>
        </div>
    </div>
    <!-- Modal -->
    <div id="mymodallogin" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content" style="background-color: white">

                <div class="modal-header">
                    <center><label>Login</label></center>
                </div>
                <div class="modal-body">

                    <div class="form-group" >
                        <label class="col-sm-2">Enter email</label>
                        <div class="col-sm-10" ><input type="text" class="form-control"  id="email1" required="" />
                            <br></div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2">Enter password</label>
                        <div class="col-sm-10"><input type="password" id="pass1" class="form-control"/></div>
                    </div>


                    <center>  <input type="button" value="Login"  style="margin-top: 10px;background: rgb(25,52,81);color:white" class="btn btn-default btn-info" onclick="loginrating()"/></center>




                </div>
                <div class="modal-footer">
                    <button type="button" class="close" data-dismiss="modal">Close</button>

                </div>

            </div>
        </div>
    </div>



       <%@include file="footer.jsp"%>
</body>


</html>
