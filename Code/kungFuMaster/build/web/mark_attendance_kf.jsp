
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Calendar"%>
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
               alert("Attendance Marked");
           }
            
            </script>
        
    </head>
    <body>
        <div class="container" style="background-color: beige;height: 800px">
            <div class="col-sm-12">
                <center><h1 style="font-size: 50px;color: #00cccc; font-weight: bold">Attendance <label style="color: #204d74;">Sheet</label></h1></center>
            </div>
            <% ArrayList<Integer> id = new ArrayList<Integer>();
               ArrayList<Integer> bi = new ArrayList<Integer>(); 
               ArrayList<Integer> in = new ArrayList<Integer>();
               ArrayList<Integer> ad = new ArrayList<Integer>();
               int i=0,j=0,k=0,l=0;
            %>
            <div class="row" style="background-color: rgb(25,52,81);margin-top: 90px">
                
                <div class="col-sm-3">
                                <label style="font-size: 20px;color: white">Student Number</label>
                            </div>
                <div class="col-sm-3">
                                <label style="font-size: 20px;color: white">Student Name</label>
                            </div>
                            <div class="col-sm-6">
                                <label style="font-size: 20px;color: white">Beginner</label>
                                <label style="font-size: 20px;color: white;margin-left: 80px;margin-right: 80px">Intermediate</label>
                                <label style="font-size: 20px;color: white">Advance</label>
                            </div>
                
            </div>
            
            <%
                       Class.forName("com.mysql.jdbc.Driver");
                                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu", "root", "admin");
                                Statement stmt2 = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                                ResultSet rs2 = stmt2.executeQuery("select * from student_id_table");
                                while (rs2.next()) {
                                    int stu_id= rs2.getInt("stu_id");  
                                     String stu_fname= rs2.getString("stu_fname");
                                     String stu_lname= rs2.getString("stu_lname");

                %>
            <form  class="form-horizontal" method="post">
               <div class="row">
                
                <div class="col-sm-3">
                                <label style="font-size: 15px;margin-top: 30px"><%=stu_id %></label>
                                <%
                                   
                                       id.add(stu_id);
                                       
                                    %>
                            </div>
                <div class="col-sm-3">
                                <label style="font-size: 15px;margin-top: 30px"><%=stu_fname %> <%= stu_lname%></label>
                            </div>
                            <div class="col-sm-6">
                                <input type="checkbox" name="cb1" style="margin-left: 20px;margin-top: 30px" >
                                 
                                                        
                                 <input type="checkbox" name="cb2"  style="margin-left: 180px ; margin-right: 180px;margin-top: 30px">
                        <input type="checkbox" name="cb3" style="margin-top: 30px">
                            </div>
                            
                
            </div>
                
                
                     
            
                
                
                
                <%
                    }
                     %>
                     
                     <center><input type="submit" value="Submit"  class="btn btn-success"  style="background: rgb(25,52,81);color:white;margin-top: 50px" onclick="go()"/></center>
            </form>
           
        </div>
            
           
            
            
            
    </body>
</html>
