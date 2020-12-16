
<%@page import="entities.Users"%>
<%
HttpSession hs=request.getSession(false);
Users us=(Users)session.getAttribute("currentUser");

%>
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .dropdown{
               position: absolute;
               top: 65px;
               right: 0;
               background-color: black;
               color: white;
               font-weight: bolder;
               padding: 8px 6px;
               border-radius: 5px;
               display: none;
               transition: 0.6s;
              
            }
            .dropdown .fa{
                margin-right: 2px;
            }
            .dropdown li a{
                 font-weight: bolder;
                color: white;
                cursor: pointer;
                 transition: 0.4s;
            }
            .dropdown li a:hover{
                 
                color: red;
                transition: 0.4s;
            }
            .dropdown li:hover{
                 cursor: pointer;
                color: red;
                transition: 0.4s;
            }
            
            .dropdown::before{
                content: "";
                position: absolute;
                top: -20%;
                left: 50%;
                transform: translateX(-50%);
                border: 10px solid;
                border-color: transparent transparent black transparent;
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
                        <a class="navbar-brand" href="index.jsp"><img src="images/logo2.png"  alt=""></a>

                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item active"><a class="nav-link" href="welcome.jsp">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.jsp" >About Us</a></li>

                            <li class="nav-item"><a class="nav-link" href="addproduct.jsp" >AddProduct</a></li>
                            <li class="nav-item"><a class="nav-link" href="bidprodeuct" >BidProduct</a></li>
                            <li class="nav-item"><a class="nav-link" href="services.jsp" >OurService</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact-us.jsp" >Contact Us</a></li>
                            <li class="nav-item"><a class="nav-link" ><i class="fa fa-bell" aria-hidden="true"></i></a></li>

                        </ul>
                    </div>
                    <div class=" bg-grey">
                        <div class="media d-flex align-items-center">
                            <img src="images/error.png" alt="..." width="50" height="50" class=" rounded-circle img-thumbnail shadow-sm">
                            <div class="media-body d-flex">
                                <h4 class=" text-dark" style="font-weight:bolder;"><%=us.getName()%></h4>
                                <i id="down" onclick="demo()" class="fa fa-chevron-down text-dark" style="cursor:pointer;"  aria-hidden="true"></i>
                                <i id="up" onclick="demo1()" class="fa fa-chevron-up text-dark" style="cursor:pointer;display: none" aria-hidden="true"></i>
                                <div id="dorp" class="dropdown">
                                    <ul>
                                        <li><a href="profile.jsp"><i class="fa fa-user" aria-hidden="true"></i>Profile</a></li>
                                        
                                        <li><a href="Logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
                                    </ul>
                                </div>

                            </div> 
                        </div>
                    </div>

                    <!-- /.navbar-collapse -->

                    <!-- Start Atribute Navigation -->
                    <!--  <div class="attr-nav">
                          <ul>
                              <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
  
                          </ul>
                      </div>-->


                </div>    
                <!-- End Side Menu -->
            </nav>
            <!-- End Navigation -->
        </header>
        <!-- End Main Top -->

        <!-- Start Top Search -->
        <!-- <div class="top-search">
             <div class="container">
                 <div class="input-group">
                     <span class="input-group-addon"><i class="fa fa-search"></i></span>
                     <input type="text" class="form-control" placeholder="Search">
                     <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                 </div>
             </div>
         </div>-->
        <!-- End Top Search -->


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
        <script>
            function demo(){
                let down=document.getElementById("down");
                let up=document.getElementById("up");
                let dorp=document.getElementById("dorp");
                dorp.setAttribute("style","display:block;transition: 0.6s;");
                down.setAttribute("style","display:none;transition: 0.6s;");
                up.setAttribute("style","cursor:pointer;display:block;transition: 0.6s;");
            }
            function demo1(){
                  let down=document.getElementById("down");
                let up=document.getElementById("up");
                let dorp=document.getElementById("dorp");
                dorp.setAttribute("style","display:none;transition: 0.6s;");
                down.setAttribute("style","cursor:pointer;display:block;transition: 0.6s;");
                up.setAttribute("style","cursor:pointer;display:none;transition: 0.6s;");
            }
            
        </script>
    </body>

</html>

