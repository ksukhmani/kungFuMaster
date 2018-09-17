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
        <div class="container" style="min-height:523px">
        <form action="./MultiFileUploader3" method="post" enctype="multipart/form-data" class="form-horizontal">
            <center>  <h2>Add Subcategory</h2></center>
            <br>
            <div class="form-group">
                    <label class="col-sm-2">Enter Subcategory</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="sub_cat" /></div></div>
           <div class="form-group">
                    <label class="col-sm-2">Enter Description</label>
                    <div class="col-sm-10"><textarea name="desc" class="col-sm-12"/></textarea></div></div>
             <div class="form-group">
                    <label class="col-sm-2">Select Photo</label>
                    <div class="col-sm-10"><input type="file" class="form-control" name="img" /></div></div>
            <div class="form-group">
                    <label class="col-sm-2">Select Category</label>
                    <div class="col-sm-10">
            <select name="cat" class="col-sm-12">
                <option hidden>--select--</option>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs = stmt.executeQuery("select c_name from category");
                    while (rs.next()) {
                        String s = rs.getString("c_name");
                %>
                <option value="<%=s%>"><%=s%></option>
                <%}
                %>
            </select></div><br><br><br>
            <center>    <input type="submit" value="Add" style="background: rgb(25,52,81);color:white"  class="btn btn-success"/></center>
        </form>
                </div>
        </div>
                   <%@include file="footer.jsp"%>
</body>
</html>
