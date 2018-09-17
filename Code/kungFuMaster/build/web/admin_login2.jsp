<%@page import="java.sql.*"%>
<%
        String email=request.getParameter("en");
        String password=request.getParameter("ps");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal","root","komal");
        Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = stmt.executeQuery("select* from admin where email=\'"+email+"\' and password=\'"+password+"\'");
      if(rs.next())
      {
          session.setAttribute("email",email);
          response.sendRedirect("admin_home.jsp?msg=Login Successful");
          
      }
      else
      {
          response.sendRedirect("admin_login1.jsp?msg=Invalid email/password");
      }
 %>

