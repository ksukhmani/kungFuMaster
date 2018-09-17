<%@page import="java.sql.*"%>
<%
    String user_email = session.getAttribute("user_email").toString();
     String sp_email = request.getParameter("sp_email");
    int n = Integer.parseInt(request.getParameter("n"));
    String ta=request.getParameter("ta");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
    Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs2 = stmt2.executeQuery("select * from ratings");
   if( rs2.next());
    {  rs2.moveToInsertRow();
       rs2.updateInt("num",n);
       rs2.updateString("user_email",user_email);
       rs2.updateString("review",ta);
       rs2.updateString("sp_email",sp_email);
       rs2.insertRow();
       %>
   
   <%}
%> 