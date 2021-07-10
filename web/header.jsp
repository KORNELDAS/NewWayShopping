<%-- 
    Document   : header
    Created on : 1 Dec, 2020, 4:05:12 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

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



        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
            .search-box{
                position: relative;
                border-radius: 55px;
                padding: 15px;
                background: white;
                height: 15px;
                width: 280px;
                display: flex;
                justify-content: space-around;
                align-items: center;
                
                    
                transition: 0.5s;
            }

            .search-box span i{
                font-size: 15px;
                cursor: pointer;
                transition: 0.5s;

            }
            .search-box span i:hover{
                color: black;
                transform: scale(1.2);
                transition: 0.5s;
            }

            .search-box input{
                background: transparent;
                font-size: 15px;
                border: 0;
                width: 400px;
                outline: none;
            }
        </style>

    </head>

    <body>

        <!-- Start Main Top -->
        <div class="main-top"> 
            <div class="container-fluid">
                <div class="row d-flex justify-content-end">

                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" ">

                        <div class="right-phone-box">
                            <p>Call US :- <a href="#">+91 8016375535</a></p>
                        </div>
                        <div class="our-link">

                            <ul>
                                <li> <div class="search-box">

                                        <input type="text" placeholder="search" >
                                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                                     </div>
                                </li>
                                <li><a href="#">Our location</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <!-- End Main Top -->

        <!-- Start Main Top -->
        <header class="main-header">
            <!-- Start Navigation -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
                <div class="container">
                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu"
                                aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                        </button>
                        <!--images/favicon.ico-->
                        <!--images/logo.png-->
                        <a class="navbar-brand " href="index.jsp"><img src="images/logo2.png"  alt=""></a>

                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
                            <li class="nav-item"><a class="nav-link" style="cursor: pointer"  onclick="invent()">About Us</a></li>

                            <li class="nav-item"><a class="nav-link" style="cursor: pointer" onclick="invent()">AddProduct</a></li>
                            <li class="nav-item"><a class="nav-link" style="cursor: pointer" onclick="invent()">BidProduct</a></li>
                            <li class="nav-item"><a class="nav-link" style="cursor: pointer" onclick="invent()">OurService</a></li>
                            <li class="nav-item"><a class="nav-link" style="cursor: pointer" onclick="invent()">Contact Us</a></li>
                            <li  class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li> 
                            <li  class="nav-item"><a class="nav-link" href="register_1.jsp">Sign-Up</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->


                </div>    
                <!-- End Side Menu -->
            </nav>
            <!-- End Navigation -->
        </header>
        <!-- End Main Top -->

       

        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous"></script>
        <script src="js/changing.js" type="text/javascript"></script>

    </body>

</html>

