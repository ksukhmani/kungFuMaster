

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>


            var xmlhttp;
            function go(cat_name)
            {
                
                xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = go1;
                xmlhttp.open("GET", "fetch_subcat_from_cat_sp.jsp?name=" + cat_name, true);
                xmlhttp.send();

            }
            function go1()
            {

                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {

                    document.getElementById("maindiv").innerHTML = xmlhttp.responseText;
                }

            }
             function go2(sub_cat)
            {
        
                xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = go3;
                xmlhttp.open("GET", "modalpopup_ajax.jsp?name=" + sub_cat, true);
                xmlhttp.send();

            }
            function go3()
            {
                
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {

                    document.getElementById("maindiv2").innerHTML = xmlhttp.responseText;
                    $("#myModal").modal('show');
                }

            }






        </script>

    </head>
    <body>
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
       <div class="container-fluid" style="min-height:523px;padding: 0px">


        <div id="myCarousel" class="carousel slide" data-ride="carousel" >
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="corousal_images/housing-house.jpg" alt="Chania" style="width:100% ;height:300px" >
                </div>

                <div class="item">
                    <img src="corousal_images/home-remodeling.jpg" alt="Chania" style="width:100% ;height:300px">
                </div>

                <div class="item">
                    <img src="corousal_images/home.jpg" alt="Flower" style="width:100% ;height:300px">
                </div>

                <div class="item">
                    <img src="corousal_images/1.jpg" alt="Flower" style="width:100% ;height:300px">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a></div>

        <div class="row">
            <%  String c_name = request.getParameter("name");
            %>
            <div class="col-sm-5" style="border: solid 1px black;background-color:oldlace;">


                <% Class.forName("com.mysql.jdbc.Driver");
                    Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                    Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs1 = stmt1.executeQuery("select * from category");
                    while (rs1.next()) {
                        String photo = rs1.getString("photo");
                        String cat_name = rs1.getString("c_name");
                %>
                <div class="row" style="margin: 10px;padding: 10px;height: 150px;cursor: pointer" onclick="go('<%=cat_name%>')">
                    <img  src="<%=photo%>"  style="width:80%; height:100%; border: solid 1px black;margin-left: 45px"/><br>
                    <center><label><%=cat_name%></label></center>
                </div>


                <%}
                %>




            </div>

            <div class="col-sm-7" style="border: solid 1px black ;background-color:cornsilk;padding: 0px" id="maindiv">
                <div  style="border-bottom: solid 1px black;margin-bottom: 20px"  >
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                        Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        ResultSet rs2 = stmt2.executeQuery("select * from category where c_name=\'" + c_name + "\'");
                        while (rs2.next()) {

                            String photo = rs2.getString("photo");
                            String description = rs2.getString("description");
                    %>
                    <div  style="background: rgb(25,52,81)" ><label style="font-family:cursive;padding: 10px;font-size: 25px;color:white"><b><%=c_name%></b></label></div>
                    <img src="<%=photo%>"   style="width: 200px; height: 150px;margin: 20px; border: solid 1px black"/>


                    <p style="font-family:initial;font-size: 20px;margin-left: 10px;margin-right: 10px"><%=description%></p><br><br><br>
                    <%
                        }
                    %>

                </div>






                <% Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs = stmt.executeQuery("select * from subcategories where category_name=\'" + c_name + "\'");
                    while (rs.next()) {
                        String photo = rs.getString("photo");
                        String sub_cat = rs.getString("sub_cat_name");

                %>

                <div class="col-sm-4">
                    <div>
                        <img  src="<%=photo%>"  style="width:200px; height: 200px; border: solid 1px black"/><br></div>
                        <label style="font-family: cursive;color: brown"><%=sub_cat%></label><br>
                    <input type="button" value="Explore" name="ex" data-toggle="modal" class="btn btn-success" onclick="go2('<%=sub_cat%>')" style="background: rgb(25,52,81);color:white"/>

                </div>



                <%}
                %>
            </div></div>



        <div class="modal" id="myModal" >
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content" style="background-color: white">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                        <center><label style="font-family: cursive;color: black">Sub Category Description</label><br></center>

                    </div>
                    <div class="modal-body">
                        <div id="maindiv2">

                        </div>   





                    </div>
                    <div class="modal-footer">

<!--                        <button type="button" data-dismiss="modal">Close</button>-->
                    </div>
                </div>
            </div>
        </div>
            </div>
                   <%@include file="footer.jsp"%>
    </body>

</html>
