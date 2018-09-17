<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        
        
        
        <script>
            function go(value)
            {


                var xmlhttp = new XMLHttpRequest();

                xmlhttp.open("GET", "fetch_all_sub_categories.jsp?name=" + value, true);

                xmlhttp.onreadystatechange = function ()
                {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        document.getElementById("d1").innerHTML = xmlhttp.responseText;

                    }
                };




                xmlhttp.send();
            }
            function del(sub_cat_name)
            {
                var ans = confirm("Are you sure you want to delete?");
                if (ans)
                {
                    var xmlhttp = new XMLHttpRequest();


                    xmlhttp.onreadystatechange = function ()
                    {
                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                        {
                            var catname = document.getElementById("s1").value;
                            go(catname);
                        }
                    };


                    xmlhttp.open("GET", "del_sub_cat.jsp?sub_cat_name=" + sub_cat_name, true);

                    xmlhttp.send();
                }
            }

        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="admin_header.jsp"%>
        <div class="container" style="min-height: 523px">
        <br><br>
        <div>
         <label class="col-sm-2">Select Category</label>
                    <div class="col-sm-10">
            <select name="cat" class="col-sm-12" onchange="go(this.value)" id="s1">

            

            <option>---Select---</option>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = stmt.executeQuery("select c_name from category");
                while (rs.next()) {
                    String s = rs.getString("c_name");
            %>
            <option value="<%=s%>"><%=s%></option>
            <%}
            %>

        </select>
                    </div>
        <div id="d1">

        </div>
            </div>
        </div>
                   <%@include file="footer.jsp"%>
    </body>
</html>
