

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <html lang="en">
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
        <!-- Bootstrap CSS -->
        <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">-->

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Sign_Up_Page</title>

        <style>
            .divider{
                position:relative;
                text-align: center;
                margin: 15px 0px;
            }
            .divider span{
                padding: 8px;
                position: relative;
                font-size: 15px;
                z-index: 20 !important;
            }
            .divider:after{
                content: "";
                position: absolute;
                width: 100%;
                border-bottom: 3px solid black;
                top: 50%;
                left: 0;
                z-index: 1 !important;
            }
        </style>
    </head>

    <body>
        <%@include file="header.jsp" %>
        <div class="container d-flex justify-content-center my-3">
            <div class="card " style="width: 38rem;"> 
                <div class ="card-body mx-auto">
                    <h2 class="card-title mt-3 text-center">Create Account Register Here..</h2>
                    <p class="text-center">Please start fill-up the form Step by step..!!</p><br>

                    <div class="col">
                        <form action="Registration_servlet" method="post" >

                            <!--Code for Name-->

                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                                </div>
                                <input type="text" name="name"  id="name" class="form-control" aria-label="Name"  placeholder="Enter Name" aria-describedby="addon-wrapping" required>
                                <div class="invalid-feedback">Name required </div>
                            </div><br>

                            <!--Code for Email-->

                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-envelope"></i> </span>
                                </div>
                                <input type="text" name="email" id="email" class="form-control" aria-label="email"  placeholder="Enter Email" aria-describedby="addon-wrapping" required>
                                <div class="invalid-feedback">Email required </div>
                            </div><br>

                            <!--Code for Password-->

                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                                </div>
                                <input type="password" name="password" id="name" class="form-control" aria-label="Pass" placeholder="Password" aria-describedby="addon-wrapping" required>
                                <div class="invalid-feedback">Password required </div>
                            </div><br>

                            <!--Code for Confirm Password-->

                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                                </div>
                                <input type="password" name="password1" id="name" class="form-control" aria-label="Pass" placeholder="Confirm Password" aria-describedby="addon-wrapping" required>
                                <div class="invalid-feedback">Password Mismatch </div>
                            </div><br>

                            <!--Code for Phone-->

                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-mobile"></i> </span>
                                </div>
                                <input type="text" name="phone" id="phone" class="form-control" aria-label="phone" placeholder="Enter Phone Number" aria-describedby="addon-wrapping" required>
                                <div class="invalid-feedback">Phone number required </div>
                            </div><br>

                            <!--Code for Alternate Phone Number-->

                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-mobile"></i> </span>
                                </div>
                                <input type="text" name="phone1" id="phone" class="form-control" aria-label="phone" placeholder="Alternate Phone" aria-describedby="addon-wrapping">
                            </div><br>

                            <!--Code for Date Of Birth-->

                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-calendar"></i> </span>
                                </div>
                                <input type="date" name="dob" class="form-control" aria-describedby="addon-wrapping" required="" />
                                <div class="invalid-feedback">Date of birth required </div>
                            </div><br>

                            <!--Code for Gender-->

                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Gender : </span>
                                </div>
                                <div style="margin-left:50px;">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="gen" type="radio" id="male" value="Male"/>
                                        <label class="form-check-label">Male</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="gen" type="radio" id="female" value="Female"/>
                                        <label class="form-check-label">Female</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="gen" type="radio" id="trans" value="Transgender"/>
                                        <label class="form-check-label">Transgender</label>
                                    </div>
                                </div>
                            </div><br>

                            <!--Code for Address-->

                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-home"></i> </span>
                                </div>
                                <textarea name="address" id="address" class="form-control" placeholder="Enter Address" aria-describedby="addon-wrapping" required></textarea>
                                <div class="invalid-feedback">Address required </div>
                            </div><br>

                            <!--Code for Address2-->

                            <div class="input-group flex-nowrap">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="addon-wrapping"> <i class="fa fa-home"></i> </span>
                                </div>
                                <textarea name="address1" id="address" class="form-control" placeholder="Enter Address2" aria-describedby="addon-wrapping"></textarea>
                            </div><br>

                            <!--Code for Country-->

                            <div class="row">
                                <div class="col-md-5 mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Country : </span>
                                    </div>
                                    <select name="country" class="wide w-100" id="country">
                                        <option value="Choose..." data-display="Select">Choose Country...</option>
                                        <option value="United States">United States</option>
                                        <option value="United States">India</option>
                                        <option value="United States">Pakistan</option>
                                        <option value="United States">Srilanka</option>
                                        <option value="United States">Afhganistan</option>
                                        <option value="United States">Australia</option>
                                        <option value="United States">England</option>
                                        <option value="United States">NewZealand</option>
                                        <option value="United States">China</option>
                                        <option value="United States">Russia</option>
                                        <option value="United States">South Africa</option>
                                        <option value="United States">WestIndies</option>
                                        <option value="United States">Bangladesh</option>
                                        <option value="United States">Scotland</option>
                                        <option value="United States">Japan</option>
                                        <option value="United States">Nepal</option>
                                        <option value="United States">Khalistan</option>
                                    </select>
                                    <div class="invalid-feedback">Country required </div>
                                </div>

                                <!--Code for State-->

                                <div class="col-md-4 mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">State : </span>
                                    </div>
                                    <select name="state" class="wide w-100" id="state">
                                        <option data-display="Select">Choose State...</option>
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
                                        <option></option>
                                        <option>West Bengal</option>
                                        <option>West Bengal</option>
                                        <option>West Bengal</option>
                                        <option>West Bengal</option>
                                        <option>West Bengal</option>
                                        <option>West Bengal</option>
                                        <option>West Bengal</option>
                                        <option>West Bengal</option>
                                    </select>
                                    <div class="invalid-feedback">State required </div>
                                </div>

                                <!--Code for Postal Code-->

                                <div class="col-md-3 mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Postal Code :</span>
                                    </div>
                                    <input type="text" name="pin" id="pin" class="form-control" aria-label="pin" placeholder="Your Answer" aria-describedby="addon-wrapping" required>
                                    <div class="invalid-feedback">Postal code required </div>
                                </div>
                            </div>

                            <!--Code for Image-->

                            <div>
                                <label class="file-select" for="myfile">Select a file:</label>
                                <input type="file" id="myfile" name="myfile">
                            </div><br>

                            <!--Code for Check box-->

                            <div class="custom-control custom-checkbox">
                                <input name="check-box" type="checkbox" class="custom-control-input" id="same-address" required>
                                <label class="custom-control-label" for="same-address">Accept terms & conditions....</label>
                                <div class="invalid-feedback">Accept terms & conditions required </div>
                            </div><br>

                            <!--Code for Register button-->

                            <button class="btn btn-success btn-lg btn-block" type="submit" value="Register" id="submit">Create Account</button>&ensp;&ensp;
                            <a href="index.jsp"> <<-Back to Home</a>
                            <br>

                            <!--code for icon-->

                            <p class="divider">
                                <span class="bg-light">OR</span>
                            </p>
                            <div class="d-flex justify-content-center">
                                <a href="#"> <i class='fab fa-google-plus' style='font-size:40px;color:red;margin-right: 15px'></i></a>
                                <a href="#"> <i class='fab fa-facebook' style='font-size:40px;color:blue;margin-right: 15px'></i></a>
                                <a href="#"> <i class='fab fa-twitter' style='font-size:40px;color:lightblue;margin-right: 15px'></i></a>
                                <a href="#"> <i class='fab fa-github' style='font-size:40px;color:black;margin-right: 15px'></i></a>
                            </div>
                        </form><br>
                    </div>
                </div>
            </div>
        </div> 

       

        <%@include file="footer.jsp" %>
        
         
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

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
