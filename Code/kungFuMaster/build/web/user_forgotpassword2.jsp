<%@page import="java.sql.*"%>
<%
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from user where email=\'" + email + "\'");
    if (rs.next()) {
        String security_ques = rs.getString("security_ques");
%>
<form class="form-horizontal" method="post" action="fetchpassword.jsp">
    <div class="form-group">
        <label class="col-sm-2">Security Question</label>
        <div class="col-sm-10"><input type="text" class="form-control" value="<%= security_ques%>" name="sec_ques" readonly/></div></div>  
    <div class="form-group">
        <label class="col-sm-2">Security Answer</label>
        <div class="col-sm-10"><input type="text" class="form-control" placeholder="enter security answer here" name="sec_ans" /></div></div>  
    <div class="form-group">
        <center><input type="submit" value="Continue" class="btn btn-success" style="background: rgb(25,52,81);color:white;margin-right:650px"/></center>
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
