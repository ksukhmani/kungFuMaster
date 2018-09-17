<%
    boolean upper=true ,special= true;
    boolean number=true ,lower= true;
    String pass = request.getParameter("name");
    for(int i=0;i<pass.length();i++)
    {
        if(pass.charAt(i)>='A' && pass.charAt(i)<='Z')
        {
            upper = true;
        }
        else if(pass.charAt(i)>='a' && pass.charAt(i)<='z')
        {
            lower = true;
        }
        else if(pass.charAt(i)>='0' && pass.charAt(i)<='9')
        {
            number = false;
        }
//        else
//        {
//            special = false;
//        }
    }
    %>
    
    <%
    if(lower && upper  && number)
//        &&special
    {
    %>
    success
    <%
        }
        else
{
%>
fail
<%
    }
%>
