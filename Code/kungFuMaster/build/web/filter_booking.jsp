<%@page import="java.sql.*"%>
<div class="container">

    <div id="booking">
        <h1>My Booking</h1>
        <div class="form-group"> <label  style="margin-left:700px"> Filter According To Date</label><input type="date" name="date"/>
            <input type="button" value="Filter" class="btn btn-success" style="background: rgb(25,52,81);color:white" onclick="filter()"/>   </div>

    <%            String sp_email = session.getAttribute("sp_email").toString();
                      String date1=request.getParameter("date1");
                      Class.forName("com.mysql.jdbc.Driver");
                      Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                      Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                      ResultSet rs = stmt.executeQuery("select * from booking where sp_email=\'" + sp_email + "\' and date=\'" +date1+ "\'");
                      if (rs.next()) {
                          rs.previous();
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
            <% while (rs.next()) {
                    int b_id = rs.getInt("booking_id");
                    String date = rs.getString("date");
                    String user_email = rs.getString("user_email");
                    int price = rs.getInt("totalprice");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                    Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs1 = stmt1.executeQuery("select * from user where email=\'" + user_email + "\'");
                    if (rs1.next()) {
                        String name = rs1.getString("name");

            %> 
            <input type="hidden" value=<%=date%> name="date1"/>
            <tr>
                <td><%=b_id%></td> 
                <td><%=date%></td> 
                <td><%=name%></td> 
                <td><%=price%></td> 

                <td>
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                        Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        ResultSet rs2 = stmt2.executeQuery("select * from booking_detail where b_id=\'" + b_id + "\'");
                        while (rs2.next()) {
                            int start_hr = rs2.getInt("start_hr");
                            int end_hr = rs2.getInt("end_hr");
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
                    <input type="button" class="btn-success" value="Delete" onclick="cancel('<%=b_id%>','<%=date1%>')" style="background: rgb(25,52,81);color:white"/>
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
</div>








