<%@page import="java.util.Calendar"%>
<%@page import="java.sql.*"%>
<%
            String b_id1 = request.getParameter("name");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn4 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt4 = conn4.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs4 = stmt4.executeQuery("select * from booking where booking_id=\'"+ b_id1 +"\'");
            if (rs4.next()) 
            {
                rs4.deleteRow();
            }
        %>
       
                
  <div class="container">

            <div id="booking">
                <h1>My Booking</h1>
                <div class="form-group">  </div>
                    <% String user_email = session.getAttribute("user_email").toString();
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        ResultSet rs = stmt.executeQuery("select * from booking where user_email=\'" + user_email + "\'");
                        if (rs.next()) {
                            rs.previous();
                    %>


                <table class="table table-hover">
                    <thead class="" style="background: rgb(25,52,81);color:white">
                        <tr>
                            <td>Booking Id</td>
                            <td>Date</td>
                            <td>Total Price</td>
                             <td>Service Provider</td>
                            <td>Time Slot</td>
                            <td></td>
                        </tr>
                    </thead>
                    <% while (rs.next()) {
                            int b_id = rs.getInt("booking_id");
                            Date d1 = rs.getDate("date");
                            Calendar cl=Calendar.getInstance();
                            java.sql.Date d2=new java.sql.Date(cl.getTimeInMillis());
                             String sp_email = rs.getString("sp_email");
                            int price = rs.getInt("totalprice");
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                            Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                            ResultSet rs1 = stmt1.executeQuery("select * from service_provider where sp_email=\'" + sp_email + "\'");
                            if (rs1.next()) {
                                String name = rs1.getString("name");
                                String photo = rs1.getString("photo");

                    %> 

                    <tr>
                        <td><%=b_id%></td> 
                        <td><%=d1%></td> 
                        <td><%=price%></td> 
                        <td> <img src="<%=photo%>" style="width:100px;height: 100px"/><br>
                      <%=name%>

                        <td>
                            <%
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                                ResultSet rs2 = stmt2.executeQuery("select * from booking_detail where b_id=\'" + b_id + "\'");
                                while (rs2.next()) {
                                    int start_hr = rs2.getInt("start_hr");
                                    int end_hr = rs2.getInt("end_hr");
                             if (start_hr <= 12) {
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
                        <%
                            if(d1.compareTo(d2)>0)
                            {
                        %>
                        <td>
                            <input type="button" class="btn-success" value="Cancel" onclick="del('<%=b_id%>')" style="background: rgb(25,52,81);color:white"/>
                        </td>
                        <%
                            }
else
{
%>
<td>
    Already Attended
</td>


<%}
                        %>


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
        </div>