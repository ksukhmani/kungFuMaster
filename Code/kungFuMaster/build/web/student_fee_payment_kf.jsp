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
               alert("Fee Submitted");
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
        <center><label style="font-size: 40px;color: rgb(25,52,81)">Fee Types</label></center>
    <div class="container-fluid" >
        <div class="col-sm-10 col-sm-offset-1" data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:white;margin-top: 10px;border: solid 2px black; padding: 0px">
                    
                <div  data-toggle="collapse" data-target="#basic" style="background: rgb(25,52,81);color:white;font-size:20px; padding: 10px">Basic Details <span class="glyphicon glyphicon-plus" style="float: right"></span></div>
                      <div class="collapse in" id="basic">
                          <div style="background-color: beige">

                        <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label style="font-size: 15px;color: rgb(25,52,81);margin-left: 40px">TYPE</label>
                            </div>
                            <div class="col-sm-3">
                                <label style="font-size: 15px;color: rgb(25,52,81);margin-left: 50px">AMOUNT</label>
                            </div>
                            <div class="col-sm-3">
                                <label style="font-size: 15px;color: rgb(25,52,81);margin-left: 50px">ENTER AMOUNT</label>
                            </div>
                        </div>
        
        
        <%  
           
          Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs2 = stmt2.executeQuery("select * from fee_type");
             while(rs2.next()) {
                   String fee_type = rs2.getString("fee_type");
                   String fee_amount = rs2.getString("fee_amount");
                  %>
                   
                  <form  class="form-horizontal" method="post">
                     
                        <div class="row" style="padding: 10px">
                         <div class="form-group">
                            <div class="col-sm-3">
                                <input type="text" value="<%=fee_type%>" class="form-control"  style="width: 250px;margin-left: 40px;margin-right: 40px" />
                            
                            </div>
                            <div class="col-sm-3">
                                <input type="text" value="$<%=fee_amount%>" class="form-control"  style="width: 250px;margin-left: 40px" />
                                
                            </div>
                            <div class="col-sm-3">
                                <input type="text"  class="form-control" name="" style="width: 250px;margin-left: 40px" />
                                
                            </div>
                        </div>
                        </div>
                            
                
                       
                    
                   
                   
                   
        <%
                }
              %>
              <center>  <input type="submit" class="btn btn-success" value="Submit Fees"  style="background: rgb(25,52,81);color:white;margin-top:40px;font-size: 15px" onclick="go()"/></center><br><br>
                  </form>
                      </div>
                      </div>
                      </div>
    </div>
</body>
</html>