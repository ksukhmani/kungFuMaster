<%@page import="java.sql.*"%>
<%
        String sp_email=request.getParameter("sp_email");
        String password=request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal","root","komal");
        Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = stmt.executeQuery("select* from service_provider where sp_email=\'"+sp_email+"\' and password=\'"+password+"\'");
      if(rs.next())
      {
          session.setAttribute("sp_email",sp_email);
          response.sendRedirect("service_provider_home.jsp");
          
      }
      else
      {
          response.sendRedirect("service_provider_login.jsp?msg=Invalid email/password");
      }
 %>
