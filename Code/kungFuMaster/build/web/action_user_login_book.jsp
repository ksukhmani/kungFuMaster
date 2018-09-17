<%@page import="java.sql.*"%>
<%
        String email=request.getParameter("email");
        String password=request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal","root","komal");
        Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = stmt.executeQuery("select* from user where email=\'"+email+"\' and password=\'"+password+"\'");
      if(rs.next())
      {
          session.setAttribute("user_email",email);
          response.sendRedirect("book_service_provider.jsp");
          
      }
      else
      {
          response.sendRedirect("service_provider_detail.jsp?msg=Invalid email/password");
      }
 %>
