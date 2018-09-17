
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
<%
    String sp_email = request.getParameter("sp_email");
    String date1 = request.getParameter("date1");
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
String slots= request.getParameter("slots");
 
 StringTokenizer st=new StringTokenizer(slots,",");
   while(st.hasMoreTokens())
   {int start_hr,end_hr;
start_hr=Integer.parseInt(st.nextToken());
end_hr=start_hr+1;
rs3.moveToInsertRow();
{rs3.updateInt("start_hr",start_hr);
rs3.updateInt("end_hr",end_hr);
rs3.updateInt("b_id",bid);
rs3.insertRow();
}
   }

%>
<h1>Payment Successful.Thank you for purchasing with us.....</h1>
   </body>
</html>