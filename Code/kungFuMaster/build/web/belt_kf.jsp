<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.7-dist/css/lightbox.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-3.3.7-dist/js/lightbox.min.js" type="text/javascript"></script>
        <title>JSP Page</title>
        <script type="text/javascript">
           
    
    function go()
           {
               alert("Fee Information Updated");
           }
           
           function go2()
           {
               alert("Fee Type Added");
           }
           
           function go3()
           {
               alert("Fee Type Removed");
           }
            
            </script>
            
        
    </head>
    <body>
        <center><label style="font-size: 40px;color: rgb(25,52,81)">Belt Details</label></center>
    <div class="container-fluid" >
        <div class="col-sm-10 col-sm-offset-1" data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:white;margin-top: 10px;border: solid 2px black; padding: 0px">
                    
                <div  data-toggle="collapse" data-target="#basic" style="background: rgb(25,52,81);color:white;font-size:20px; padding: 10px;height: 40px"> <span class="glyphicon glyphicon-plus" style="float: right"></span></div>
                      <div class="collapse in" id="basic">
                             <div style="background-color: beige;border-color: black;border: solid">
                        <div class="row" style="padding: 10px">

                            <div class="col-sm-4">
                                <label style="font-size: 20px;color: rgb(25,52,81);margin-left: 30px">Belt Color</label>
                            </div>
                            <div class="col-sm-8">
                                <label style="font-size: 20px;color: rgb(25,52,81);margin-left: 30px">Date Awarded</label>
                            </div>
                        </div>
        
        
        <%  
           int stu_id= (Integer)session.getAttribute("stu_id");
          Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs2 = stmt2.executeQuery("select * from belt_award where stu_id=\'"+stu_id+"\'");
             while(rs2.next()) {
                   int belt_id = rs2.getInt("belt_id");
                   Date award_date = rs2.getDate("award_date");
            Class.forName("com.mysql.jdbc.Driver");
                Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
                Statement stmt3 = conn3.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                  
           ResultSet rs3 = stmt3.executeQuery("select * from belt_id where belt_id=\'"+belt_id+"\'");
                 while(rs3.next())
                 {
                     String belt_color=rs3.getString("belt_color");
                 

                  %>
                   
                  
                     
                        <div class="row" style="padding: 10px">
                         <div class="form-group">
                            <div class="col-sm-4">
                                <label  style="margin-left: 40px;margin-right: 40px;font-size: 15px" ><%=belt_color %></label>
                           
                            </div>
                            <div class="col-sm-8">
                                <label  style="margin-left: 40px;margin-right: 40px;font-size: 15px" ><%=award_date%></label>
                           
                            </div>
                        </div>
                        </div>
                            
                
                       
                    
                   
                 
                   
        <%
            }
                }
              %>
                             </div>
              </div>
                      </div>  
                      
                      
    </div>
    
</body>
</html>