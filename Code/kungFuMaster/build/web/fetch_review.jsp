<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<% String sp_email = request.getParameter("sp_email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from ratings where sp_email=\'" + sp_email + "\'");
%>

<% while (rs.next()) {

%>

<div class="row" style="padding: 10px">
    <%            String review = rs.getString("review");
        int rating = rs.getInt("num");
        String user_email = rs.getString("user_email");
        String d = rs.getString("datetime");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
        Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        ResultSet rs1 = stmt1.executeQuery("select * from user where email=\'" + user_email + "\'");

        if (rs1.next()) {
            String name = rs1.getString("name");
            for (int i = 1; i <= rating; i++) {
    %>

    <img src="./filled_star.png"  height="25" width="25">
    <%
        }
        for (int i = 1; i <= 5 - rating; i++) {
    %>
    <img src="./empty_star.png"  height="25" width="25">
    <%
        }
        String d1 = d.substring(0, 4);
        String d2 = d.substring(5, 7);
        String d3 = d.substring(8, 10);
//ArrayList <String>al = new ArrayList<>();
//ArrayList <String>bl = new ArrayList<>();`
//ArrayList <String>bl = new ArrayList<>();`
//ArrayList <String>bl = new ArrayList<>();`
//ArrayList <String>bl = new ArrayList<>();`
//ArrayList <String>bl = new ArrayList<>();`
//ArrayList <String>bl = new ArrayList<>();`
//ArrayList <String>bl = new ArrayList<>();`
//al.add("01");
//d3 = bl.get(al.indexOf(d2));

        String a[] = {"01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"};
        String m[] = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

        for (int i = 0; i <= 11; i++) {
            if (d2.equals(a[i])) {
                d2 = m[i];
                break;
            }
        }
    %>


    <div style="float: right" > <strong> <label style="font-style: 20px"> <%=d3%>-<%=d2%>-<%=d1%></label> </strong> </div><br>

    <div class="glyphicon glyphicon-user" >  <%=name%></div><br>
    <div class="glyphicon glyphicon-hand-right"> <%=review%></div><br>

    <%
        }
    %>
</div>
<%
    }
%>
