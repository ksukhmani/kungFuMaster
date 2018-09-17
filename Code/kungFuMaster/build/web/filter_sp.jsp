<%@page import="java.sql.*"%>
<%         
           String city = request.getParameter("city");
            String sub_cat = request.getParameter("sub_cat");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs2 = stmt2.executeQuery("select count(*) as c1 from service_provider where sub_category='" + sub_cat + "' and city='" + city + "'");
            if (rs2.next()) {
                int c1 = rs2.getInt("c1");


        %>
        <label><%=c1%> Service Provider(s) under this subcategory</label>
        <label><%=sub_cat%></label>

        <%}
%>
 <div class="row" style="padding: 10px">
            <% ResultSet rs4 = stmt2.executeQuery("select * from service_provider where sub_category='" + sub_cat + "'and city='" + city +"'");
                while (rs4.next()) {
                    String name = rs4.getString("name");
                    String photo_sp = rs4.getString("photo");
                    String price = rs4.getString("per_hour_price");
                    String sp_email=rs4.getString("sp_email");
            %>
            
            <div class="col-sm-3" style="border: solid 2px black; margin-left: 10px">

                        <label style="font-size: 20px; font-style: italic; font-family: cursive"><%=name%></label><br>
                        <img src="<%=photo_sp%>" style="width: 220px;height: 200px"/><br>
                        <label style="font-size: 15px">Per_hour_price: <%=price%></label><br>
                        <a href="service_provider_detail.jsp?sp_email=<%=sp_email%>">   <input type="button" style="float: right;background: rgb(25,52,81);color:white" class="btn btn-success"  value="Book" onclick/></a>

                </div>
                <%
                    }
                %>

            </div>
