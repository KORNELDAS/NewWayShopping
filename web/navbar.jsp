
<%@page import="entities.Users"%>
<%
    HttpSession hs = request.getSession(false);
    Users us = (Users) session.getAttribute("currentUser");

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

            /*for image hoverley effect;*/
            .middleorder{
                text-align: center;
            }
            .container-image {
                position: relative;


                max-width:130px;
            }

            .image-hover {
                opacity: 1;
                display: block;
                width: 100%;
                height: auto;
                transition: .5s ease;
                backface-visibility: hidden;
                border-radius:50%;
            }

            .middle-image {
                transition: .5s ease;
                opacity: 0;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                text-align: center;
                max-width:50px;
            }

            .container-image:hover .image-hover {
                opacity: 0.3;
            }

            .container-image:hover .middle-image {
                opacity: 1;
            }

            .text-image {
                text-align:center;
                color: black;
                font-size: 16px;

            }
            /*end of hoverely effect*/

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

                            <li class="nav-item"><a class="nav-link" href="addproduct.jsp" data-toggle="modal"  data-target="#exampleModal">AddProduct</a></li>
                            <li class="nav-item"><a class="nav-link" href="bidprodeuct" >BidProduct</a></li>
                            <li class="nav-item"><a class="nav-link" href="services.jsp" >OurService</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact-us.jsp" >Contact Us</a></li>
                            <li class="nav-item"><a class="nav-link" ><i class="fa fa-bell" aria-hidden="true"></i></a></li>

                        </ul>
                    </div>
                    <div class=" bg-grey">
                        <div class="media d-flex align-items-center">
                            <img src="pics/<%=us.getImage()%>" alt="..." width="50" height="50" class=" rounded-circle img-thumbnail shadow-sm">
                            <div class="media-body d-flex">
                                <h4 class=" text-dark" style="font-weight:bolder;"><%=us.getName()%></h4>
                                <i id="down" onclick="demo()" class="fa fa-chevron-down text-dark" style="cursor:pointer;"  aria-hidden="true"></i>
                                <i id="up" onclick="demo1()" class="fa fa-chevron-up text-dark" style="cursor:pointer;display: none" aria-hidden="true"></i>
                                <div id="dorp" class="dropdown">
                                    <ul>
                                        <li><a href="profile.jsp" data-toggle="modal"  data-target="#profile-modal"><i class="fa fa-user" aria-hidden="true"></i>Profile</a></li>

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

        <!--profile modal-->

        <div class="modal fade animated bounceIn" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="profile-modal" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-danger">
                        <h2 class="modal-title " id="exampleModalLabel" style="font-weight:bold;">User Profile</h2>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <div id="user-detail" style="transition: .4s ease;">
                                <div class="container d-flex justify-content-center">
                                    <div class="container-image text-center">
                                        <img src="pics/<%=us.getImage()%>"  alt="Avatar" class="image-hover" style="width:100%">
                                        <div class="middle-image">
                                            <div class="text-image"><i style="cursor:pointer;" class="fa fa-camera fa-3x"  aria-hidden="true">

                                                </i></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- <img src="pics/default.png" class="img-fluid" style="border-radius:50%;max-width: 130px;"/>-->
                                <h2 class="modal-title " id="exampleModalLabel" style="font-weight:bold;"><%=us.getName()%></h2>
                                <!--user detail-->

                                <table class="table table-striped table-dark">

                                    <tbody>

                                        <tr>
                                            <th scope="row">Id:</th>
                                            <td><%=us.getSerial_number()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Email:</th>
                                            <td><%=us.getEmail()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Phone:</th>
                                            <td><%=us.getPhone_number()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Gender:</th>
                                            <td><%=us.getGender()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Address:</th>
                                            <td><%=us.getAddress_1()%></td> 

                                        </tr>
                                        <tr>
                                            <th scope="row">Country:</th>
                                            <td><%=us.getCountry()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">State:</th>
                                            <td><%=us.getState()%></td> 

                                        </tr>
                                        <tr>
                                            <th scope="row">Postal:</th>
                                            <td><%=us.getPostal_code()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Registered on:</th>
                                            <td><%=us.getRegdate()%></td> 

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--end user detail-->

                            <!--start editing part-->
                            <div id="edit-user-detail" style="display:none;transition: .4s ease;">
                                <div class="container d-flex justify-content-center">
                                    <div class="container-image text-center">
                                        <img src="pics/<%=us.getImage()%>"  alt="Avatar" class="image-hover" style="width:100%">
                                        <div class="middle-image">
                                            <div class="text-image"><i style="cursor:pointer;" class="fa fa-camera fa-3x"  aria-hidden="true">

                                                </i></div>
                                        </div>
                                    </div>
                                </div>

                                <!--  <img src="pics/default.png" class="img-fluid" style="border-radius:50%;max-width: 130px;"/>-->
                                <h2 class="modal-title " id="exampleModalLabel" style="font-weight:bold;"><%=us.getName()%></h2>
                                <h2 class="modal-title " id="exampleModalLabel" style="font-weight:bold;">Edit</h2>
                                <form action="EditUser" method="POST" enctype="multipart/form-data">
                                    <table class="table table-striped table-dark ">


                                        <tbody>
                                            <tr>
                                                <th scope="row">Name:</th>
                                                <td><input type="text" required class="form-control"  name="name" value="<%=us.getName()%>"></td>

                                            </tr>
                                            <tr>
                                                <th scope="row">Id:</th>
                                                <td><%=us.getSerial_number()%></td>

                                            </tr>
                                            <tr>
                                                <th scope="row">Email:</th>
                                                <td><input type="email" required class="form-control form-check " aria-describedby="emailHelp" name="email" value="<%=us.getEmail()%>"></td>

                                            </tr>
                                            <tr>
                                                <th scope="row">Phone:</th>
                                                <td><input type="phone" required class="form-control" name="phone" value="<%=us.getPhone_number()%>"></td>

                                            </tr>
                                            <tr>
                                                <th scope="row">Gender:</th>
                                                <td><%=us.getGender().toUpperCase()%></td>

                                            </tr>
                                            <tr>
                                                <th scope="row">Address:</th>
                                                <td><textarea rows="3" required class="form-control" name="address"><%=us.getAddress_1()%></textarea></td>


                                            </tr>
                                            <tr>
                                                <th scope="row">Country:</th>
                                                <td><%=us.getCountry().toUpperCase()%></td>

                                            </tr>
                                            <tr>
                                                <th scope="row">State:</th>
                                                <td>

                                                    <select  name="state" class="wide w-100 form-control" id="state">
                                                        <option data-display="Select"><%=us.getState()%></option>
                                                        <option>West Bengal</option>
                                                        <option>Bihar</option>
                                                        <option>Delhi</option>
                                                        <option>UttarPradesh</option>
                                                        <option>Gujrat</option>
                                                        <option>Rajasthan</option>
                                                        <option>Mumbai</option>
                                                        <option>Telangana</option>
                                                        <option>Tamil Nadu</option>
                                                        <option>Karnatka</option>
                                                        <option>Andhra Pradesh</option>
                                                        <option>J&K</option>
                                                        <option>Chattisgarh</option>
                                                        <option>West Bengal</option>
                                                        <option>West Bengal</option>
                                                        <option>West Bengal</option>
                                                        <option>West Bengal</option>
                                                        <option>West Bengal</option>
                                                        <option>West Bengal</option>
                                                    </select>

                                                </td>

                                            </tr>
                                            <tr>
                                                <th scope="row">Postal:</th>
                                                <td><input type="text" required class="form-control" name="pin" value="<%=us.getPostal_code()%>"></td>


                                            </tr>
                                            <tr>
                                                <th scope="row">Profile Pic:</th>
                                                <td><input type="file" class="form-control" name="image"> </td> 

                                            </tr>

                                            <tr>
                                                <th scope="row">Registered on:</th>
                                                <td><%=us.getRegdate()%></td> 

                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="text-centered">
                                        <button id="submit" type="submit" class="btn btn-danger">Save Changes</button>
                                    </div>
                                </form>


                            </div>
                            <!--end editing part-->

                        </div>


                    </div>
                    <div class="modal-footer">
                        <button id="close" type="button" class="btn btn-secondary" data-dismiss="modal" style="background-color:black">Close</button>
                        <button id="edit" type="button" class="btn btn-danger">Edit</button>
                    </div>
                </div>
            </div>
        </div>


        <!--end profile modal-->







        <!--addproduct modal-->

        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"><%=us.getName()%></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!--end addproduct modal-->



        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
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
                                    function demo() {
                                        let down = document.getElementById("down");
                                        let up = document.getElementById("up");
                                        let dorp = document.getElementById("dorp");
                                        dorp.setAttribute("style", "display:block;transition: 0.6s;");
                                        down.setAttribute("style", "display:none;transition: 0.6s;");
                                        up.setAttribute("style", "cursor:pointer;display:block;transition: 0.6s;");
                                    }
                                    function demo1() {
                                        let userdetail = document.getElementById("user-detail");
                                        let edituserdetail = document.getElementById("edit-user-detail");
                                        let down = document.getElementById("down");
                                        let up = document.getElementById("up");
                                        let dorp = document.getElementById("dorp");
                                        dorp.setAttribute("style", "display:none;transition: 0.6s;");
                                        down.setAttribute("style", "cursor:pointer;display:block;transition: 0.6s;");
                                        up.setAttribute("style", "cursor:pointer;display:none;transition: 0.6s;");
                                        // userdetail.setAttribute("style","display:block;");
                                        //edituserdetail.setAttribute("style","display:none;");
                                    }

        </script>

        <!--its for user detail-->
        <script>
            $(document).ready(function () {
                let status = false;
                $("#edit").click(function () {

                    if (status === false) {
                        $("#user-detail").hide();
                        $("#edit-user-detail").show();
                        $("#edit").text("Back");
                        status = true;
                    } else {
                        $("#user-detail").show();
                        $("#edit-user-detail").hide();
                        $("#edit").text("Edit");
                        status = false;
                    }
                });

            });
        </script>
        
    </body>

</html>

