
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="admin_header.jsp"%>
        <div class="container" style="min-height: 523px">
        
       <%String description="";
        String path="";
            String sub_cat_name=request.getParameter("name");
          %>
         <form action="./MultiFileUploader4" method="post" enctype="multipart/form-data" class="form-horizontal">
             <br>
             <div class="form-group">
                    <label class="col-sm-2">Sub Category Name</label>
                    <div class="col-sm-10"><input type="text" class="form-control" value="<%= sub_cat_name %>" name="scname" readonly /></div></div>
            <%
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
               Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
               ResultSet rs = stmt.executeQuery("select * from subcategories where sub_cat_name=\'"+ sub_cat_name +"\'"); 
               if(rs.next())
               {
                  description=rs.getString("description");
                   path=rs.getString("photo");
                   
               }
                %>
                <div class="form-group">
                    <label class="col-sm-2">Description</label>
                    <div class="col-sm-10"><textarea name="desc" class="col-sm-12" ><%= description %></textarea></div></div>
               <div class="form-group">
                    <label class="col-sm-2">Photo</label>
                    <div class="col-sm-10"><img src="<%= path %>" width="100" height="100" /></div></div>
                
                    <div class="form-group">
                    <label class="col-sm-2"></label>
                    <div class="col-sm-10"><input type="file" name="file"/></div></div>
                
                    
                    <center>     <input type="submit" value="Edit"  class="btn btn-success" style="background: rgb(25,52,81);color:white" /></center>
        </form>
        </div>
             <%@include file="footer.jsp"%>       
    </body>
</html>
