<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script>


            var xmlhttp;
            function fetchsec()
            {
                var email = document.getElementById("email").value;
                xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "forgot_ps_kf2.jsp?email=" + email, true);
                xmlhttp.onreadystatechange = go7;
                xmlhttp.send();

            }
            function go7()
            {

                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {

                    document.getElementById("secques").innerHTML = xmlhttp.responseText;
                    document.getElementById("email").style.readonly="true";
                }

            }



        </script>
    </head>
    <body style="background: url('kung_fu2.jpg')no-repeat; background-position: center; height: 100%; background-size: cover">
        <%@include file="header_admin_kf.jsp"%>
        <div class="container" style=" height: 530px">
            <div class="container" style="background-color: #ccffcc;height: 200px;width: 350px;margin-top: 90px;margin-left: 300px">




            <div class="row">
                <div class="col-sm-9 col-sm-offset-2">
                    <label style="margin-top: 15px;font-size: 30px;color: rgb(25,52,81); font-weight: bold"><b>Enter Email</b></label>
                </div></div>
            <div class="row">
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="email" name="email" required style="margin-top: 20px;width: 300px"/>
                </div>
            </div>

            <div class="form-group">
                
                <div class="col-sm-12 col-sm-offset-3">
                      <br> <input type="button"  value="GO" class="btn btn-success" style="background: rgb(25,52,81); color:white; margin-top: 15px;margin-bottom:15px;width: 70px;height: 30px" onclick="fetchsec()"/>
                        </div>                  
            </div>
            <div id="secques">
                
            </div>

        </div>
        </div>
       <%@include file="footer.jsp"%>
    </body>
</html>
