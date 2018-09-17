
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background: url('kung_fu2.jpg')no-repeat; background-position: center; height: 100%; background-size: cover;">
        <%@include file="header_admin_kf.jsp"%>
        <div class="container" style="min-height: 523px">
            <center>
                <form class="form-horizontal" action="admin_login_kf2.jsp" method="post" >
                    
                    <h1 style="color: black; font-weight: bold; font-size: 60px; margin-top: 20px;">Admin <label style="color: #0cd0c0">Login</label></h1>
                    
                        <br>
                    <div class="form-group has-feedback">
                         <div class="input-group ">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="email" type="text" class="form-control" name="en" placeholder="Email" required>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <div class="input-group ">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="password" type="password" class="form-control" name="ps" placeholder="Password" required>
                        </div>
                    </div>

                    <br>    <center><input type="submit" value="Login" class="btn btn-success" style="background: rgb(25,52,81);color:white"/></center>
                    <br>  <center>  <a href="forgot_ps_kf1.jsp">Forgot Password</a></center>
                </form>
                <%
                    String m = request.getParameter("msg");

                    if (m != null) {

                %>  
                <label style="color: red"><%= m%></label>

                <%
                    }

                %>

            </center>
        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>
