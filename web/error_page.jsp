

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Something! went wrong</title>
        <link rel="shortcut icon" href="images/error.png" type="image/x-icon">
        <link href="css/error.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="row background-img text-center">
            <div class="container text-center">
                <img src="images/pngegg.png" alt="error-icon"> 
                <h1 class="mt-1" style="color: white;font-weight: bolder"><%= exception%></h1>
                <a href="https://google.co.in/search?q=<% out.print(exception); %>" type="button" class="btn btn-primary mt-1 mr-2">Learn More</a>
                <a href="index.jsp" type="button" class="btn btn-primary mt-1">Home</a>

            </div>
        </div>



    </body>
</html>
