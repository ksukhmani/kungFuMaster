  <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Book My Helper</title>
        <style>
            .main
            {
                width: 100%;
                height: 90%;
            }
            .d1
            {
                width: 100%;
                height: 100%;
                transition:  all 1s ease;
            }

            .d1:hover
            {
                transform: scale(1.2);
                transition:  all 1s ease;
            }
        </style>
        <script>


            var xmlhttp;
            function fetch(value)
            {
                xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "autocomplete.jsp?value="+value, true);
                xmlhttp.onreadystatechange =go8;
                xmlhttp.send();

            }
            function go8()
            {

                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {

                    document.getElementById("searchdiv").innerHTML = xmlhttp.responseText;
                    
                }

            }



        </script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function ()
            {
                //If u want to change Interval of corousal
                $('.carousel').carousel({
                    interval: 3000
                });
            });
        </script>
    </head>
    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top">

            <div class="container-fluid" style="border: solid 1px red;">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">Book My Helper</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Page 1-1</a></li>
                                <li><a href="#">Page 1-2</a></li>
                                <li><a href="#">Page 1-3</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Page 2</a></li>
                        <li><a href="#">Page 3</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Data Area -->
        <div class="">    
            <h1></h1>
        </div>

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
                    <img src="corousal_images/beauty.jpg" alt="Chania" style="width:100% ;height:300px" >
                </div>

                <div class="item">
                    <img src="corousal_images/refinishing.jpg" alt="Chania" style="width:100% ;height:300px">
                </div>

                <div class="item">
                    <img src="corousal_images/repairs.jpg" alt="Flower" style="width:100% ;height:300px">
                </div>

                <div class="item">
                    <img src="corousal_images/tutor.jpg" alt="Flower" style="width:100% ;height:300px">
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
            </a>


        </div>
        <div class="row" style="margin-top:60px;position:relative">
            <div class="form-group">
                <div class="lead">  <label class="col-sm-offset-2 col-sm-3">Search Service Provider </label>
                    <div class="col-sm-5"><input type="text" class="form-control" name="search" placeholder="Search Service Provider Here" onkeyup="fetch(this.value)"/>
                    </div></div>
            </div>
            <div  id="searchdiv" style="position:absolute;left:560px;top:53px;background-color:white;width:500px;z-index:100"></div>
        </div>
        <div class="row" style="margin-top:60px; padding-left: 30px;background-color:cornsilk;z-index:-10">

            <div class="container">

                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs = stmt.executeQuery("select * from category");
                    while (rs.next()) {
                        String c_name = rs.getString("c_name");
                        String photo = rs.getString("photo");

                %>

                <div class="col-sm-3">
                    <div> 
                        <div style="overflow: hidden" class="main">
                            <img  src="<%=photo%>" class="d1" style="width:200px; height: 200px; border: solid 1px black"/></div>
                        <a href="home_subcat_forcat.jsp?name=<%=c_name%>"><%=c_name%></a>
                    </div></div>
                    <%}
                    %>

            </div>
        </div>
       <%@include file="footer.jsp"%>
    </body>
</html>
