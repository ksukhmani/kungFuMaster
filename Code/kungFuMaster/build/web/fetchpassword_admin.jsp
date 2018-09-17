<%@page import="java.sql.*"%>
<div class="container" style="min-height:523px">
    <body>
<%
     String email = request.getParameter("email");
     String security_ques = request.getParameter("sec_ques");
     String security_ans = request.getParameter("sec_ans");
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
     Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
     ResultSet rs = stmt.executeQuery("select * from admin where email=\'" + email + "\' and security_que=\'"+security_ques+"\' and security_ans=\'"+security_ans+"\'");
     if(rs.next())
     {String password=rs.getString("password");
      %>
      <h1>your password is <%=password%></h1>
      <%
     
     }
     else
{
response.sendRedirect("admin_forgotpassword1.jsp?msg=Incorrect credentials");

}



    %>
</div>
    
    </body>