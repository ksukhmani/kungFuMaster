<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
            <%@include file="public_header.jsp"%>
        <div class="container" style="min-height: 523px">
            <form class="form-horizontal" action="sp_forgot_password2.jsp" method="post" >
                <div class="form-group">
                    <br>  <label class="col-sm-2">Enter email</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="email" required/></div></div>
                    <center>   <input type="submit" value="Continue" class="btn btn-success" style="background: rgb(25,52,81);color:white"/></center>
                  
           </form>
        </div>
               <%@include file="footer.jsp"%>
    </body>
</html>
