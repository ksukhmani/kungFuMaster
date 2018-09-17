
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
           
    
    
            
            </script>
            
        
    </head>
    <body>
        
    <div class="container-fluid" >
        
               <div class="col-sm-10 col-sm-offset-1"   style="background-color:white;margin-top: 10px; padding: 0px">
                    
                <div  data-toggle="collapse" data-target="#basic" style="background: rgb(25,52,81);font-size:20px; padding: 10px;height:70px;margin-top: 20px"> 
                      <div class="collapse in" id="basic" >
                          
                          <center><label style="font-size: 40px;color: white;margin-bottom: 10px">Update Class Schedule</label></center>
                          <div style="background-color: beige;border-color: black;border: solid">
                          <form action="update_class_after_kf.jsp" method="post">

                        <div class="row" style="padding: 10px">

                            <div class="col-sm-4">
                                <label style="font-size: 20px;color: rgb(25,52,81);margin-left: 30px;margin-top: 40px">Select Class to Update</label>
                            </div>
                            <div class="col-sm-3" style="margin-top: 40px">
                                <select name="class" >
                                    <option  >----select----</option>
                                    <option value="beginner" >Beginner</option>
                                    <option value="Intermediate" >Intermediate</option>
                                    <option value="Advance" >Advance</option>
                                </select>
                            </div>
                            <div class="col-sm-3">
                            <input type="submit" value="Show Details"  class="btn btn-success"  style="background: rgb(25,52,81);color:white;margin-top: 40px"/> 
                            </div>
                        </div>
                              
                          </form>
        
       
                          </div>     
              </div>
                      </div> 
              </div> 
                      
                      
    </div>
   
</body>
</html>