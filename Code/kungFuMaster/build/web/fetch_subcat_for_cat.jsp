<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <div class="form-group">
                    <label class="col-sm-2">Select Sub-Category</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="sc" required>
                            
       
            <option hidden>--select sub category--</option>
        <%
            String category = request.getParameter("name");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select sub_cat_name from subcategories where category_name=\'" + category +"\'");
            while (rs.next()) {
                String sub_cat_name = rs.getString("sub_cat_name");

        %>
        <option value="<%=sub_cat_name%>"><%=sub_cat_name%></option>
            
       
        <%            }
        %>
        </select><br>
                    </div></div>
       
</html>
</body>