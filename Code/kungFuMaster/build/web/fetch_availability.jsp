<%@page import="java.sql.*"%>
<%String sp_email = request.getParameter("sp_email");
    String date1 = request.getParameter("date1");
    Class.forName("com.mysql.jdbc.Driver");
%>
<div class="container">

    <table class="table table-hover">

        <%      Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from service_provider where sp_email=\'" + sp_email + "\'");
            if (rs.next()) {
                int per_hour_price = Integer.parseInt(rs.getString("per_hour_price"));
                int starting_hour = Integer.parseInt(rs.getString("starting_hour"));
                int ending_hour = Integer.parseInt(rs.getString("ending_hour"));
                int bid = 0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt2 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);


        %>
        <input type="hidden" value="<%=per_hour_price%>" name="price" id="price" />
        <label>Price Per Hour-<%=per_hour_price%></label>
        <%
            for (int i = starting_hour; i < ending_hour; i++) {

                ResultSet rs2 = stmt2.executeQuery("select * from booking_detail where start_hr='" + i + "' and b_id in (select booking_id from booking where sp_email=\'" + sp_email + "\'and date=\'" + date1 + "\')");
                if (rs2.next()) {
        %>


        <tr>
            <td>
                <input type="checkbox" name="cb" value="<%=i%>" onchange="calculate()" disabled/>
            </td>
            <td>
                <% if (i <= 12) {
                %>

                <%=i%>am
                <% } else {

                %>
                <%= (i - 12)%>pm
                <%
                    }
                    if (i + 1 <= 12) {
                %>

                -<%=i + 1%>am
                <% } else {

                %>
                -<%= (i + 1) - 12%>pm
                <%
                    }%>


            </td>

            <td>
                <label style="color:red">Already Booked</label>
            </td>
        </tr>
        <%  } else {
        %>
        <tr>
            <td>
                <input type="checkbox" name="cb" value="<%=i%>" onchange="calculate()"/>
            </td>
            <td>
                <% if (i <= 12) {
                %>

                <%=i%>am
                <% } else {

                %>
                <%= (i - 12)%>pm
                <%
                    }
                    if (i + 1 <= 12) {
                %>

                -<%=i + 1%>am
                <% } else {

                %>
                -<%= (i + 1) - 12%>pm
                <%
                    }%>


            </td>

            <td>
                <label style="color: #0CD0C0">Available</label>
            </td>
        </tr>
        <%  }

                }
            }
        %>

    </table>

        
      

        <center>   <div class="form-group" >

            

<input type="submit"  class="btn btn-success" style="background: rgb(25,52,81);color:white"  value="Pay Now" onclick="return go3()"/>    

            <input type="submit"  class="btn btn-success" style="background: rgb(25,52,81);color:white"  value="Pay Later" onclick="return go4()"/>    
        </div>
        </center>







