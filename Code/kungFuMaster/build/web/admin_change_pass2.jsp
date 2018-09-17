<%-- 
    Document   : admin_change_pass2
    Created on : Apr 6, 2017, 10:54:21 AM
    Author     : B7
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <%
                String email = session.getAttribute("email").toString();
                String old_password=request.getParameter("op");
                String new_password=request.getParameter("np");
            
            Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal","root","komal");
        Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = stmt.executeQuery("select* from admin where email=\'"+email+"\'and password=\'"+old_password+"\'");

            if(rs.next())
            {
                rs.updateString("password",new_password);
                rs.updateRow();
                response.sendRedirect("admin_change_pass1.jsp?msg=Password updated successfully");
            }
            else
            {
                response.sendRedirect("admin_change_pass1.jsp?msg=Credentials do not match");
            }

        %>
            
        </form>
    </body>
</html>
