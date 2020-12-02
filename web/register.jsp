<%-- 
    Document   : register.jsp
    Created on : 2 Dec, 2020, 5:20:16 PM
    Author     : gagan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            boolean success = false;
            if(request.getParameter("sub") != null){
                //code for registration in database
                
                out.print("Registration Success");
                success = true;
            }
        
        %>
        
        
        <%
            if(!success){
        %>
        <h1>Hello World!</h1>
        
        <form method="post" action="#">
            <input type="text" name="name" placeholder="Enter Name" required=""/>
            <input type="submit" name="sub" value="Register"/>
        </form>
        <% 
            }
        %>
    </body>
</html>
