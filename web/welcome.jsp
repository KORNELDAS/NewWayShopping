<%-- 
    Document   : profile
    Created on : 15 Dec, 2020, 11:55:03 AM
    Author     : Asus
--%>
<%@page import="entities.Users"%>
<%
Users user=(Users)session.getAttribute("currentUser");
if(user==null){
    response.sendRedirect("login.jsp");
}



%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NewWayShopping</title>
    </head>
    <body>
        
       
    </body>
</html>
