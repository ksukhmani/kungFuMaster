<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        
        <title>JSP Page</title>
        
        <script>
            
           function goo()
           {
               alert("Student Registered with student id: 10");
           }
        
        
        function check() {
                var val = document.getElementById("t1").value;
                if((val!==""))
                { if (val.length >= 7 && val.indexOf(".") !== -1 && val.indexOf("@") !== -1 && val.lastIndexOf(".") > val.indexOf("@"))
                {
                    
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
        
        
        function check22()
            {
                var name = document.getElementById("n2").value;
                if(name!=="")
                {
                
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
                        document.getElementById("n2").value="";
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
            <%@include file="header_admin_kf.jsp"%>
                <div class="container" style="min-height: 523px;background-color: beige">
            
                    <center><h1 style="margin-top: 20px">Register Student</h1></center>
            <br>
            <form class="form-horizontal"  method="post"  >
                
                
                <div class="form-group">
                    <div class="row">
                    <label class="col-sm-2" style="margin-left: 15px">Child already a student?</label>
                    <div class="col-sm-3">
                        <input type="radio"  value="0" name="yes"  id="n1" required style="margin-bottom:15px"/>yes
                                           <input type="radio"  value="0" name="yes"  id="n1" required style="margin-bottom:15px"/>No
                        </div>
                    </div></div>
                
                    <div class="form-group">
                        <label class="col-sm-2">If yes, provide student number</label>
                    <div class="col-sm-10"><input type="text" class="form-control"  name="fname"  id="n1" required style="margin-bottom:15px"/></div></div>
                    
                    <div class="form-group">
                    <div class="row">
                    <label class="col-sm-2" style="margin-left: 15px">Parent already a student?</label>
                    <div class="col-sm-3">
                        <input type="radio"  value="0" name="yes"  id="n1" required style="margin-bottom:15px"/>yes
                                           <input type="radio"  value="0" name="yes"  id="n1" required style="margin-bottom:15px"/>No
                        </div>
                    </div></div>
                    
                    <div class="form-group">
                        <label class="col-sm-2">If yes, provide student number</label>
                    <div class="col-sm-10"><input type="text" class="form-control"  name="fname"  id="n1" required style="margin-bottom:15px"/></div></div>
                    
                <div class="form-group">
                    <label class="col-sm-2">First Name</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="fname" onblur="check2()" id="n1" required style="margin-bottom:15px"/></div></div>
                
                    <div class="form-group">
                    <label class="col-sm-2">Last Name</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="lname" onblur="check22()" id="n2" required style="margin-bottom:15px"/></div></div>
                   
                   <div class="form-group">
                    <label class="col-sm-2">Date of Birth</label>
                    <div class="col-sm-10"><input type="date" class="form-control" name="dob"  id="dob" required style="margin-bottom:15px"/></div></div> 
                    
                    <div class="form-group">
                    <label class="col-sm-2">Join Date</label>
                    <div class="col-sm-10"><input type="date" class="form-control" name="jdate"  id="jdate" required style="margin-bottom:15px"/></div></div>
                    
                 
                    <div class="form-group">
                    <label class="col-sm-2">Mobile No.</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="phone" onblur="check1()" id="tel" style="margin-bottom:15px" required/></div></div>
                    
                <div class="form-group">
                    <label class="col-sm-2">Email</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="email" onblur="check()" id="t1" required style="margin-bottom:15px" /></div></div>
                
               <div class="form-group">
                    <label class="col-sm-2">Street No.</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="street"  id="street" style="margin-bottom:15px" required/></div></div>
                
                 <div class="form-group">
                    <label class="col-sm-2">City</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="city"  id="city" style="margin-bottom:15px" required/></div></div>         
                    
                    <div class="form-group">
                    <label class="col-sm-2">Pin Code</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="pin"  id="pin" style="margin-bottom:15px" required/></div></div>
                    
                    <div class="form-group">
                    <label class="col-sm-2">Preferred Contact</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="pcontact"  id="pcontact" style="margin-bottom:15px" required/></div></div>
                    
                    <div class="form-group">
                    <label class="col-sm-2">Mother's Name</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="mname"  id="mname" style="margin-bottom:15px" required/></div></div>
                    
                    <div class="form-group">
                    <label class="col-sm-2">Email</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="memail"  id="memail" style="margin-bottom:15px" required/></div></div>
                    
                    <div class="form-group">
                    <label class="col-sm-2">Contact No.</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="mcontact"  id="mconatct" style="margin-bottom:15px" required/></div></div>
                    
                    
                    <div class="form-group">
                    <label class="col-sm-2">Father's Name</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="faname"  id="faname" style="margin-bottom:15px" required/></div></div>
                    
                    <div class="form-group">
                    <label class="col-sm-2">Email</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="femail"  id="femail" style="margin-bottom:15px" required/></div></div>
                    
                    <div class="form-group">
                    <label class="col-sm-2">Contact No.</label>
                    <div class="col-sm-10"><input type="text" class="form-control" name="fcontact"  id="fcontact" style="margin-bottom:15px" required/></div></div>
                    
                    
                    
                    <center><input type="submit" value="Register"  class="btn btn-success"  style="background: rgb(25,52,81);color:white" onclick="goo()"/></center>
            </form>          
                   
                </div>
               
    </body>
</html>
