<%@page import="java.sql.*"%>
<% String opr=request.getParameter("opr");
if(opr.equals("approve"))
{String sp_email=request.getParameter("sp_email");
Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from service_provider where sp_email=\'" + sp_email + "\'");
    if(rs.next())
    {rs.updateString("status","not pending");
     rs.updateRow();
     response.sendRedirect("approve_block_sp.jsp?approved_successfully");
    }
    
}
else if(opr.equals("reject"))
{String sp_email=request.getParameter("sp_email");
Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from service_provider where sp_email=\'" + sp_email + "\'");
    if(rs.next())
    {rs.updateString("status","pending");
     rs.updateRow();
     response.sendRedirect("approve_block_sp.jsp?rejected_successfully");
    }
    
}



%>