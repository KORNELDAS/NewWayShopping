
<%@page import="entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>NewWayShopping</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">
        <link rel="stylesheet" href="css/loginback.css">
        <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">-->
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->

    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container  d-flex justify-content-center my-3">
            <div class="card " style="width: 28rem;;">


                <div class="jumbotron jumbotron-fluid bg-light">
                    <div class="container bg-light">
                        <%
                        Message sure=(Message)session.getAttribute("user1");
                        if(sure!=null){
                        %>
                        <div class="alert <%=sure.getCssclass()%>  mb-1" role="alert">
                            <%=sure.getContent()%>
                        </div>
                        <%
                            session.removeAttribute("user1");
                        }
                        %>
                        <h1 style="text-decoration:underline ;font-weight: bolder" align="center">LOG IN</h1>

                        <form action="Login " method="Post">

                            <!--code for email-->

                            <div class="form-group">
                                <label for="exampleInputEmail1" style="color:black;">Email address</label>
                                <input type="email" required name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                <small id="emailHelp" class="form-text text-dark">We'll never share your email with anyone else.</small>
                            </div>

                            <!--code for password-->

                            <div class="form-group">
                                <label for="exampleInputPassword1" style="color:black;">Password</label>
                                <input type="password" required name="pass" class="form-control" id="exampleInputPassword1">
                            </div>

                            <!--code for check box-->

                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                                <label class="form-check-label" for="exampleCheck1" style="color:black;">Check me out</label>
                            </div>

                            <!--code for submit-->

                            <div style="text-align: center">                    
                                <button  type="submit" class="btn btn-primary" style='font-size:25px'>Submit</button>
                            </div>

                            <a href="register_1.jsp" ><h4 style="color:gray;font-weight: bolder">Don't have account?</h4></a>
                            <a href="forgotpwd.jsp"><h4 style="color:gray;font-weight: bolder">Forget Password?</h4></a>

                            <!--code for icon-->

                          
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/jquery.superslides.min.js"></script>
        <script src="js/bootstrap-select.js"></script>
        <script src="js/inewsticker.js"></script>
        <script src="js/bootsnav.js."></script>
        <script src="js/images-loded.min.js"></script>
        <script src="js/isotope.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/baguetteBox.min.js"></script>
        <script src="js/form-validator.min.js"></script>
        <script src="js/contact-form-script.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>

