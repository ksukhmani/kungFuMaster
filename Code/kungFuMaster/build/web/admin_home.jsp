<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="admin_header.jsp"%>
        <div class="container" style="min-height:523px">
    <center>
        <%
         String email=session.getAttribute("email").toString();
         String username="";
         Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal","root","komal");
        Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = stmt.executeQuery("select* from admin where email=\'"+email+"\'");

            if(rs.next())
            {
                username = rs.getString("username");
            }

        %>
        
        <h1>Welcome <%= username %></h1>
        </center>
        </div>
           <%@include file="footer.jsp"%>
    </body>
</html>
