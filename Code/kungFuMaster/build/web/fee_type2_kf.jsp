<%@page import="java.sql.*"%>
<%          String fee_type=request.getParameter("1");
            String fee_amount=request.getParameter("20");
            
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kung_fu","root","admin");
        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = stmt.executeQuery("select * from fee_type where fee_type=\'" + fee_type + "\'");
             if(rs.next())
             {
             rs.updateString("fee_type",fee_type);
             rs.updateString("fee_amount",fee_amount);
             
             rs.updateRow();
             response.sendRedirect("fee_type_kf.jsp?msg=data_updated");
             
             }
            
            
    
%>