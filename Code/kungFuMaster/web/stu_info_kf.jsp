<%-- 
    Document   : stu_info_kf
    Created on : Jun 16, 2018, 8:24:24 PM
    Author     : DELL
--%>

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
    </head>
    <body>
        <%@include file="header_admin_kf.jsp"%>
    <center><label style="font-size: 40px;color: rgb(25,52,81)">Student Information</label></center>
    <div class="container-fluid" >
        
        <%  
            String stu_dob = request.getParameter("stu_dob");
          String stu_fname = request.getParameter("stu_fname");
          String stu_lname = request.getParameter("stu_lname");
          Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs2 = stmt2.executeQuery("select stu_id from student_id_table where stu_dob= \'"+stu_dob+"\' and stu_fname=\'"+stu_fname+"\' and stu_lname=\'"+stu_lname+"\'");
              if (rs2.next()) {
                   int stu_id = rs2.getInt("stu_id");
                    session.setAttribute("stu_id",stu_id);
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = stmt.executeQuery("select * from student_info where stu_id= \'"+stu_id+"\'");
                if (rs.next()) {
                      String joindate = rs.getString("stu_joindate");
                    String mobile = rs.getString("stu_mobile");
                    String email = rs.getString("stu_email");
                    String street = rs.getString("stu_street");
                    String city = rs.getString("stu_city");
                    String pin = rs.getString("stu_pincode");
                    


                Class.forName("com.mysql.jdbc.Driver");
                    Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
                    Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs1 = stmt1.executeQuery("select * from parents_info where stu_id=\'" + stu_id + "\'");
                    if (rs1.next()) {
                        String preferred_cont = rs1.getString("preferred_contact");
                        String m_name = rs1.getString("m_name");
                        String m_email = rs1.getString("m_email");
                        String m_contact = rs1.getString("m_mobile");
                        String f_name = rs1.getString("f_name");
                        String f_email = rs1.getString("f_email");
                        String f_contact = rs1.getString("f_mobile");
                    
                   ResultSet rs3 = stmt1.executeQuery("select belt_id from belt_award where stu_id=\'" + stu_id + "\'");
                     if (rs3.next()) {
                        String belt_id = rs3.getString("belt_id");
                        
                        ResultSet rs4 = stmt1.executeQuery("select * from belt_id where belt_id=\'" + belt_id + "\'");
                     if (rs4.next()) {
                        String belt_color = rs4.getString("belt_color");
                    
                    %>
                    
                    <div class="col-sm-10 col-sm-offset-1" style="background-color:white;margin-top: 10px;border: solid 2px black; padding: 0px">
                    <div  data-toggle="collapse" data-target="#basic" style="background: rgb(25,52,81);color:white;font-size:20px; padding: 10px">Basic Details <span class="glyphicon glyphicon-plus" style="float: right"></span></div>
                      <div class="collapse in" id="basic">
                            <div style="background-color: beige">
                        <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>First Name</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=stu_fname%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Last Name</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=stu_lname%></label>
                            </div>
                        </div>
                                
                    <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Date of Birth</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=stu_dob%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Join Date</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=joindate%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Current Rank</label>
                            </div>
                            <div class="col-sm-9">
                                <label>Black Belt</label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Mobile No.</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=mobile%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Email</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=email%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Street No.</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=street%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>City</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=city%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Pin Code</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=pin%></label>
                            </div>
                        </div>
                      </div>
                    </div>
                    </div>
    
                   <div class="col-sm-10 col-sm-offset-1" style="background-color:white;margin-top: 10px;border: solid 2px black; padding: 0px">
                    <div  data-toggle="collapse" data-target="#basic1" style="background: rgb(25,52,81);color:white;font-size:20px; padding: 10px">Parents' Detail <span class="glyphicon glyphicon-plus" style="float: right"></span></div>
                      <div class="collapse in" id="basic1">
                         <div style="background-color: beige">
                        <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Preferred Contact</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=preferred_cont%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Mother's Name</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=m_name%></label>
                            </div>
                        </div>
                                
                    <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Email</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=m_email%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Contact No.</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=m_contact%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Father's Name</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=f_name%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Email</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=f_email%></label>
                            </div>
                        </div>
                            
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <label>Contact No.</label>
                            </div>
                            <div class="col-sm-9">
                                <label><%=f_contact%></label>
                            </div>
                        </div>
                         </div>   
                            
                        </div>
                      </div>
                     
                    
                   <div class="col-sm-10 col-sm-offset-1" style="background-color:white;margin-top: 10px;border: solid 2px black; padding: 0px">
                    <div  data-toggle="collapse" data-target="#basic1" style="background: rgb(25,52,81);color:white;font-size:20px; padding: 10px">Other Information<span class="glyphicon glyphicon-plus" style="float: right"></span></div>
                      <div class="collapse in" id="basic1">
                            <div style="background-color: beige">
                        <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <a href='account_info_before_kf.jsp' style="font-size: 15px;color:rgb(25,52,81) "><b>Account Details</b>  </a>
                            </div>
                        </div>
                            <div class="row" style="padding: 10px">

                            <div class="col-sm-3">
                                <a href='attendance_report_before_kf.jsp' style="font-size: 15px;color:rgb(25,52,81)"><b>Attendance</b></a>
                            </div>
                            </div>
                            
                            <div class="row" style="padding: 10px">
                                <div class="col-sm-3">
                                    <a href='belt_kf.jsp' style="font-size: 15px;color:rgb(25,52,81)"><b>Belt Details</b></a>
                            </div>
                            </div>
                                <div class="row" style="padding: 10px">
                                <div class="col-sm-3">
                                    <a href='' style="font-size: 15px;color:rgb(25,52,81)"><b>Unregister Student</b></a>
                            </div>
                            
                        </div>
                      </div>
                   </div>
                   </div>
                    
                    
                    
                    
                    
                    
                    
                    
               <% }
                     }
                   }
                   }
                    }
                %>
             
    
    </div>
    


            
    </body>
</html>
