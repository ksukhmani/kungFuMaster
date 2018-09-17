

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

        <form action="./MultiFileUploader1" method="post" enctype="multipart/form-data" class="form-horizontal">
            <center>    <h2>Add Category</h2></center><br>
            <div class="form-group">
                    <label class="col-sm-2">Enter Category Name</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="cn"/></div></div>
                        <div class="form-group">
                    <label class="col-sm-2">Enter Description</label>
                    <div class="col-sm-10"><textarea name="ta" class="col-sm-12"/></textarea></div></div>
                     <div class="form-group">
                    <label class="col-sm-2">Select Photo</label>
                    <div class="col-sm-10"><input type="file" class="form-control" name="img"/></div></div>
            <center>   <input type="submit" value="Add" class="btn btn-success" style="background: rgb(25,52,81);color:white"/><br></center>
        </form>
        <%  String m = request.getParameter("msg");
            
                if (m != null)
                {
            %>
            <label><%=m%></label>
            <%    }
            %>
    
        </div>
             <%@include file="footer.jsp"%>
    </body>
</html>
