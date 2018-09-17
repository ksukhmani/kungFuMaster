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
                xmlhttp.open("GET", "admin_forgotpassword2.jsp?email=" + email, true);
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
    <body >
        <%@include file="public_header.jsp"%>
        <div class="container" style="min-height: 523px;background: url('kung_fu2.jpg')no-repeat">



            <div class="form-group">
                <div class="col-sm-2">
                    <label style="margin-top: 20px">Email</label>
                </div>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="email" name="email" required style="margin-top: 20px"/>
                </div>
            </div>  

            <div class="form-group">
                <div class="col-sm-2">
                </div>
                <div class="col-sm-10">
                      <br> <input type="button"  value="GO" class="btn btn-success" style="background: rgb(25,52,81);color:white" onclick="fetchsec()" style="margin-top:30px;margin-bottom:30px;"/>
                        </div>                  
            </div>
            <div id="secques">
                
            </div>

        </div>
       <%@include file="footer.jsp"%>
    </body>
</html>
