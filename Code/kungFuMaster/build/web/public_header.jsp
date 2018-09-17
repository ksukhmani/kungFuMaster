<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<!--web-fonts-->
<link href='//fonts.googleapis.com/css?family=Oranienbaum' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script> 
<script src="js/modernizr.custom.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script>
      var xmlhttp;
            function fetch_search(value)
            {
                xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "autocomplete.jsp?value="+value, true);
                xmlhttp.onreadystatechange =go8;
                xmlhttp.send();

            }
            function go8()
            {

                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {

                    document.getElementById("search_h").innerHTML = xmlhttp.responseText;
                    
                }

            }
    
    
</script>



<div class="top-nav" style="background: rgb(25,52,81)">
    
    <!--navigation-->
    <div class="top-nav">
        <div class="container">
            <div class="navbar-header logo">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="wow fadeInUp animated" data-wow-delay=".5s"><a href="index.html">B-W-E</a></h1>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-right" style="position: relative">
                    <li><a href="index.jsp" class="active"><span data-hover="Home">Home</span></a></li>
                    <li class="dropdown"><a class="dropdown-menu-right" data-toggle="dropdown" href="#">Login</a>
                        <ul class="dropdown-menu dropdown-menu-right" >
                            <li ><a href="user_login.jsp" class="active" style="color: black"><span data-hover="User Login">User Login</span></li>
                        <li><a href="service_provider_login.jsp" class="active" style="color: black"><span data-hover="Service Provider Login">Service Provider Login</span></li>
                    </ul>
                    </li>
                   <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Register</a>
                    <ul class="dropdown-menu">
                        <li><a href="user_signup.jsp" class="active" style="color: black"><span data-hover="User Sign Up">User Sign Up</span></li>
                        <li><a href="service_provider_signup.jsp" class="active" style="color: black"><span data-hover="Service Provider Sign Up">Service Provider Sign Up</span></li>
                    </ul>
                    </li>
                    <li><a href="index.jsp#about" class="scroll"><span data-hover="About">About</span></a></li>
                    <li><a href="index.jsp#contact" class="scroll"><span data-hover="About">Contact us</span></a></li>
                    <li>
                         <input type="text" class="form-control" name="search" placeholder="search service provider" onkeyup="fetch_search(this.value)"/>
                         <div id="search_h" style="position: absolute;top: 50px;left: 0px;background-color: white;width: 200px;z-index: 1000;"></div>
                    </li>
                  
                </ul>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>	
</div>
    <!--//navigation-->
