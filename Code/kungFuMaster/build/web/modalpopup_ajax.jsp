
<%@page import="java.sql.*"%>
<%      String sub_category=request.getParameter("name");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs1 = stmt1.executeQuery("select * from subcategories where sub_cat_name=\'" + sub_category + "\'");
                while(rs1.next()) 
                {
                 
                    String photo = rs1.getString("photo");
                     String description = rs1.getString("description");
                   

            %>
             <div  style="background: rgb(25,52,81)" ><label style="font-family: cursive;font-size: 25px;color:white"><b><%=sub_category%></b></label></div>
           <img src="<%=photo%>"   style="width: 200px; height: 150px;margin: 20px; border: solid 1px black"/>
               
                
                    <p style="font-family:initial;font-size: 20px;margin-left: 10px;margin-right: 10px"><%=description%></p><br><br><br>
            
            <%
                }
                  
            %>
           
              
              <%      
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs2 = stmt2.executeQuery("select count(*) as c1 from service_provider where sub_category=\'" + sub_category + "\'");
                if(rs2.next())
                {
                    int c1=rs2.getInt("c1");
               
                %>
                <label><%= c1 %> service provider(s) under <%=sub_category %> </label>
                <%
                    if(c1>0)
                    {
                        %>
                       
                        <a href="public_view_sp.jsp?name=<%=sub_category %>"><input type="button" value="Continue" class="btn btn-success" style="background: rgb(25,52,81);color:white"/></a>
                        <%
                    }
                    
                    }
                  %>