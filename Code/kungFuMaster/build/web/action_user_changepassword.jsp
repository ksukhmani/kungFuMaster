<%@page import="java.sql.*"%>
<%
        String email=(String)session.getAttribute("user_email");
        String old_password=request.getParameter("op");
        String new_password=request.getParameter("np");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal","root","komal");
        Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = stmt.executeQuery("select* from user where email=\'"+email+"\' and password=\'"+old_password+"\'");
      if(rs.next())
      {
         rs.updateString("password",new_password);
         rs.updateRow();
         response.sendRedirect("user_login.jsp?msg=password changed successfully");
      }
      else
      {
               response.sendRedirect("user_changepassword.jsp?msg=Invalid credentials");

      }
 %>
