<%@page import="java.sql.*"%>
<%
    String email =request.getParameter("email");
    String name =request.getParameter("name");
    String password =request.getParameter("password");
    String phone= request.getParameter("phone");
    String sec_ques = request.getParameter("security_ques");
    String sec_ans = request.getParameter("security_ans");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from user where email=\'" + email + "\'");
    if (rs.next())
    {
        response.sendRedirect("user_signup.jsp?msg=You are Already Registered");

    } 
    else 
    {   rs.moveToInsertRow();
        rs.updateString("email", email);
        rs.updateString("phone", phone);
        rs.updateString("name", name);
        rs.updateString("password", password);
        rs.updateString("security_ques", sec_ques);
        rs.updateString("security_ans", sec_ans);
        rs.insertRow();
        response.sendRedirect("user_signup.jsp?msg=signup successful");
    }
%>
