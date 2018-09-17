 <%@page import="java.sql.*"%>
<%
            String b_id = request.getParameter("name");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from booking where booking_id=\'"+ b_id +"\'");
            if (rs.next()) 
            {
                rs.deleteRow();
            }
        %>
       
                
  <div class="container">
            
           
            <h1>My Bookings</h1>
            <% String sp_email = session.getAttribute("sp_email").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs1 = stmt1.executeQuery("select * from booking where sp_email=\'" + sp_email + "\'");
                if (rs1.next()) {
                    rs1.previous();
            %>


            <table class="table table-hover">
                <thead class="" style="background: rgb(25,52,81);color:white">
                    <tr>
                        <td>Booking Id</td>
                        <td>Date</td>
                        <td>Username</td>
                        <td>Total Price</td>
                        <td>Time Slot</td>
                         <td></td>
                    </tr>
                </thead>
                <% while (rs1.next()) {
                        int bid = rs1.getInt("booking_id");
                        String date = rs1.getString("date");
                        String user_email = rs1.getString("user_email");
                        int price = rs1.getInt("totalprice");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                        Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        ResultSet rs2 = stmt2.executeQuery("select * from user where email=\'" + user_email + "\'");
                        if (rs2.next()) {
                            String name = rs2.getString("name");

                %>   
                <tr>
                    <td><%=bid%></td> 
                    <td><%=date%></td> 
                    <td><%=name%></td> 
                    <td><%=price%></td> 
                  
                    <td>
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                            Statement stmt3 = conn3.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                            ResultSet rs3 = stmt3.executeQuery("select * from booking_detail where b_id=\'" + bid + "\'");
                            while (rs3.next()) {
                                int start_hr = rs3.getInt("start_hr");
                                int end_hr = rs3.getInt("end_hr");
                        %>
                        <% if (start_hr <= 12) {
                        %>

                        <%=start_hr%>am
                        <% } else {

                        %>
                        <%= (start_hr - 12)%>pm

                        <%
                            }
                            if (start_hr + 1 <= 12) {
                        %>

                        -<%=start_hr + 1%>am
                        <% } else {

                        %>
                        -<%= (start_hr + 1) - 12%>pm
                        <%
                    }%>
                    <br>

                        <%}%>

                    </td>

                    <td>
                        <input type="button" class="btn-success" value="Delete" onclick="del('<%=b_id%>')" style="background: rgb(25,52,81);color:white"/>
                    </td>


                </tr>

                <%  }
                    }

                } else {
                %>
                <h1>No Booking</h1>
                <%}
                %>

            </table>
            </div>
        