<%-- 
    Document   : login
    Created on : 4 Dec, 2020, 5:40:06 PM
    Author     : Asus
--%>

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
        <div class="container  d-flex justify-content-center ">
            <div class="card my-3" style="width: 28rem;">


                <div class="jumbotron jumbotron-fluid">
                    <div class="container">
                        <h1 style="text-decoration:underline " align="middle">LOG IN</h1>

                        <form action="login.jsp " method="Post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" name="pass" class="form-control" id="exampleInputPassword1">
                            </div>
                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <div style="text-align: center">                    
                                <button  type="submit" class="btn btn-primary">Submit</button>
                            </div>
                            <a href="registration.jsp"><h4 style="color:grey;font-weight: bolder">Don't have account?</h4></a>
                            <a href="registration.jsp"><h4 style="color:grey;font-weight: bolder">Forget Email or Password?</h4></a>
                            <hr>
                            <h3 style="text-align: center">Also Login with</h3><svg class="bi bi-alert-triangle text-success" width="32" height="32" viewBox="0 0 20 20" color="red">
                            <div style="text-align: center">
                                <i class='fab fa-google' style='font-size:50px;color:red;margin-right: 15px'></i>
                                <i class='fab fa-facebook' style='font-size:50px;color:blue;margin-right: 15px'></i>
                                <i class='fab fa-twitter' style='font-size:50px;color:lightblue;margin-right: 15px'></i>
                                <i class='fab fa-github' style='font-size:50px;color:black;margin-right: 15px'></i>

                            </div>



                        </form>

                    </div>




                </div>


            </div>
        </div>

        <!--<div style="width:50%;   margin-left: 40px;
             margin-right: 40px; border: 10px solid green;background-color:LightGray;padding:10px">

            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <h1 style="text-decoration:underline " align="middle">LOG IN</h1>

                    <form action="login.jsp " method="Post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="pass" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>
                        <div style="text-align: center">                    
                            <button  type="submit" class="btn btn-primary">Submit</button>
                        </div>
                        <a href="registration.jsp"><h4 style="color:grey;font-weight: bolder">Don't have account?</h4></a>
                        <hr>
                        <h3 style="text-align: center">Also Login with</h3><svg class="bi bi-alert-triangle text-success" width="32" height="32" viewBox="0 0 20 20" color="red">
                        <div style="text-align: center">
                            <i class='fab fa-google' style='font-size:50px;color:red;margin-right: 15px'></i>
                            <i class='fab fa-facebook' style='font-size:50px;color:blue;margin-right: 15px'></i>
                            <i class='fab fa-twitter' style='font-size:50px;color:lightblue;margin-right: 15px'></i>
                            <i class='fab fa-github' style='font-size:50px;color:black;margin-right: 15px'></i>

                        </div>



                    </form>

                </div>




            </div>

        </div>-->
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

