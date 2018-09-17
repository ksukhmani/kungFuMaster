<%
session.removeAttribute("user_email");

response.sendRedirect("user_login.jsp");

%>