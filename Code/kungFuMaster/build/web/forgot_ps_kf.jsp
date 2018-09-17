<%@page import="java.sql.*"%>

    
<%
     String email = request.getParameter("email");
     String security_ques = request.getParameter("sec_ques");
     String security_ans = request.getParameter("sec_ans");
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
     Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
     ResultSet rs = stmt.executeQuery("select * from admin_login where email=\'" + email + "\' and security_que=\'"+security_ques+"\' and security_ans=\'"+security_ans+"\'");
     if(rs.next())
     {String password=rs.getString("password");
      %>
      <div class="container" style="background-color: #ccffcc;height: 650px">
        
      <h1>Your password is set to<%=password%></h1>
      </div>
      <%
     
     }
     else
{
response.sendRedirect("forgot_ps_kf1.jsp?msg=Incorrect credentials");

}



    %>

    
   