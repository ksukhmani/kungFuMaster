<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script>
            function readandpreview(fileobj, imageid)
            {
                var firstfile = fileobj.files[0];

                var reader = new FileReader();

                reader.onload = (function (f)
                {
                    return function read12(e)
                    {
                        document.getElementById(imageid).src = e.target.result;
                    };
                })(firstfile);

                reader.readAsDataURL(firstfile);
            }
        </script>
        <style>
            #map {
                height: 400px;
                width: 100%;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDe1vt5A7_wcqk7mU9eCSJtQN_VFsb_ic8&sensor=false"></script>
        <title>JSP Page</title>
        <style type="text/css">
            html { height: 100% }
            body { height: 100%; margin: 0; padding: 0 }
            #map-canvas { height: 100% }
        </style>
        <script>
            function go()
            {

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
            function profile()
            {
                $("#mymodal").modal("show");
            }
        </script>


    </head>
    <body  onload="go()" style="background-color:#ccffff">
            <%@include file="sp_header.jsp"%>
        <%   String photo = "";
        %>
        <%
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


        %>
        <div class="container-fluid">
            <div class="row">

                <img src="sp_pics/1.jpg" style="width:100% ;height:250px" />

            </div>

            <div class="row" >
                <div class="col-sm-8 col-sm-offset-2" style="background: white; padding: 20px;margin-top: 10px">
                    <img src="<%= photo%>" width="150" height="150" name="photo"/><label>   Welcome <%= name%></label>
                    <div class="row" ><span style="color:blue;margin-left:14px" onclick="profile()">Change Profile Picture</span></div>
                   

                </div>

            </div>
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2" style="background: white; padding: 20px;margin-top: 10px">
                    <form action="edit_service_provider.jsp">
                        <input type="hidden" value="<%=latitude%>" name="latitude" id="latitude"/>
                        <input type="hidden" value="<%=longitude%>" name="longitude" id="longitude"/>
                        <label>Your Basic Details</label><br>
                        <div class="form-group"> <label class="col-sm-2">Email</label>
                            <div class="col-sm-10"><label><%= sp_email%></label></div></div>
                        <input type="hidden" value="<%= sp_email%>" name="email"/>

                        <div class="form-group"> <label class="col-sm-2">Phone</label>
                            <div class="col-sm-10"><label><%= phone%></label></div></div>
                        <input type="hidden" value="<%= phone%>" name="phone"/>

                        <div class="form-group"> <label class="col-sm-2">Website</label>
                            <div class="col-sm-10"><label><%= website%></label></div></div>
                        <input type="hidden" value="<%=website%>" name="web"/>
                        <div class="form-group"> <label class="col-sm-2">Per_hour_price</label>
                            <div class="col-sm-10"><label><%=per_hour_price%></label></div></div>
                        <input type="hidden" value="<%= per_hour_price%>" name="php"/>
                        <div class="form-group"> <label class="col-sm-2">Starting hour</label>
                            <div class="col-sm-10"><label><%=starting_hour%></label></div></div>
                        <input type="hidden" value="<%= starting_hour%>" name="sh"/>
                        <div class="form-group"> <label class="col-sm-2">Ending hour</label>
                            <div class="col-sm-10"><label><%=ending_hour%></label></div></div>
                        <input type="hidden" value="<%= ending_hour%>" name="eh"/>
                        <div class="form-group"> <label class="col-sm-2">Description</label>
                            <div class="col-sm-10"><label><%=description%></label></div></div>
                        <input type="hidden" value="<%= description%>" name="des"/>
                        <div class="form-group"> <label class="col-sm-2">Sub Category</label>
                            <div class="col-sm-10"><label><%=sub_category%></label></div></div>
                        <input type="hidden" value="<%=sub_category%>" name="scat"/>
                        <div class="col-sm-offset-11"><input type="submit" class="btn btn-success" value="Edit" style="background: rgb(25,52,81);color:white" /></div>
                    </form>
                </div>
            </div>
            <div class="row">

                <div class="col-sm-8 col-sm-offset-2" style="background: white; padding: 20px; margin-top: 10px; ">
                    <div class="row" > <label class="col-sm-2">Work Gallery</label>
                        <button class="btn btn-success"   data-toggle="modal" data-target="#add_photo" style="float:right;background: rgb(25,52,81);color:white"><span class="glyphicon glyphicon-plus-sign">Add Photos</span></button>

                    </div>
                    <div class="row" style="height: 300px;overflow: auto; padding: 10px">


                        <%

                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                            Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                            ResultSet rs1 = stmt1.executeQuery("select * from work_gallery where sp_email=\'" + sp_email + "\'");
                            while (rs1.next()) {
                                String photo1 = rs1.getString("photo");
                                String caption1 = rs1.getString("caption");
                                String id = rs1.getString("gallery_id");
                        %>
                        <div class="col-sm-4" style="position:relative">
                            <a href="delete_photo.jsp?id=<%= id%>" onclick="return confirm('Are you sure you want to delete this photo?')">
                                <div class="glyphicon glyphicon-remove-sign" style="color:black;font-size:25px;position:absolute;top:0px;right:15px"></div></a>

                            <img src="<%=photo1%>" style="width:100%;height:150px"/><br>
                            <label><%=caption1%></label>
                        </div>


                        <%
                            }

                        %>
                    </div>
                </div>
            </div> 
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2" style="background: white; padding: 20px;margin-top: 10px">
                    <label class="col-sm-2">Location On Map</label>
                    <br>
                    <div id="maps1" style="height:400px">
                    </div>
                </div>
            </div>

            <%                    }
                }
            %>




            <!-- Modal -->
            <div id="add_photo" class="modal fade" role="dialog">
                <div class="modal-dialog" >

                    <!-- Modal content-->
                    <div class="modal-content" style="background-color: white">

                        <div class="modal-header">
                            <center><label>Add Photo</label></center>
                        </div>
                        <div class="modal-body">
                            <form action="./MultiFileUploader6" method="post" enctype="multipart/form-data">

                                <div class="form-group" >
                                    <label class="col-sm-2">Select Photo</label>
                                    <div class="col-sm-10" ><input type="file" class="form-control"  name="file" required="" />
                                        <br></div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2">Enter Caption</label>
                                    <div class="col-sm-10"><textarea name="caption" class="form-control">
                                        </textarea></div>
                                </div>


                                <center>  <input type="submit" value="Add" class="btn btn-success" style="background: rgb(25,52,81);color:white;margin-top: 10px"/></center>

                            </form>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="close" data-dismiss="modal">Close</button>

                        </div>

                    </div>
                </div>
            </div>

            <div id="mymodal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">

                        <div class="modal-header">
                            <center><label>Change Profile Picture</label></center>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" action="./change_profile_picture" method="post" enctype="multipart/form-data">
                                <img src="<%=photo%>" style="height:250px;width: 250px" id="im1"/><br><br>
                                <input type="file" value="<%=photo%>" onchange="readandpreview(this,'im1')" name="file" />
                                <input type="submit" value="Change"  class="col-sm-offset-10 btn btn-default btn-info" />

                            </form>


                        </div>
                        <div class="modal-footer">
                            <button type="button" class="close" data-dismiss="modal">Close</button>

                        </div>

                    </div>
                </div>
            </div>






        </div>
       <%@include file="footer.jsp"%>
    </body>
</html>
