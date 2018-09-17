<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function go()
            {
                var p1 = document.getElementById("p1").value;
                var p2 = document.getElementById("p2").value;
                if (p1 == p2)
                {
                    return true;
                } else
                {
                    alert("new password and confirm password do not match");
                    return false;
                }
            }

        </script>
                
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="user_header.jsp"%>
        <div class="container" style="min-height:523px">
        
         <%
                String m = request.getParameter("msg");

                if (m != null) {

            %>  
            <label style="color: black"><%= m%></label>

            <%
                }

            %>
        <%
            String email = (String) (session.getAttribute("user_email"));
            if (email == null) {
                response.sendRedirect("user_login.jsp?msg=Login First");
            } else {
        %>
        <div class="container">
            <center> <h1>Change Password</h1></center>
            <form class="form-horizontal" action="action_user_changepassword.jsp" method="post" onsubmit="return go()">
                <div class="form-group">
                    <label class="col-sm-2">Old Password</label>
                    <div class="col-sm-10"><input type="password" class="form-control" name="op" required/></div></div>
                <div class="form-group">
                    <label class="col-sm-2">New Password</label>
                    <div class="col-sm-10"><input type="password" class="form-control" name="np" id="p1" required/></div></div>
                <div class="form-group">
                    <label class="col-sm-2">Confirm Password</label>
                    <div class="col-sm-10"><input type="password" class="form-control" name="cp" id="p2" required/></div></div>
                <div class="form-group">

                    <center>  <input type="submit" value="Change Password"  class="btn btn-success"  style="background: rgb(25,52,81);color:white"/></center>
                </div>


            </form>
        </div>
        <%}
%>
        </div>
       <%@include file="footer.jsp"%>
    </body>
</html>
