<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" style="min-height: 626px">
       <%String sp_email = request.getParameter("sp_email");
    String date1 = request.getParameter("date");
    int tb = Integer.parseInt(request.getParameter("tb"));
    String c[] = request.getParameterValues("cb");
    String slots="";
    for(String s1:c)
    {
       slots+=s1+ ",";
    }
    String user_email = session.getAttribute("user_email").toString();
%>
<form action="success.jsp"> 
    <input type="hidden" name="sp_email" value="<%=sp_email%>"/>
    <input type="hidden" name="slots" value="<%=slots%>"/>
    <input type="hidden" name="date1" value="<%=date1%>"/>
    <input type="hidden" name="user_email" value="<%=user_email%>"/>

    <input type="hidden" name="tb" value="<%=tb%>"/>
    <script id="s1"
                    src="https://checkout.razorpay.com/v1/checkout.js"
                    data-key="rzp_test_96HeaVmgRvbrfT"
                    data-amount="<%=tb%>00"
                    data-buttontext="Pay with BookWithEase"
                    data-name="Book With Ease"
                    data-description="Thank You for purchasing "
                    data-image="corousal_images/tutor.jpg"
                    data-prefill.name="Komal Nayyar"
                    data-prefill.email="<%=user_email%>"
                    data-theme.color="rgb(25,52,81)"
            ></script>
            <input type="hidden" value="Hidden Element" name="hidden">
</form>
        </div>
                           <%@include file="footer.jsp"%>
                           
    </body>
</html>
