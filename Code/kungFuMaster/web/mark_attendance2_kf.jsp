<%@page import="java.sql.*"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.getParameterValues("id");
            String femail= request.getParameter("femail");
    String fcontact= request.getParameter("fcontact");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu", "root", "admin");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from student_info where stu_email=\'" + email + "\'");
    if (rs.next())
       {   rs.moveToInsertRow();
        rs.updateString("stu_email", email);
        rs.updateDate(4,new java.sql.Date(jdate1.getTime()));
    }
            %>
    </body>
</html>
