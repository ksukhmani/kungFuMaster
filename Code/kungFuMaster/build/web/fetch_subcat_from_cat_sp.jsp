<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
        
        
    </head>
    <body>
        
        
        <div  style="border-bottom: solid 1px black;margin-bottom: 20px"  >
            

            <% String category = request.getParameter("name");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs2 = stmt2.executeQuery("select * from category where c_name=\'" + category + "\'");
                while (rs2.next()) {

                    String photo = rs2.getString("photo");
                    String description = rs2.getString("description");
            %>
            <div  style="background-color:rgb(25,52,81)"><label style="font-family: cursive;font-size: 25px;color:white;padding:15px"><b><%=category%></b></label></div>
            <img src="<%=photo%>"   style="width: 200px; height: 150px;margin: 20px; border: solid 1px black"/>


            <p style="font-family:initial;font-size: 20px;margin-left: 10px;margin-right: 10px"><%=description%></p><br><br><br>
            <%
                }
            %>

        </div>

        <div class="row">   
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs1 = stmt1.executeQuery("select * from subcategories where category_name=\'" + category + "\'");
                while (rs1.next()) {

                    String sub_category = rs1.getString("sub_cat_name");
                    String photo = rs1.getString("photo");


            %>
            <div class="col-sm-4" >

                <div>
                    <div  >
                        <img src="<%=photo%>"   style="width: 200px; height: 150px;margin: 20px; border: solid 1px black"/>
                    </div>
                    <center><label style="font-family: cursive;color: brown"><%=sub_category%></label>
                        <input type="button" value="Explore" name="ex" data-toggle="modal" onclick="go2('<%=sub_category%>')" style="background-color:rgb(25,52,81);color: white" class="btn btn-success"/></center>
                </div>
            </div>    



            <%
                }
            %>
        </div>
          
           

    </body>
</html>