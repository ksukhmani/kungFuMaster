<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script>
            function go(name)
            {
                var ans = confirm("Are you sure you want to delete this row?");
                if (ans)
                {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.open("GET", "delete_from_ajax.jsp?name="+name, true);
                    xmlhttp.onreadystatechange = function ()
                    {
                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                        {
                            document.getElementById("d1").innerHTML = xmlhttp.responseText;
                            alert("Row Deleted");
                        }
                    };


                    
                    
                    xmlhttp.send();
                }
            }
        </script>
    </head>
    <body>
<%@include file="admin_header.jsp"%>
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                
                    <center>   <h1>View All Categories</h1></center>
                    <br>
                    <div id="d1">
                        <table class="table table-hover">
                            <thead class="" style="background: rgb(25,52,81);color: white">
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
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                                    ResultSet rs = stmt.executeQuery("select* from category");
                                    while (rs.next()) {
                                        String path = rs.getString("photo");
                                        String c_name = rs.getString("c_name");
                                        String description = rs.getString("description");

                                %>
                                <tr>
                                    <td>
                                        <img src="<%=path%>" width="250" height="175"/>
                                    </td>
                                    <td>
                                        <%=c_name%>  
                                    </td>
                                    <td>
                                        <%=description%>   
                                    </td>
                                    <td>
                                        <a href="edit_cat.jsp?name=<%=c_name%>" class="btn btn-success" style="background: rgb(25,52,81);color:white">Edit</a>

                                    </td>
                                    <td>
                                        <a onClick="go('<%=c_name%>')" class="btn btn-success" style="background: rgb(25,52,81);color:white">Delete</a>

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
       <%@include file="footer.jsp"%>
    </body>
</html>
