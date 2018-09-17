<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<div class="container">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
             <h1>View All Sub-Categories</h1>
             <br>
            <div id="d1">
                <table class="table table-hover">
                    <thead class="" style="background: rgb(25,52,81);color:white">

                        <tr>
                            <td>Photo</td>
                            <td>Sub Category Name</td>
                            <td>Description</td>
                            <td></td>
                            <td></td>

                        </tr>
                    </thead>

                    <% String category_name = request.getParameter("name");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                        Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                        ResultSet rs = stmt.executeQuery("select * from subcategories where category_name=\'" + category_name + "\'");
                        while (rs.next()) {
                            String sub_cat_name = rs.getString("sub_cat_name");
                            String description = rs.getString("description");
                            String photo = rs.getString("photo");
                    %>
                    <tbody>
                        <tr>
                            <td>
                                <img src="<%= photo%>" width="250" height="175"/>
                            </td>
                            <td>
                                <%= sub_cat_name%>  
                            </td>
                            <td>
                                <%=description%>   
                            </td>
                            <td>
                                <button class="btn btn-success" style="background: rgb(25,52,81);color:white" onClick="del('<%= sub_cat_name%>')">Delete
                                </button>
                            </td>
                            <td>
                                <a href="edit_sub_cat.jsp?name=<%=sub_cat_name%>" class="btn btn-success" style="background: rgb(25,52,81);color:white">Edit</a> 
                            </td>
                        </tr>
                        <%}
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
