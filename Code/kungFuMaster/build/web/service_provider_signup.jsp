<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>

        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDe1vt5A7_wcqk7mU9eCSJtQN_VFsb_ic8&sensor=false&libraries=places&v=3.exp"></script>
        <title>JSP Page</title>

        <script>
             var lat1, lng1;


            function initialize()
            {

                var markers = [];

                var map = new google.maps.Map(document.getElementById('map1'), {
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    zoom: 15
                });

                var defaultBounds = new google.maps.LatLngBounds(
                        new google.maps.LatLng(-33.8902, 151.1759),
                        new google.maps.LatLng(-33.8474, 151.2631));
                map.fitBounds(defaultBounds);

                // Create the search box and link it to the UI element.
                var input = /** @type {HTMLInputElement} */(
                        document.getElementById('map_location'));


                var searchBox = new google.maps.places.SearchBox(
                        /** @type {HTMLInputElement} */(input));

                //[START region_getplaces]
                // Listen for the event fired when the user selects an item from the
                // pick list. Retrieve the matching places for that item.
                google.maps.event.addListener(searchBox, 'places_changed', function() {
                    var places = searchBox.getPlaces();

                    for (var i = 0, marker; marker = markers[i]; i++) {
                        marker.setMap(null);
                    }

                    // For each place, get the icon, place name, and location.
                    markers = [];
                    var bounds = new google.maps.LatLngBounds();
                    for (var i = 0, place; place = places[i]; i++) {
                        var image = {
                            url: place.icon,
                            size: new google.maps.Size(71, 71),
                            origin: new google.maps.Point(0, 0),
                            anchor: new google.maps.Point(17, 34),
                            scaledSize: new google.maps.Size(50, 50)
                        };

                        // Create a marker for each place.
                        var marker = new google.maps.Marker({
                            map: map,
                            icon: image,
                            title: place.name,
                            position: place.geometry.location
                        });

                        markers.push(marker);

                        alert('Lat is:: ' + place.geometry.location.lat() + ' Long is:: ' + place.geometry.location.lng());
                        bounds.extend(place.geometry.location);
                        lat1 = place.geometry.location.lat();
                        lng1 = place.geometry.location.lng();
                        document.getElementById("lat1").value=lat1;
                        document.getElementById("lng1").value=lng1;
                    }

                    map.fitBounds(bounds);

                    var defaultBounds1 = new google.maps.LatLngBounds(
                            new google.maps.LatLng(lat1 - 0.5, lng1 - 0.5),
                            new google.maps.LatLng(lat1 + 0.5, lng1 + 0.5));
                    map.fitBounds(defaultBounds1);
                });

                // [END region_getplaces]

                // Bias the SearchBox results towards places that are within the bounds of the
                // current map's viewport.
            }

            function go(category)
            {


                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "fetch_subcat_for_cat.jsp?name=" + category, true);
                xmlhttp.onreadystatechange = function ()
                {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        document.getElementById("d1").innerHTML = xmlhttp.responseText;

                    }
                };




                xmlhttp.send();

            }
            function check() {
                var val = document.getElementById("t1").value;
                if((val!==""))
                { if (val.length >= 7 && val.indexOf(".") !== -1 && val.indexOf("@") !== -1 && val.lastIndexOf(".") > val.indexOf("@"))
                {
                    alert("email check");
                }
                else
                {
                    alert("fail");
                    document.getElementById("t1").value="";
                }
            }}
            function check1()
            {
                
                var tel = document.getElementById("tel").value;
                if(tel!=="")
                { if(!isNaN(tel))
                {
                if (tel.length == 10)
                {
                    alert("Pass");
                }
                else
                {
                    alert("Fail1");
                    document.getElementById("tel").value="";
                }
            }
            else
            {
                alert("NOT A NUMBER");
                document.getElementById("tel").value="";
            }
            }}
            function check2()
            {
                var name = document.getElementById("n1").value;
                if(name!=="")
                {
                alert(name);
                var xml = new XMLHttpRequest();
                xml.onreadystatechange=function()
                {
                    if(xml.readyState==4 && xml.status==200)
                    {
                        var res = xml.responseText.trim();
                    if(res == "success")
                    {
                    }
                    else
                    {
                        document.getElementById("n1").value="";
                        alert("Name Must Not Contain Numbers");
                    }
                    }
                };
                xml.open("GET","CheckName.jsp?name="+name,true);
                xml.send();
            }}
   
        </script>

    </head>
    <body onload="initialize();">
    <center>
    <%@include file="public_header.jsp"%>
    
        <div class="container" style="min-height: 523px">
            
            <center><h1>Sign up</h1></center>
            
            <form  action="./MultiFileUploader5" class="form-horizontal" method="post" enctype="multipart/form-data"><br>
                <%String category = "";
                %>
                <div class="form-group">
                    <label class="col-sm-2">Email</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="email" id="t1" onblur="check()" required/></div></div>
                <div class="form-group">
                    <label class="col-sm-2">Name</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="name" onblur="check2()" id="n1" required/></div></div>
                <div class="form-group">
                    <label class="col-sm-2">Phone</label>
                    <div class="col-sm-10"><input type="text" id="tel" class="form-control" name="phone"  onblur="check1()" required/></div></div>
                <div class="form-group">
                    <label class="col-sm-2">Website</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="web"/></div></div>
                  
                    <div class="form-group">
                     <label class="col-sm-2">Select City</label>
                           <div class="col-sm-10"> <select name="city" class="form-control">
                <option>--select city--</option>
                <option>Amritsar</option>
                <option>Ludhiana</option>
                <option>Jalandhar</option>
                <option>Bathinda</option>
                <option>Ferozpur</option>
                <option>Pathankot</option>
            </select>
                           </div></div>

                <div class="form-group">
                    <label class="col-sm-2">Enter Starting hour</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="sh" required>
                            <option hidden>--select starting hour--</option>
                            <%
                                for (int i = 1; i <= 24; i++) {
                            %>
                            <option><%=i%></option>
                            <%
                                }
                            %>
                        </select>
                    </div></div>
                <div class="form-group">
                    <label class="col-sm-2">Enter Ending hour</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="eh" required>
                            <option hidden>--select ending hour--</option>
                            <%
                                for (int i = 1; i <= 24; i++) {
                            %>
                            <option><%=i%></option>
                            <%
                                }
                            %>
                        </select></div></div>

                <div class="form-group">
                    <label class="col-sm-2">Enter Per-Hour-Price</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="php" required/></div></div>
                
                <div class="form-group">
                    <label class="col-sm-2">Enter Description</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="desc" required/></div></div>
                    <div class="form-group">
                    <label class="col-sm-2">Select Photo</label>
                    <div class="col-sm-10"><input type="file" class="form-control" name="file" required/></div></div>
                     <div class="form-group">
                    <label class="col-sm-2">Select Category</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="sel_cat" onchange="go(this.value)" required>
                            <option hidden>--select category--</option>
                            
                    <%  Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        ResultSet rs = stmt.executeQuery("select c_name from category");
                        while (rs.next()) {
                            category = rs.getString("c_name");

                    %> 
                    <option value="<%= category%>"><%= category%></option>
                    <%}
                    %>
                    </select><br>
                    </div></div>
                <div id="d1">
                </div>
              <input type="text"  name="map_location" style="width: 400px;" id="map_location" required />

        <div id="map1" style="width: 1000px; height: 600px;">

        </div>
              <input type="text" name="lat" id="lat1">
              <input type="text" name="long" id="lng1">
        
                    
                    <center>  <input type="submit" class="btn btn-success" value="SIGN UP"  style="background: rgb(25,52,81);color:white;margin-top:10px"/></center>

                <br>

            </form>
        </div>
        <%
            String m = request.getParameter("msg");

            if (m != null) {
        %>
        <label><%=m%></label>
        <%
            }
        %>

    </center>
               <%@include file="footer.jsp"%>
</body>
</html>