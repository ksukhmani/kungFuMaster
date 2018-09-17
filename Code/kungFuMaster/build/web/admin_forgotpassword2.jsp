<%@page import="java.sql.*"%>
<%
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from admin where email=\'" + email + "\'");
    if (rs.next()) {
        String security_ques = rs.getString("security_que");
%>
<form class="form-horizontal" method="post" action="fetchpassword_admin.jsp">
    <div class="form-group">
         <label class="col-sm-2" style="margin-top: 20px">Security Question</label>
         <div class="col-sm-10" style="margin-top:20px"><input type="text" class="form-control" value="<%= security_ques%>" name="sec_ques" readonly/></div></div>  
    <div class="form-group">
        <label class="col-sm-2">Security Answer</label>
        <div class="col-sm-10"><input type="text" class="form-control" placeholder="enter security answer here" name="sec_ans" /></div></div>  
    <div class="form-group">
        <input type="submit" value="Continue" class="btn btn-success" style="background: rgb(25,52,81);color:white;margin-left: 220px"/>
    </div>
    <input type="hidden" value="<%= email%>" name="email"/>
</form>

<%
        
    } else {
        %>
        <h1>Email Not Found</h1>
        
        <%
    }
%>
