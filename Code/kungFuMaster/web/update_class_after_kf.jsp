
<%@page import="java.sql.*"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date.*" %>
<%@page import="java.lang.*" %>
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
           
           function go123()
           {
               alert("Schedule Updated");
           }
    
            
            </script>
            
        
    </head>
    <body>
        
    <div class="container-fluid" >
        
               <div class="col-sm-10 col-sm-offset-1"   style="background-color:white;margin-top: 10px; padding: 0px">
                    
                <div  data-toggle="collapse" data-target="#basic" style="background: rgb(25,52,81);font-size:20px; padding: 10px;height:70px;margin-top: 20px"> 
                      <div class="collapse in" id="basic" >
                          <center><label style="font-size: 40px;color: white;margin-bottom: 10px">Update Class Schedule</label></center>
                          <div style="background-color: beige;border-color: black;border: solid">
                         <% String class_level=request.getParameter("class");  
                         %>
                          

                        <div class="row" style="padding: 10px">

                            <div class="col-sm-4">
                                <label style="font-size: 20px;color: rgb(25,52,81);margin-left: 30px;margin-top: 40px">Select Class to Update</label>
                            </div>
                            
                            <div class="col-sm-3" style="margin-top: 40px">
                                <select name="class" >
                                    <option  ><%=class_level%></option>
                                    <option value="beginner" >Beginner</option>
                                    <option value="Intermediate" >Intermediate</option>
                                    <option value="Advance" >Advance</option>
                                </select>
                            </div>
                            <div class="col-sm-3">
                            <input type="submit" value="Show Details"  class="btn btn-success"  style="background: rgb(25,52,81);color:white;margin-top: 40px"/> 
                            </div>
                        </div>
                          </div>      
                          
                      </div>
                          
                     <%     
                         
                         Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs2 = stmt2.executeQuery("select * from class_info where class_level=\'"+class_level+"\'");
                
             while(rs2.next()) {
                 String class_day=rs2.getString("class_day");
                 Time class_time=rs2.getTime("class_time");
             
              %>
              <div style="background-color: beige;border-color: black;border: solid">
              <form method="post" >
                        <div class="row" style="padding: 10px">
                             
                            <div class="col-sm-3">
                                <label style="font-size: 20px;color: rgb(25,52,81);margin-left: 30px;margin-top: 40px">Day</label>
                            </div>
                            
                            <div class="col-sm-3">
                                <input type="text" style="font-size: 20px;color: rgb(25,52,81);margin-left: 30px;margin-top: 40px" value="<%= class_day%>" />
                            </div>
                        </div>
                            
                            <div class="col-sm-3">
                                <label style="font-size: 20px;color: rgb(25,52,81);margin-left: 22px;margin-top: 20px">Time</label>
                            </div>
                            
                            <div class="row" style="padding: 10px">
                            <div class="col-sm-3">
                                <input type="text" style="font-size: 20px;color: rgb(25,52,81);margin-left: 30px;margin-top: 17px" value="<%= class_time%>" />
                            </div>
                            
                           
                        </div>
                            <center>    <input type="submit" value="Submit Changes"  class="btn btn-success"  style="background: rgb(25,52,81);color:white;margin-top: 20px" onclick="go123()"/></center> 
                          
              </form>
                                <%
                                    }
%>
              </div>
                      </div> 
              </div> 
                      
                      
    </div>
   
</body>
</html>