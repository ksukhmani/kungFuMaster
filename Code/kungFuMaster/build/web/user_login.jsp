<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="public_header.jsp"%>
        <div class="container" style="min-height: 523px">
            <center> <h1>Login</h1></center><br>
            <form class="form-horizontal" action="user_home.jsp" method="post">
                <div class="form-group has-feedback">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="email" type="text" class="form-control" name="email" placeholder="Email" required>
                    </div>
                </div>
                <div class="form-group has-feedback">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="password" type="password" class="form-control" name="pass" placeholder="Password" required/>
                </div>
                </div>
                <center>  <input type="submit" value="Login" class="btn btn-success" style="background: rgb(25,52,81);color:white"/></center><br>
                <center>  <a href="user_forgotpassword1.jsp?">Forgot Password</a></center>
        </div>


    </form>
    <%
        String m = request.getParameter("msg");

        if (m != null) {

    %>  
    <label style="color: red"><%= m%></label>

    <%
        }

    %>
</div>
<%@include file="footer.jsp"%>
</body>

</html>
