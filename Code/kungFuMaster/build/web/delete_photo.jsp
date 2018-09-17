<%@page import="java.sql.*"%>
<%
    String id=request.getParameter("id");
       Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
      Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
      ResultSet rs = stmt.executeQuery("select * from work_gallery where gallery_id=\'" + id + "\'");
   if(rs.next())
   {
   rs.deleteRow();
   response.sendRedirect("service_provider_home.jsp?msg=Photo_Deleted_Succesfully");
   }
%>