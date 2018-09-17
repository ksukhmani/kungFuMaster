<%
    boolean upper=false,special=false;
    boolean number=false,lower= false;
    String pass = request.getParameter("pass");
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
            number = true;
        }
        else
        {
            special = true;
        }
    }
    %>
    
    <%
    if(lower && upper && special && number )
    {
    %>
    Success
    <%
        }
        else
{
%>
fail
<%
    }
%>