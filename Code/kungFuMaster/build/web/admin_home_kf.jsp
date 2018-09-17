<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body style="background: url('kung_fu2.jpg')no-repeat; background-position: center; height: 100%; background-size: cover;">
        <%@include file="header_admin_kf.jsp"%>
        <div class="container" style="min-height:523px">
    <!-- <center>
        <%
         String email=session.getAttribute("email").toString();
         String username="";
         Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
        Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = stmt.executeQuery("select* from admin_login where email=\'"+email+"\'");

            if(rs.next())
            {
                username = rs.getString("username");
            }

        %>
     
        <h1>Welcome <%= username %></h1>
   
        </center>
        -->
            <div class="col-sm-12">
                <center><h1 style="font-size: 50px;color: #00cccc; font-weight: bold">Choose <label style="color: #204d74;">Option</label></h1></center>
            </div>
       
        <div class="row" style="margin-bottom: 10px;margin-left: 80px; margin-top: 100px ">
            <div class="col-sm-3" style="background: url('kung_fu_header_img.jpg')no-repeat; background-position: center; height: 100%; background-size: cover;background-color: rgb(25,52,81);height: 250px;margin-left: 20px; text-align: center; padding-top: 100px">
                <a href="student_search_kf.jsp" style="color: white;font-size: 25px">Student Information</a>
            </div>
            <div class="col-sm-3" style="background: url('kung_fu_header_img.jpg')no-repeat; background-position: center; height: 100%; background-size: cover;background-color: rgb(25,52,81);margin-left:  3px;height: 250px;margin-left: 100px; text-align: center; padding-top: 100px">
                <a href="mark_attendance_kf.jsp" style="color: white;font-size: 25px">Mark Attendance</a>
            </div>
             <div class="col-sm-3" style="background: url('kung_fu_header_img.jpg')no-repeat; background-position: center; height: 100%; background-size: cover;background-color: rgb(25,52,81);margin-left: 3px;height: 250px;margin-left: 100px; text-align: center; padding-top: 100px">
                <a href="register_stu_kf.jsp" style="color: white;font-size: 25px">Register Student</a>
            </div>
        </div>
        <div class="row" style="margin-bottom: 10px;margin-left: 80px; margin-top: 70px ">
            <div class="col-sm-3" style="background: url('kung_fu_header_img.jpg')no-repeat; background-position: center; height: 100%; background-size: cover;background-color: rgb(25,52,81);height: 250px;margin-left: 20px; text-align: center; padding-top: 100px">
                <a href="fee_type_kf.jsp" style="color: white;font-size: 25px">Fee Type</a>
            </div>
            <div class="col-sm-3" style="background: url('kung_fu_header_img.jpg')no-repeat; background-position: center; height: 100%; background-size: cover;background-color: rgb(25,52,81);margin-left:  1.5px;height: 250px;margin-left: 100px; text-align: center; padding-top: 100px">
                <a href="update_class_kf.jsp" style="color: white;font-size: 25px">Update Schedule</a>
            </div>
             <div class="col-sm-3" style="background: url('kung_fu_header_img.jpg')no-repeat; background-position: center; height: 100%; background-size: cover;background-color: rgb(25,52,81);margin-left: 1.5px;height: 250px;margin-left: 100px; text-align: center; padding-top: 100px">
                <a href="student_fee_payment_before_kf.jsp" style="color: white;font-size: 25px">Student Fee Payment</a>
            </div>
            
        </div>
       
        </div>
           <%@include file="footer.jsp"%>
    </body>
</html>
