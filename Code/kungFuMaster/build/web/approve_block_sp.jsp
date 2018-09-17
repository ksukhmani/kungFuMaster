<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="admin_header.jsp"%>
        <div class="row">
            <div class="container">
                <center>  <h2>Pending Service Providers</h2></center>
                <br>
            <div class="row">
               
           <% Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from service_provider where status='pending'");
            if(rs.next())
            {  rs.previous();
           %>
             <div class="col-sm-8 col-sm-offset-2">
                       <table class="table table-hover">
                            <thead class="" style="background: rgb(25,52,81);color:white">
                                <tr>
                                    <td>Photo</td>
                                    <td>Name</td>
                                    <td>Starting hour</td>
                                    <td>Ending hour</td>
                                    <td>Per hour Price</td>
                                    <td>Address</td>
                                    <td>Phone</td>
                                     <td>Approve</td>
                                   </tr>
                            </thead>
                             <tbody>
                   <%              while(rs.next())
            {String sp_email=rs.getString("sp_email");
            String name=rs.getString("name");
            String photo=rs.getString("photo");
            String starting_hour=rs.getString("starting_hour");
            String ending_hour=rs.getString("ending_hour");
            String per_hour_price=rs.getString("per_hour_price");
            String phone=rs.getString("phone");
%>
            
              <tr>
                                    <td>
                                        <img src="<%=photo%>" width="200" height="150"/>
                                    </td>
                                    <td>
                                        <%=name%>  
                                    </td>
                                    <td>
                                        <%=starting_hour%>   
                                    </td>
                                    <td>
                                        <%=ending_hour%>   
                                    </td>
                                    <td>
                                        <%= per_hour_price%>   
                                    </td>
                                    <td>
                                         
                                    </td>
                                    <td>
                                        <%=phone%>   
                                    </td>
                                    
                                    <td>
                                        <a href="approve.jsp?opr=approve&sp_email=<%=sp_email%>"><input type=button class="btn btn-success" value="Approve" style="background: rgb(25,52,81);color:white"/>
                                        </a>
                                    </td>
                                    
                                <%
                                    }}

                                
                                else
{
%>
                             <br>  <center><h3>No such entry exists</h3></center>
<%
}
%>
                                
                                
                                
                            </tbody>
                       </table>
                </div>
            </div>
            </div>
        </div>
                      
            
            
            
         
            
            
         
        
        <div class="row">  
            
         
             <center>  <h2>Approved Service Providers</h2></center>
             <br>
            <div class="row">
                
           <% Class.forName("com.mysql.jdbc.Driver");
            Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bookmyhelper_komal", "root", "komal");
            Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs1= stmt1.executeQuery("select * from service_provider where status='not pending'");
            if(rs1.next())
            {  rs1.previous();
           %> <div class="col-sm-8 col-sm-offset-2">
                       <table class="table table-hover">
                            <thead class="" style="background: rgb(25,52,81);color:white">
                                <tr>
                                    <td>Photo</td>
                                    <td>Name</td>
                                    <td>Starting hour</td>
                                    <td>Ending hour</td>
                                    <td>Per hour Price</td>
                                    <td>Address</td>
                                    <td>Phone</td>
                                    <td>Reject</td>
                                   </tr>
                            </thead>
                             <tbody>

          
         <%       while(rs1.next())
            {
            String name=rs1.getString("name");
            String photo=rs1.getString("photo");
            String starting_hour=rs1.getString("starting_hour");
            String ending_hour=rs1.getString("ending_hour");
            String per_hour_price=rs1.getString("per_hour_price");
            String phone=rs1.getString("phone");
            String sp_email=rs1.getString("sp_email");
             %>
              <tr>
                                    <td>
                                        <img src="<%=photo%>" width="200" height="150"/>
                                    </td>
                                    <td>
                                        <%=name%>  
                                    </td>
                                    <td>
                                        <%=starting_hour%>   
                                    </td>
                                    <td>
                                        <%=ending_hour%>   
                                    </td>
                                    <td>
                                        <%= per_hour_price%>   
                                    </td>
                                    <td>
                                         
                                    </td>
                                    <td>
                                        <%=phone%>   
                                    </td>
                                    
                                    <td>
                                         <a href="approve.jsp?opr=reject&sp_email=<%=sp_email%>"><input type=button class="btn btn-success" value="Block" style="background: rgb(25,52,81);color:white"/>
                                        </a>                                    </td>
                                    
                                <%
                                    }
                                }
else
{
%>
                             <center>  <h3>No such entry exists</h3></center>
<%
}
%>
                               
                                
                                
                                
                            </tbody>
                       </table>
                </div>
            </div>
            </div>
       
    
                    <%@include file="footer.jsp"%>
    </body>
</html>
