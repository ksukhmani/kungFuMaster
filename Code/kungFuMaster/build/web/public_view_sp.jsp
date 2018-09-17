<%@page import="java.sql.*"%>
<html lang="en">
    <head>
        <title>Bootstrap Case</title>
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            
           var xmlhttp;
           
           
            function city(value)
            {  
                var sub_cat = document.getElementById("t1").value;
               
                xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = go1;
                xmlhttp.open("GET", "filter_sp.jsp?city=" + value+"&sub_cat="+sub_cat, true);
                xmlhttp.send();

            }
            function go1()
            {
               
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {

                    document.getElementById("id_city").innerHTML = xmlhttp.responseText;
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
    <div class="container-fluid" style="min-height: 523px;padding: 0px">
           


            <%  String sub_category = request.getParameter("name");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs2 = stmt2.executeQuery("select count(*) as c1 from service_provider where sub_category=\'" + sub_category + "\'");

                if (rs2.next())  {
                    int c1 = rs2.getInt("c1");

            %>
            
            <input type="hidden" name="sub_cat" value="<%=sub_category%>" id="t1"/>


            <%  Class.forName("com.mysql.jdbc.Driver");
                Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt3 = conn3.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs3 = stmt3.executeQuery("select * from subcategories where sub_cat_name=\'" + sub_category + "\'");

                rs3.next();

                String cat = rs3.getString("category_name");
                String photo = rs3.getString("photo");
            %>
             
            <center> <div style="width:100%"><img src="<%=photo%>" style="width: 100%; height: 250px"/></div>
            <center> <div class="lead"><label>Total <%= c1%> service provider(s) under <%=sub_category%> </label></div><br></center>
               
                <a href="index.jsp" style="font-size: 25px" ><button class="btn btn-success" style="background: rgb(25,52,81);color:white"><%=cat%></button></a><div class="glyphicon glyphicon-chevron-right"></div>
                <a href="home_subcat_forcat.jsp?name=<%=cat%>" style="font-size: 25px"><button class="btn btn-success" style="background: rgb(25,52,81);color:white"><%=sub_category%></button></a><div class="glyphicon glyphicon-chevron-right"></div>
                <label style="font-size: 25px">Service Providers</label>
             <div style="margin-left:1000px">   Filter According to city <select name="city" onchange="city(this.value)">
                <option>--select city--</option>
                <option>Amritsar</option>
                <option>Ludhiana</option>
                <option>Jalandhar</option>
                <option>Bathinda</option>
                <option>Ferozpur</option>
                <option>Pathankot</option>
                 </select></div>
            
                <div class="row" style="padding: 10px" id="id_city">
            <% ResultSet rs4 = stmt2.executeQuery("select * from service_provider where sub_category=\'" + sub_category + "\'");
                while (rs4.next()) {
                    String name = rs4.getString("name");
                    String photo_sp = rs4.getString("photo");
                    String price = rs4.getString("per_hour_price");
                    String sp_email=rs4.getString("sp_email");
            %>
            
            <div class="col-sm-3" style="border: solid 2px black; margin-left: 10px">

                        <label style="font-size: 20px; font-style: italic; font-family: cursive"><%=name%></label><br>
                        <img src="<%=photo_sp%>" style="width: 220px;height: 200px"/><br>
                        <label style="font-size: 15px">Per_hour_price: <%=price%></label><br>
                        <a href="service_provider_detail.jsp?sp_email=<%=sp_email%>"> <input type="button" class="btn btn-success" style="float: right; background: #cc9900; color: white;background: rgb(25,52,81);color:white"  value="Book"/>
                        </a>
                </div>
                <%
                    }
                %>

            </div>
            <%
                }
              %>
              
        </div>
                <%@include file="footer.jsp"%>    
    </body>
</html>