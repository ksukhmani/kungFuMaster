<%@page import="java.sql.*"%>
<%
    String value=request.getParameter("value");
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
     Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
     ResultSet rs = stmt.executeQuery("select * from service_provider where name like \'"+value+"%\'");
     if(value.isEmpty())
     {
     }
     else
     {
    while(rs.next())
    {
    String sp_email=rs.getString("sp_email");    
    String photo=rs.getString("photo");
    String name=rs.getString("name");
    String city=rs.getString("city");
    %>
    <div class="row" style="border-bottom:solid 1px black;padding-left:20px;padding-bottom:5px;margin:5px">
    <img src="<%=photo%>" style="height:40px;width:40px"/>
    <a href="service_provider_detail.jsp?sp_email=<%=sp_email%>" style="color:black"><label ><%=name%></label></a>
    <label style="padding-left:0px;margin-left: 0px"><%=city%></label>
    </div>
        
  <% }}
%>