<%@page import="vmm.sendsms"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            var xmlhttp;
            function fetchsec()
            {
                var notp = document.getElementById("notp").value;
                var ootp = document.getElementById("ootp").value;
                if (notp == ootp)
                {
                    return true;

                } else
                {
                    return false;

                }
            }
                </script>

    </head>
    <body>
        <div class="container">
        <%    String ph="";
            String email = request.getParameter("email");
            int u=9999, l = 1000;
            int otp = (int) (l + (u - l) * Math.random());
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from service_provider where sp_email=\'" + email + "\' ");
            if (rs.next()) {
                String phone = rs.getString("phone");
                sendsms obj=new sendsms(phone,"Your OTP is "+otp, "text");
               Thread t=new Thread(obj);
               t.start();
                 ph = phone.substring(7, 10);

        %>
        <form action="sendingpass.jsp">
               
            <%  }
            System.out.println(otp);
            %>
            <input type="hidden" id="em" name="email" value="<%=email%>"/>
            <label>Your OTP is sent to this number *******<%=ph%> </label>
            <div class="form-group" >
                <br>  <label class="col-sm-2">Enter OTP</label>
                <div class="col-sm-10"><input type="text" class="form-control" name="notp" id="notp" required/></div></div>
                 <input type="hidden" value="<%=otp%>" id="ootp"/>
                
            <center>
                 <input type="submit" value="Next" onclick="return forgot()" class="btn btn-success" style="margin-top: 10px;background: rgb(25,52,81);color:white"/>
            </center>


        </form>
        </div>
    </body>
</html>
