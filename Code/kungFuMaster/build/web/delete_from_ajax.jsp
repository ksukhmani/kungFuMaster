
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  
        <%
            String name = request.getParameter("name");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from category where c_name='" + name + "'");
            if (rs.next()) {
                rs.deleteRow();
            }
        %>
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <h1>View All Categories</h1>
                    <div id="d1">
                        <table class="table table-hover">
                            <thead class="bg bg-success">
                                <tr>
                                    <td>Photo</td>
                                    <td>Category Name</td>
                                    <td>Description</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                                    Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                                    ResultSet rs1 = stmt1.executeQuery("select * from category");
                                    while (rs1.next()) {
                                        String path = rs1.getString("photo");
                                        String c_name = rs1.getString("c_name");
                                        String description = rs1.getString("description");

                                %>
                                <tr>
                                    <td>
                                        <img src="<%=path%>"/>
                                    </td>
                                    <td>
                                        <%=c_name%>  
                                    </td>
                                    <td>
                                        <%=description%>   
                                    </td>
                                    <td>
                                        <a href="" class="btn btn-success">Edit</a>

                                    </td>
                                    <td>
                                        <a onClick="go('<%=c_name%>')" class="btn btn-danger">Delete</a>

                                    </td>
                                </tr>
                                <%
                                    }

                                %>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

  
