<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <title>JSP Page</title>
        <script>

            function del(name)
            {
                var ans = confirm("Are you sure you want to delete this booking?");
                if (ans)
                {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.open("GET", "del_booking.jsp?name=" + name, true);
                    xmlhttp.onreadystatechange = function ()
                    {
                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                        {
                            document.getElementById("booking").innerHTML = xmlhttp.responseText;
                            alert("Booking Deleted");
                        }
                    };




                    xmlhttp.send();
                }
            }
            var xmlhttp;
            function filter()
            {
                var date1 = document.getElementById("date1").value;
                xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "filter_booking.jsp?date1=" + date1, true);
                xmlhttp.onreadystatechange = go8;
                xmlhttp.send();

            }
            function go8()
            {

                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {

                    document.getElementById("booking").innerHTML = xmlhttp.responseText;

                }

            }

            function cancel(id, date1)
            {
                var ans = confirm("Are you sure you want to delete this booking?");
                if (ans)
                {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.open("GET", "del_booking2.jsp?id=" + id + "&date1=" + date1, true);
                    xmlhttp.onreadystatechange = function ()
                    {
                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                        {
                            document.getElementById("booking").innerHTML = xmlhttp.responseText;
                            alert("Booking Deleted");
                        }
                    };




                    xmlhttp.send();
                }
            }
 function convertToISO(timebit)
            {
                timebit.setHours(0, -timebit.getTimezoneOffset(), 0, 0);
                var isodate = timebit.toISOString().slice(0, 10);
                return isodate;


            }
            function getDate()
            {
                var bookdate = document.getElementById("date1");
                currentdate = new Date();
                bookdate.min = convertToISO(currentdate);
            }





        </script>
    </head>
    <body onload="getDate()">
                <%@include file="sp_header.jsp"%>
        <div class="container">

            <div id="booking">
                <center>   <h1>My Bookings</h1></center>
                <div class="form-group"> <label  style="margin-left:700px"> Filter According To Date</label><input type="date" name="date1" id="date1"/>
                    <input type="button" value="Filter" class="btn btn-success" style="background: rgb(25,52,81);color:white" onclick="filter()"/>   </div>
                    <% String sp_email = session.getAttribute("sp_email").toString();
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        ResultSet rs = stmt.executeQuery("select * from booking where sp_email=\'" + sp_email + "\'");
                        if (rs.next()) {
                            rs.previous();
                    %>


                <table class="table table-hover">
                    <thead class="" style="background: rgb(25,52,81);color:white">
                        <tr>
                            <td>Booking Id</td>
                            <td>Date</td>
                            <td>Username</td>
                            <td>Total Price</td>
                            <td>Time Slot</td>
                            <td></td>
                        </tr>
                    </thead>
                    <% while (rs.next()) {
                            int b_id = rs.getInt("booking_id");
                            String date = rs.getString("date");
                            String user_email = rs.getString("user_email");
                            int price = rs.getInt("totalprice");
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                            Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                            ResultSet rs1 = stmt1.executeQuery("select * from user where email=\'" + user_email + "\'");
                            if (rs1.next()) {
                                String name = rs1.getString("name");

                    %> 

                    <tr>
                        <td><%=b_id%></td> 
                        <td><%=date%></td> 
                        <td><%=name%></td> 
                        <td><%=price%></td> 

                        <td>
                            <%
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                                ResultSet rs2 = stmt2.executeQuery("select * from booking_detail where b_id=\'" + b_id + "\'");
                                while (rs2.next()) {
                                    int start_hr = rs2.getInt("start_hr");
                                    int end_hr = rs2.getInt("end_hr");
                            %>
                            <% if (start_hr <= 12) {
                            %>

                            <%=start_hr%>am
                            <% } else {

                            %>
                            <%= (start_hr - 12)%>pm

                            <%
                                }
                                if (start_hr + 1 <= 12) {
                            %>

                            -<%=start_hr + 1%>am
                            <% } else {

                            %>
                            -<%= (start_hr + 1) - 12%>pm
                            <%
                            }%>
                            <br>

                            <%}%>

                        </td>

                        <td>
                            <input type="button" class="btn-success" value="Delete" onclick="del('<%=b_id%>')" style="background: rgb(25,52,81);color:white"/>
                        </td>


                    </tr>

                    <%  }
                        }

                    } else {
                    %>
                    <h1>No Booking</h1>
                    <%}
                    %>


                </table>
            </div>
        </div>
    </body>
</html>
