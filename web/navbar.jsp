
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


            /*its for blob image*/

            .containe{
                display: flex;
                justify-content: center;
            }
            .wrapper{
                position: relative;
                height: 180px;
                width: 120px;
                border: 2px dashed black;
                border-radius: 15px;
                background: #fff;
               /* display: flex;
                align-items: center;
                justify-content: center;*/
                overflow: hidden;
                margin-right: 15px;
                 box-shadow: 5px 10px 10px 8px #888888;
            }
            .wrapper.active{
                border: none;
            }
            .image1{
                position: absolute;
                height: 100%;
                width: 100%;
               /* display: flex;
                align-items: center;
                justify-content: center;*/
                opacity: 1;
                transition: 0.4s ease;
            }
            /*.image1 img{
                height: 100%;
                width: 100%;
                object-fit: cover;

            }*/

            .img-name{
                position: absolute;
                bottom: 0px;
                width: 100%;
                color: white;
                font-size: 12px;
                font-weight: bold;
                padding: 2px;
                text-align: center;
                transition: 0.4s ease;
                opacity: 0;


            }
            .icon{
                position: absolute;
                top: 35%;
                left: 42%;
                font-size: 25px;
                cursor: pointer;
                color: black;
                opacity: 0;
                transition: 0.4s ease;
            }

            .wrapper:hover .icon{
                opacity: 1;
                transition: 0.4s ease;
            }
            .wrapper:hover .img-name{
                opacity: 1;
                transition: 0.4s ease;
            }
            .wrapper:hover .image1{
                opacity: 0.5;
                transition: 0.4s ease;
            }
            
            .cls-img{
                max-height: 100%;
                max-width: 100%;
            }
            /*its end for blob image*/
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
                            <li class="nav-item"><a class="nav-link" href="test.jsp" >BidProduct</a></li>
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
                                        <li><a href="" ><i class="fa fa-shopping-cart" aria-hidden="true"></i>Your Orders</a></li>
                                        <li><a href="view_product.jsp" ><i class="fa fa-eye" aria-hidden="true"></i>View Product</a></li>
                                        <li><a href="Logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
                                    </ul>
                                </div>

                            </div> 
                        </div>
                    </div>
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
                    <div class="modal-header bg-danger">
                        <h5 class="modal-title" id="exampleModalLabel" style="font-weight:bolder;color: black;font-size: 23px;">Add Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form id="addproduct" action="AddProduct" method="POST" enctype="multipart/form-data">


                            <div id="hidding">

                                <div class="containe">
                                    <!--its for blob image -->
                                    <div  class="wrapper d-flex align-items-center justify-content-center" >
                                        <div class="image1 d-flex align-items-center justify-content-center">
                                            <img id="imuge" class="cls-img" src="images/upload-icon.png" alt="" >
                                        </div>
                                        <div class="content">

                                            <div class="icon" id="choose-btn2" onclick="filebtn()"><i class="fa fa-camera" aria-hidden="true" ></i></div>
                                        </div>
                                        <div class="img-name bg-danger" id="flu">File name here</div>
                                    </div>

                                    <input  id="default-btn" type="file"  name="image" hidden required>
                                    <!--end blob image -->
                                    
                                    <!--its for blob image 1-->

                                    <div  class="wrapper wrapper1 d-flex align-items-center justify-content-center" >
                                        <div class="image1 d-flex align-items-center justify-content-center">
                                            <img id="imuge_1" class="cls-img" src="images/upload-icon.png" alt="" >
                                        </div>
                                        <div class="content">

                                            <div class="icon" id="choose-btn33" onclick="file_btn_1()"><i class="fa fa-camera" aria-hidden="true" ></i></div>
                                        </div>
                                        <div class="img-name bg-danger" id="flu_1">File name here</div>
                                    </div>

                                    <input  id="default_btn_1" type="file"  name="image_1" hidden required>
                                    <!--end blob image 1-->
                                    
                                    
                                     <!--its for blob image 2-->

                                    <div  class="wrapper wrapper2 d-flex align-items-center justify-content-center" >
                                        <div class="image1 d-flex align-items-center justify-content-center">
                                            <img id="imuge_2" class="cls-img" src="images/upload-icon.png" alt="" >
                                        </div>
                                        <div class="content">

                                            <div class="icon" id="choose-btn44" onclick="file_btn_2()"><i class="fa fa-camera" aria-hidden="true" ></i></div>
                                        </div>
                                        <div class="img-name bg-danger" id="flu_2">File name here</div>
                                    </div>

                                    <input  id="default_btn_2" type="file"  name="image_2" hidden required>
                                    <!--end blob image 2-->
                                </div>   


                                <!--its for product detail-->

                                <table class="table table-striped table-dark mt-3">

                                    <tbody>
                                        <tr>
                                            <th scope="row" style="font-weight:bolder;">Product Name:</th>
                                            <td><input type="text" class="form-control" name="pname"></td>


                                        </tr>
                                        <tr>
                                            <th scope="row" style="font-weight:bolder;">Product Type:</th>
                                            <td>
                                                <select id="inputState" class="form-control" name="ptype">
                                                    <option selected>Type</option>
                                                    <option>Laptop </option>
                                                    <option>Mobile </option>
                                                    <option>Clothes(Men)</option>
                                                    <option>Clothes(Female)</option>
                                                    <option>Clothes(Kids)</option>
                                                    <option>Utensils</option>
                                                    <option>Furniture</option>
                                                    <option>Camera</option>
                                                </select>
                                            </td>

                                        </tr>
                                        <tr>
                                            <th scope="row" style="font-weight:bolder;">Product Cost:</th>
                                            <td><input type="text" class="form-control" name="pcost">
                                                You only write number!
                                            </td>

                                        </tr>
                                        
                                        <tr>
                                            <th scope="row" style="font-weight:bolder;">End:</th>
                                            <td><input type="datetime-local" name="end_date" class="form-control" aria-describedby="addon-wrapping" required="" /></td>

                                        </tr>
                                        <tr>
                                            <th scope="row" style="font-weight:bolder;">Description:</th>
                                            <td><textarea rows="3" name="desc" class="form-control" aria-describedby="addon-wrapping" required="" ></textarea></td>

                                        </tr>
                                    </tbody>
                                </table>
                                <!--end product deatil-->
                                <div class="containe">

                                    <button type="submit" name="submit" class="btn btn-primary bg-danger" style="border:none;">Add Product</button>
                                </div>
                            </div>
                            <div id="shower" style="color:black;text-align: center;display: none;">
                                <i class="fa fa-spinner fa-3x fa-spin" aria-hidden="true"></i>
                            </div>


                        </form>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="background: black;color: white">Close</button>

                    </div>
                </div>
            </div>
        </div>
        <!--end addproduct modal-->
        
        <!--extras
         const icon1 = document.getElementById("choose-btn");
            const icon2 = document.getElementById("choose-btn1");
            const icon3 = document.getElementById("choose-btn2");
        -->

        <!--its for blob image-->
        <script>
           
            const dfltbtn = document.getElementById("default-btn");
            const imuge = document.getElementById("imuge");
            const flu = document.getElementById("flu");
            let wrap = document.querySelector(".wrapper");
            const regex = /[0-9A-Za-z\^\$\&\@\'\{\}\[\]\,\=\?\#\!\*\(\)\.\%\-\_\~]+$/;


            function filebtn() {
                dfltbtn.click();
            }

            dfltbtn.addEventListener("change", function () {
                const file = this.files[0];
                if (file) {
                    const reader = new FileReader();
                    reader.onload = function () {
                        const result = reader.result;
                        imuge.src = result;
                        wrap.classList.add("active");
                    };
                    reader.readAsDataURL(file);
                }
                if (this.value) {
                    let valu = this.value.match(regex);
                    flu.textContent = valu;
                }
            });



        </script>
        <!--end blob image-->
        
        
         <!--its for blob image 1-->
        <script>
           const default_btn_1=document.getElementById("default_btn_1");
              const imuge_1 = document.getElementById("imuge_1");
            const flu_1 = document.getElementById("flu_1");
            let wrap1 = document.querySelector(".wrapper1");
            const regex1 = /[0-9A-Za-z\^\$\&\@\'\{\}\[\]\,\=\?\#\!\*\(\)\.\%\-\_\~]+$/;
           function file_btn_1(){
               default_btn_1.click();
           }
            default_btn_1.addEventListener("change", function () {
                const file1 = this.files[0];
                if (file1) {
                    const reader1 = new FileReader();
                    reader1.onload = function () {
                        const result1 = reader1.result;
                        imuge_1.src = result1;
                        wrap1.classList.add("active");
                    };
                    reader1.readAsDataURL(file1);
                }
                if (this.value) {
                    let valu1 = this.value.match(regex1);
                    flu_1.textContent = valu1;
                }
            });



        </script>
        <!--end blob image 1-->
        
         <!--its for blob image 2-->
        <script>
           const default_btn_2=document.getElementById("default_btn_2");
              const imuge_2 = document.getElementById("imuge_2");
            const flu_2 = document.getElementById("flu_2");
            let wrap2 = document.querySelector(".wrapper2");
            const regex2 = /[0-9A-Za-z\^\$\&\@\'\{\}\[\]\,\=\?\#\!\*\(\)\.\%\-\_\~]+$/;
           function file_btn_2(){
               default_btn_2.click();
           }
           
            default_btn_2.addEventListener("change", function () {
                const file2 = this.files[0];
                if (file2) {
                    const reader2 = new FileReader();
                    reader2.onload = function () {
                        const result2 = reader2.result;
                        imuge_2.src = result2;
                        wrap2.classList.add("active");
                    };
                    reader2.readAsDataURL(file2);
                }
                if (this.value) {
                    let valu2 = this.value.match(regex2);
                    flu_2.textContent = valu2;
                }
            });


        </script>
        <!--end blob image 2-->
        
   
        
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous"></script>
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




        <!--for async call-->
        <script>
            $(document).ready(function () {
                $("#addproduct").on("submit", function (event) {
                    event.preventDefault();
                    let form_data = new FormData(this);
                    $("#hidding").hide();
                    $("#shower").show();
                    $.ajax({
                        url: "AddProduct",
                        data: form_data,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            $("#shower").hide();
                            if (data.trim() === 'done') {
                                swal("Product Added Successfully", "", "success")
                                        .then((value) => {
                                            window.location = "welcome.jsp";
                                        });
                            } else {

                                swal("Something error", "Please try again!", "warning")
                                        .then((value) => {
                                            window.location = "welcome.jsp";
                                        });
                            }
                        },
                        error: function (jqXHR, textStatus, data) {
                            swal("Something error", "Please !", "warning");
                        },
                        processData: false,
                        contentType: false
                    });

                });
            });


        </script>

        <!--end ajax-->





    </body>

</html>

