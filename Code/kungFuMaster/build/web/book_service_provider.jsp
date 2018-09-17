
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
        <script>    var xmlhttp = new XMLHttpRequest();

            function fetch()
            {
                var sp_email = document.getElementById("sp_email").value;
                var date1 = document.getElementById("date1").value;
                xmlhttp.open("GET", "fetch_availability.jsp?sp_email=" + sp_email + "&date1=" + date1, true);
                xmlhttp.onreadystatechange = go10;
                xmlhttp.send();

            }
            function go10()
            {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {

                    document.getElementById("d").innerHTML = xmlhttp.responseText;

                }
            }
            function calculate()
            {
                var count = 0;
                var a = document.getElementsByName("cb");
                var price = parseInt(document.getElementById("price").value);
                for (var i = 0; i < a.length; i++)
                {

                    if (a[i].checked)
                    {
                        count++;
                    }
                }
                var total = count * price;
                document.getElementById("l1").innerHTML = "Total Price:" + total;
                document.getElementById("tb").value = total;
                var scripts = document.getElementsByTagName('script');
                for (var i = 0, l = scripts.length; i < l; i++) {
                    if (scripts[i].src === 'https://checkout.razorpay.com/v1/checkout.js') {
                        
                        
                        scripts[i].setAttribute("data-amount",total);
                        alert(scripts[i].getAttribute('data-amount'));
                        break;
                    }
                }
                
                document.getElementById("s1").setAttribute("data-amount",total+"");


            }
            function go3()
            {
                document.getElementById("form1").action = "paynow.jsp";
                return true;

            }
            function go4()
            {
                document.getElementById("form1").action = "paylater.jsp";
                return true;

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
        <%@include file="user_header.jsp"%>
        <div class="container" style="min-height: 523px">
            
        <form action="success.jsp" method="post" id="form1">
            <%String sp_email = request.getParameter("sp_email");

                String myemail = session.getAttribute("user_email").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = stmt.executeQuery("select * from service_provider where sp_email=\'" + sp_email + "\'");
                if (rs.next()) {
                    String name = rs.getString("name");
                    String photo = rs.getString("photo");

            %>
            <input type="hidden" value="<%=sp_email%>" id="sp_email" name="sp_email"/>
            <label>You are booking with </label>
            <img src="<%= photo%>" style="height:150px;width:150px" /><%=name%>

            <input type="date" name="date" id="date1" style="margin-right: 40px"/><input type="button"class="btn btn-success" style="background: rgb(25,52,81);color:white" value="Fetch" onclick="fetch()"/>
            <div id="d">
            </div>


            <label id="l1">Total Price:0</label>
            <input type="hidden"  name="tb" id="tb"/>


            <%
                }
            %>



            
        </form>
        </div>
       <%@include file="footer.jsp"%>
     
    </body>


</html>
