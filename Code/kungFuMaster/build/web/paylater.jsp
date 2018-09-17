
<%@page import="java.sql.*"%>
<%
    String sp_email = request.getParameter("sp_email");
    String date1 = request.getParameter("date");
    int price = Integer.parseInt(request.getParameter("tb"));
    String user_email = session.getAttribute("user_email").toString();

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from booking");
    {
        rs.moveToInsertRow();
        rs.updateString("date",date1);
        rs.updateInt("totalprice",price);
        rs.updateString("user_email", user_email);
        rs.updateString("sp_email", sp_email);
        rs.insertRow();

    }
  
ResultSet rs1 = stmt.executeQuery("select max(booking_id) as b1 from booking");
int bid=0;
if(rs1.next())
{
bid=rs1.getInt("b1");
}
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
Statement stmt3 = conn3.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
ResultSet rs3 = stmt3.executeQuery("select * from booking_detail");
String s[]=request.getParameterValues("cb");
for(int i=0;i<s.length;i++)
{
int st_slot,end_slot;
st_slot=Integer.parseInt(s[i]);
end_slot=st_slot+1;
rs3.moveToInsertRow();
rs3.updateInt("start_hr",st_slot);
rs3.updateInt("end_hr",end_slot);
rs3.updateInt("b_id",bid);
rs3.insertRow();
}

%>
<h1>Booking Succesful</h1>
