<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
  <script src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    </head>
    <body>
       
<nav class="navbar navbar-inverse navbar-fixed-top ">
    
    <div class="container-fluid" style="border: solid 1px red;">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="admin_dashboard.jsp">Home</a></li>
<!--        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li>-->
        <li><a href="admin_manage_department.jsp">Manage Departments</a></li>
        <li><a href="admin_manage_teachers.jsp">Manage Teachers</a></li>
        <li><a href="admin_add_course_fee_detail.jsp">Add Course Fee Details</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="admin_change_password.jsp"><span class="glyphicon glyphicon-user"></span> Change Password</a></li>
        <li><a href="admin_logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
      </ul>
    </div>
    </div>
</nav>
  
    <!-- Data Area -->
<div class="container">
  
  </div>
    <br><br>
</body>

</html>