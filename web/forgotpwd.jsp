<%-- 
    Document   : forgotpwd
    Created on : 23 Dec, 2020, 6:39:07 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            if(request.getParameter("key")==null){
        %>
        <form action="SentResetLink" method="get">
            <input name="email" type="text" />
            <input type="submit" value="send mail"/>    
        </form>
        <% }
            else{%>
            <form action="ResetPassword" method="post">
                <input type="hidden" name="key" value="<% out.print(request.getParameter("key")); %>"/>
                <input name="pass" type="password" />
                <input type="submit" value="Reset Pass"/>  
            </form>
            <%}%>

    </body>
</html>
