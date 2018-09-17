<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function go()
            {
                var p1 = document.getElementById("p1").value;
                var p2 = document.getElementById("p2").value;
                if (p1==p2)
                {
                    return true;
                    
                }
                else
                {
                    alert("Password do not match");
                    return false;
                }
            }
        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="admin_header.jsp"%>
        <div class="container" style="min-height: 523px">
    
        
        <form action="admin_change_pass2.jsp" onsubmit="return go()" class="form-horizontal">
            <center>     <h2>Change Password</h2></center>
            <%
                String email = session.getAttribute("email").toString();
            %>
             <div class="form-group">
                    <label class="col-sm-2">Email</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="email" value="<%=email%>" readonly required/></div></div>
             <div class="form-group">
                    <label class="col-sm-2">Old Password</label>
                    <div class="col-sm-10"><input type="password" class="form-control" name="op" required/></div></div>
                    <div class="form-group">
                    <label class="col-sm-2">New Password</label>
                    <div class="col-sm-10"><input type="password" class="form-control" name="np" id="p1" required/></div></div>
                    <div class="form-group">
                    <label class="col-sm-2">Confirm Password</label>
                    <div class="col-sm-10"><input type="password" class="form-control" name="cp" id="p2" required/></div></div>
           
                    <center>    <input type="submit" value="Change" class="btn btn-success" style="background: rgb(25,52,81);color:white"/><br></center>
            <%
                String m = request.getParameter("msg");
            
                if (m != null)
                {
                %>
                    <label style="color:red"><%=m%></label>
                <%
                    }
                    %>

        </form>
        </div>
                           <%@include file="footer.jsp"%>
              
</html>
