<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width; initial scale=1.0">
    <script>
            
            function loading()
            {
                alert("email sent successfuly");
                window.location="index.jsp";
            }
        </script>
    </head>
    
<%
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String message = request.getParameter("message");
    
    vmm.SimpleMailDemo obj = new vmm.SimpleMailDemo("bookwithease74@gmail.com", "Inquiry from book my helper", name + " ["+ phone+ "] - <"+email+"> \n"+message);
  
%>
<body onload="loading()">
       </body>
</html>
