<%@page import="java.sql.*"%>
<%          String email=request.getParameter("email");
            String phone=request.getParameter("phone");
            String website=request.getParameter("web");
            String php=request.getParameter("php");
            String sh=request.getParameter("sh");
            String eh=request.getParameter("eh");
            String des=request.getParameter("desc");
            String scat=request.getParameter("scat");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = stmt.executeQuery("select * from service_provider where sp_email=\'" + email + "\'");
             if(rs.next())
             {
             rs.updateString("sp_email",email);
             rs.updateString("phone",phone);
             rs.updateString("website",website);
             rs.updateString("per_hour_price",php);
             rs.updateString("starting_hour",sh);
             rs.updateString("ending_hour",eh);
             rs.updateString("description",des);
             rs.updateString("sub_category",scat);
             rs.updateRow();
             response.sendRedirect("service_provider_home.jsp?msg=data_updated");
             
             }
            
            
              
            
    




           








%>