<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        
        <title>JSP Page</title>
        
        <script>
            
        
        
        function check() {
                var val = document.getElementById("t1").value;
                if((val!==""))
                { if (val.length >= 7 && val.indexOf(".") !== -1 && val.indexOf("@") !== -1 && val.lastIndexOf(".") > val.indexOf("@"))
                {
                    alert("email check");
                }
                else
                {
                    alert("fail");
                    document.getElementById("t1").value="";
                }
            }}
            function check1()
            {
                
                var tel = document.getElementById("tel").value;
                if(tel!=="")
                { if(!isNaN(tel))
                {
                if (tel.length == 10)
                {
                    alert("Pass");
                }
                else
                {
                    alert("Fail1");
                    document.getElementById("tel").value="";
                }
            }
            else
            {
                alert("NOT A NUMBER");
                document.getElementById("tel").value="";
            }
            }}
            function check2()
            {
                var name = document.getElementById("n1").value;
                if(name!=="")
                {
                alert(name);
                var xml = new XMLHttpRequest();
                xml.onreadystatechange=function()
                {
                    if(xml.readyState==4 && xml.status==200)
                    {
                        var res = xml.responseText.trim();
                    if(res == "success")
                    {
                    }
                    else
                    {
                        document.getElementById("n1").value="";
                        alert("Name Must Not Contain Numbers");
                    }
                    }
                };
                xml.open("GET","CheckName.jsp?name="+name,true);
                xml.send();
            }}
         function check3()
            {
                
                var pass = document.getElementById("p1").value;
                if(pass!=="")
                {
                var xml = new XMLHttpRequest();
                xml.onreadystatechange = function ()
                {
                    if (xml.readyState == 4 && xml.status == 200)
                    {
                        var res = xml.responseText.trim();
                        if(res == "Success")
                        {
                            alert("yes");
                        }
                        else
                        {
                            alert("Password Must Contain one Uppercase,one Number and One Special Character");
                            document.getElementById("p1").value="";
                        }
                    }
                };
                xml.open("GET","CheckDemo_1.jsp?pass="+pass,true);
                xml.send();
            }
        
        
    }
        
        
</script>
    </head>
    <body>
            <%@include file="public_header.jsp"%>
                <div class="container" style="min-height: 523px">
            
            <center><h1>Sign up</h1></center>
            <br>
            <form class="form-horizontal" action="action_user_signup.jsp" method="post" class="form-horizontal" >
                <div class="form-group">
                    <label class="col-sm-2">Email</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="email" onblur="check()" id="t1" required style="margin-bottom:15px" /></div></div>
                <div class="form-group">
                    <label class="col-sm-2">Name</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="name" onblur="check2()" id="n1" required style="margin-bottom:15px"/></div></div>
                <div class="form-group">
                    <label class="col-sm-2">Phone</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="phone" onblur="check1()" id="tel" style="margin-bottom:15px" required/></div></div>
                <div class="form-group">
                    <label class="col-sm-2">Password</label>
                    <div class="col-sm-10"><input type="password" class="form-control" name="password" onblur="check3()" id="p1" style="margin-bottom:15px" required="" /></div></div>
                    <div class="form-group">
                   <label class="col-sm-2">Security Question</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="security_ques" required style="margin-bottom:15px">
                            <option hidden>--select a security question--</option>
                <option>what is your favorite color?</option>
                <option>what is your pet name?</option>
                <option>what is your nationality?</option>
                <option>which is your birth place?</option>
                <option>what is your favorite dish?</option>
                <option>which is your favorite movie?</option>
                        </select></div></div>
                          <div class="form-group">
                    <label class="col-sm-2">Security Answer</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="security_ans" required style="margin-bottom:15px"/></div></div>
                    
                    <center><input type="submit" value="Signup"  class="btn btn-success"  style="background: rgb(25,52,81);color:white"/></center>
            </form>          
                   
                </div>
               <%@include file="footer.jsp"%>
    </body>
</html>
