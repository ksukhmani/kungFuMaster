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
        <center><label style="font-size: 40px;color: rgb(25,52,81)">Student Attendance Record</label></center>
    <div class="container-fluid" >
        <%  
            String d1=request.getParameter("d1");
           SimpleDateFormat sdf=new SimpleDateFormat("YYYY-MM-DD");
           Date d11=sdf.parse(d1);
           
String d2=request.getParameter("d2");
           SimpleDateFormat sdf1=new SimpleDateFormat("YYYY-MM-DD");
           Date d22=sdf1.parse(d2);

        %>
        <div class="col-sm-10 col-sm-offset-1"   style="background-color:white;margin-top: 10px;border: solid 2px black; padding: 0px">
                    
                <div  data-toggle="collapse" data-target="#basic" style="background: rgb(25,52,81);font-size:20px; padding: 10px;height: 60px"> 
                      <div class="collapse in" id="basic">
                         
                         <div class="row" style="padding: 10px">

                            <div class="col-sm-2">
                                <label style="font-size: 20px;color: rgb(25,52,81);color: white">From</label>
                            </div>
                             
                             <div class="col-sm-3">
                                 <input type="text" value="<%=d1%>" style="font-size: 17px"/>
                            </div>
                             
                            <div class="col-sm-2">
                                <label style="font-size: 20px;color: rgb(25,52,81);color: white">To</label>
                            </div>
                             <div class="col-sm-3">
                                 <input type="text" value="<%=d2%>" style="font-size: 17px" /> 
                            </div>
                            
                         </div> 
                       <div style="background-color: beige;border-color: black;border: solid">
                        <div class="row" style="padding: 10px">

                            <div class="col-sm-4">
                                <label style="font-size: 20px;color: rgb(25,52,81);margin-left: 30px">Date</label>
                            </div>
                            <div class="col-sm-8">
                                <label style="font-size: 20px;color: rgb(25,52,81);margin-left: 30px">Class Attended</label>
                            </div>
                            
                        </div>
        
        
        <%  
           String status="";
           int stu_id= (Integer)session.getAttribute("stu_id");
          Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs2 = stmt2.executeQuery("select * from attendance where stu_id=\'"+stu_id+"\'");
                
             while(rs2.next()) {
                 String begin = rs2.getString("beginner");
                   String inter = rs2.getString("intermediate");
                   String adv = rs2.getString("advance");
                   Date date = rs2.getDate("date");
                   System.out.println("Begi="+begin+" inter="+inter+" adv="+adv);
                   if(begin.equals("P"))
                   {
                       status="Beginner";
                   }
                   else if(inter.equals("P"))
                   {
                       status="Intermediate";
                   }
                   else if(adv.equals("P"))
                   {
                       
                       status="Advance";
                   }
                   else
                   {
                       status="None";
                   }
                  %>
                   
                  <div class="row" style="padding: 10px">

                      
                      <div class="col-sm-3">
                                <label style="font-size: 15px;margin-left: 30px"><%=date%></label>
                            </div>
                            <div class="col-sm-8">
                                
                            
                           <label style="font-size: 15px;margin-left: 130px"><%=status%></label>
                            
                        </div>
                     
                                    
             
                      
                    
                   </div>
                 
                  
        <%
            }
  
              %>
                  
                  </div>
              </div>
                </div>
        </div>
              
                      
                      
    </div>
   
</body>
</html>