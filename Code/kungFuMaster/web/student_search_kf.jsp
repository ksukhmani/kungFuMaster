<%-- 
    Document   : student_search
    Created on : Jun 17, 2018, 5:36:22 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: url('kung_fu2.jpg')no-repeat;background-position: center; height: 100%; background-size: cover;">
        <%@include file="header_admin_kf.jsp"%>
        <div class="container" style="background-color: beige;height: 500px;width: 600px;margin-top: 90px">
        <div  style="background-color: rgb(25,52,81); height:50px;width: 570px ">
            <center><label style="color: white; font-size: 40px;"><b>Search Student</b></label></center>
        </div>
            <form action="stu_info_kf.jsp" class="form-horizontal" method="post">
                
            
                       
                       <div class="form-group">
                           <label class="col-sm-4" style="color: rgb(25,52,81);font-size: 25px;margin-top: 55px"><b>First name</b></label>
                    <div class="col-sm-8" style="margin-top: 55px"><input type="text" class="form-control"   name="stu_fname" id="fn" onblur="check()" required/></div></div>
                       
            <div class="form-group">
                           <label class="col-sm-4" style="color: rgb(25,52,81);font-size: 25px;margin-top: 20px"><b>Last name</b></label>
                    <div class="col-sm-8" style="margin-top: 20px"><input type="text" class="form-control"   name="stu_lname" id="ln" onblur="check()" required/></div></div>
            
                    <div class="form-group">
                           <label class="col-sm-4" style="color: rgb(25,52,81);font-size: 25px;margin-top: 20px"><b>Date of Birth</b></label>
                    <div class="col-sm-8" style="margin-top: 20px"><input type="text" class="form-control"   name="stu_dob" id="dob" onblur="check()" required/></div></div>
                    
                    <center>  <input type="submit" class="btn btn-success" value="SUBMIT"  style="background: rgb(25,52,81);color:white;margin-top:40px;font-size: 25px"/></center>
                    
            </form>
            </div>
        
    </body>
</html>
