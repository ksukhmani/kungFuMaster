<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%String email=request.getParameter("email");
          String phone=request.getParameter("phone");
            String website=request.getParameter("web");
            String php=request.getParameter("php");
            String sh=request.getParameter("sh");
            String eh=request.getParameter("eh");
            String des=request.getParameter("des");
            String scat=request.getParameter("scat");
            
            
              
            
            
            
            
            %>
        
        <%@include file="sp_header.jsp"%>
        
      <div class="container">
          <form action="update_service_provider.jsp">
              <center> <h1>Edit Your Details</h1></center><br>
           <div class="form-group">
                    <label class="col-sm-2">Email</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="email" value="<%= email%>"/></div></div><br><br>
                <div class="form-group">
                    <label class="col-sm-2">Phone</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="phone" value="<%= phone%>"/></div></div><br><br>
                <div class="form-group">
                    <label class="col-sm-2">Website</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="web" value="<%= website%>"/></div></div><br><br>
                    <div class="form-group">
                    <label class="col-sm-2">Enter Per-Hour-Price</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="php" value="<%= php%>"/></div></div><br><br>
             

                <div class="form-group">
                    <label class="col-sm-2">Enter Starting hour</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="sh" required>
                            <option><%= sh%></option>
                            <%
                                for (int i = 1; i <= 24; i++) {
                            %>
                            <option><%=i%></option>
                            <%
                                }
                            %>
                        </select><br>
                    </div></div>
                <div class="form-group">
                    <label class="col-sm-2">Enter Ending hour</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="eh" required>
                            <option><%= eh%></option>
                            <%
                                for (int i = 1; i <= 24; i++) {
                            %>
                            <option><%=i%></option>
                            <%
                                }
                            %>
                        </select><br></div></div>
                 <div class="form-group">
                   <label class="col-sm-2">Enter Description</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="desc" value="<%= des%>" style="margin-bottom: 20px"/></div></div>
                    <br><br>
                    <div class="form-group">
                    <label class="col-sm-2">Sub Category</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="scat" value="<%= scat%>" style="margin-bottom: 20px" readonly/></div></div><br><br>
                        
                      <center><input type="submit" value="Edit" class="btn btn-success" style="background: rgb(25,52,81);color:white"/></center>    
                   
               

          </form>
          
          
          
      </div>
               <%@include file="footer.jsp"%>
    </body>
</html>
