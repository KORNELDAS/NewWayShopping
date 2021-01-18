

<%@page errorPage="error_page.jsp" %>
<%
    Users user = (Users) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }


%>

<%  int id = Integer.parseInt(request.getParameter("id#"));
    String product_image_1 = "";
    String product_image_2 = "";
    String product_image_3 = "";
    String product_name = "";
    String product_price = "";
    String end_date="";
    String desc = "";
    Connection con = Database.getConnection();
    String query = "select * from product where product_id=?";
    PreparedStatement ps = con.prepareStatement(query);
    ps.setInt(1, id);
    ResultSet rs = ps.executeQuery();
    while (rs.next()) {
        product_name = rs.getString("product_name");
        product_price = rs.getString("product_cost");
        product_image_1 = rs.getString("product_image");
        product_image_2 = rs.getString("product_image_1");
        product_image_3 = rs.getString("product_image_2");
        end_date=rs.getString("end_date");
        desc = rs.getString("description");
    }
%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entities.Product"%>
<%@page import="com.newwayshopping.dao.Productdao"%>
<%@page import="com.newwayshopping.databases.Database"%>
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

        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            .corues{
                
                height: 620px!important;
                
            }
            .crouse_mini{
                height: 140px!important;
            }
            .crouse_mini img{
                max-width: 100%!important;
                max-height: 100%!important;
            }
            .corues img{
                max-width: 100%!important;
                max-height: 100%!important;
            }
            .active{
                transition: 0.4s ease-in-out!important;
                display: flex!important;
                justify-content: center!important;
                align-items: center!important;
            }
            #timer{
              
                animation: contentsize 3s infinite linear;
                font-size: 25px;
                font-weight: bolder;
                font-style: italic;
               
            }
            
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>


        <!-- Start All Title Box -->
        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Shop Detail</h2>
                      
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->

        <!-- Start Shop Detail  -->
        <div class="shop-detail-box-main">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-5 col-md-6">

                        <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
                            <div class="carousel-inner" role="listbox">

                                <div class="corues carousel-item active"> <img class="d-block w-100" src="product_image/<%= product_image_1%>" alt="First slide"> </div>
                                <div class="corues carousel-item"> <img class="d-block w-100" src="product_image/<%= product_image_2%>" alt="Second slide"> </div>
                                <div class="corues carousel-item"> <img class="d-block w-100" src="product_image/<%= product_image_3%>"  alt="Third slide"> </div>
                            </div>
                            <a class="carousel-control-prev" href="#carousel-example-1" role="button" data-slide="prev"> 
                                <i class="fa fa-angle-left" aria-hidden="true"></i>
                                <span class="sr-only">Previous</span> 
                            </a>
                            <a class="carousel-control-next" href="#carousel-example-1" role="button" data-slide="next"> 
                                <i class="fa fa-angle-right" aria-hidden="true"></i> 
                                <span class="sr-only">Next</span> 
                            </a>
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-1" data-slide-to="0" class="crouse_mini d-flex align-items-center justify-content-center  active">
                                    <img class="d-block w-100 img-fluid" src="product_image/<%= product_image_1%>" alt="" />
                                </li>
                                <li data-target="#carousel-example-1" data-slide-to="1" class="crouse_mini d-flex align-items-center justify-content-center ">
                                    <img class="d-block w-100 img-fluid" src="product_image/<%= product_image_2%>" alt="" />
                                </li>
                                <li data-target="#carousel-example-1" data-slide-to="2" class="crouse_mini d-flex align-items-center justify-content-center ">
                                    <img class="d-block w-100 img-fluid" src="product_image/<%= product_image_3%>" alt="" />
                                </li>
                            </ol>
                        </div>

                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-6">
                        <div class="single-product-details">
                            <h2 style="text-transform: uppercase;"><%=product_name%></h2>
                            <h5><h5 style="color:black;font-weight: bolder;font-size: 20px;">Starting Bid:</h5>  <%=product_price%></h5>
                            <h5><h5 style="color:black;font-weight: bolder;font-size: 20px;">Current Bid:</h5>  <%=product_price%></h5>
                            <p style="color:black;font-weight: bold;">Time remaining:  </p> 
                            <div>
                                <p id="timer" style="color:red;font-weight: bold;"></p>
                            </div>
                            <p class="available-stock"><span> More than 20 Bidders bid on this product </span>
                            <p>
                            <h4> Description:</h4>
                            <p><%=desc%> </p>

                            <button type="button" class="btn btn-danger hvr-hover" style="margin-bottom:10px;font-weight: bolder;color: white">Bidders</button>
                            <ul style="display:none">
                                <li>

                                </li>
                                <li>

                                </li>
                            </ul>

                            <div class="price-box-bar">
                                <div class="cart-and-bay-btn">
                                    <button type="button" class="btn btn-danger hvr-hover"  data-toggle="modal" data-target="#bid_modal" style="margin-bottom:10px;font-weight: bolder;color: white">Bid Now</button>

                                </div>
                            </div>
                            <!--bid modal-->
                            <div class="modal fade" id="bid_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header bg-danger">
                                            <h5 class="modal-title" id="exampleModalLongTitle" style="font-weight:bolder;color: white;"><%= product_name.toUpperCase()%></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="form-group" action="Bid_product" method="post">
                                                <table class="table table-striped table-dark">

                                                    <tbody>
                                                        <tr>
                                                            <th scope="row">Name:</th>
                                                            <td> <input type="text" name="name" class="form-control"></td>

                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Biding Price:</th>
                                                            <td>
                                                                <input type="text" name="price" class="form-control">
                                                                <h6 style="color:white;">Your bid Price must have to greater than current bid price!</h6>
                                                            </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Phone:</th>
                                                            <td><input type="tel" name="phone" class="form-control"  ></td>

                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Email:</th>
                                                            <td><input type="email" name="email" class="form-control"  ></td>

                                                        </tr>
                                                        
                                                    </tbody>
                                                </table>
                                            </form>
                                        </div>
                                        <div class="modal-footer bg-danger">
                                            <button type="button" class="btn " style="background:black;color: white;">Bid</button>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end modal-->

                            <div class="add-to-btn">
                                <div class="add-comp">
                                    <a class="btn hvr-hover" href="#"><i class="fas fa-heart"></i> Add to wishlist</a>

                                </div>
                                <div class="share-bar">
                                    <a class="btn hvr-hover" href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a>
                                    <a class="btn hvr-hover" href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a>
                                    <a class="btn hvr-hover" href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                                    <a class="btn hvr-hover" href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a>
                                    <a class="btn hvr-hover" href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row my-5">
                    <div class="col-lg-12">
                        <div class="title-all text-center">
                            <h1>Featured Products</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet lacus enim.</p>
                        </div>
                        <div class="featured-products-box owl-carousel owl-theme">
                            <div class="item">
                                <div class="products-single fix">
                                    <div class="box-img-hover">
                                        <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
                                        <div class="mask-icon">
                                            <ul>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                            <a class="cart" href="#">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <h4>Lorem ipsum dolor sit amet</h4>
                                        <h5> $9.79</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products-single fix">
                                    <div class="box-img-hover">
                                        <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">
                                        <div class="mask-icon">
                                            <ul>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                            <a class="cart" href="#">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <h4>Lorem ipsum dolor sit amet</h4>
                                        <h5> $9.79</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products-single fix">
                                    <div class="box-img-hover">
                                        <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">
                                        <div class="mask-icon">
                                            <ul>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                            <a class="cart" href="#">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <h4>Lorem ipsum dolor sit amet</h4>
                                        <h5> $9.79</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products-single fix">
                                    <div class="box-img-hover">
                                        <img src="images/img-pro-04.jpg" class="img-fluid" alt="Image">
                                        <div class="mask-icon">
                                            <ul>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                            <a class="cart" href="#">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <h4>Lorem ipsum dolor sit amet</h4>
                                        <h5> $9.79</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products-single fix">
                                    <div class="box-img-hover">
                                        <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
                                        <div class="mask-icon">
                                            <ul>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                            <a class="cart" href="#">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <h4>Lorem ipsum dolor sit amet</h4>
                                        <h5> $9.79</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products-single fix">
                                    <div class="box-img-hover">
                                        <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">
                                        <div class="mask-icon">
                                            <ul>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                            <a class="cart" href="#">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <h4>Lorem ipsum dolor sit amet</h4>
                                        <h5> $9.79</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products-single fix">
                                    <div class="box-img-hover">
                                        <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">
                                        <div class="mask-icon">
                                            <ul>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                            <a class="cart" href="#">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <h4>Lorem ipsum dolor sit amet</h4>
                                        <h5> $9.79</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="products-single fix">
                                    <div class="box-img-hover">
                                        <img src="images/img-pro-04.jpg" class="img-fluid" alt="Image">
                                        <div class="mask-icon">
                                            <ul>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                            <a class="cart" href="#">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <h4>Lorem ipsum dolor sit amet</h4>
                                        <h5> $9.79</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Cart -->

        <!-- Start Instagram Feed  -->
        <div class="instagram-box">
            <div class="main-instagram owl-carousel owl-theme">
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-01.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-02.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-03.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-04.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-05.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-06.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-07.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-08.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-09.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-05.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Instagram Feed  -->

        <%@include file="footer.jsp" %>



        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

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

          <!--this is for timer-->
        <script>
// Set the date we're counting down to
            var countDownDate = new Date("<%= end_date %>").getTime();
            
// Update the count down every 1 second
            var x = setInterval(function () {

                // Get today's date and time
                var now = new Date().getTime();

                // Find the distance between now and the count down date
                var distance = countDownDate - now;

                // Time calculations for days, hours, minutes and seconds
                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                // Output the result in an element with id="demo"
                document.getElementById("timer").innerHTML = days + "d " + hours + "h "
                        + minutes + "m " + seconds + "s ";

                // If the count down is over, write some text 
                if (distance < 0) {
                    clearInterval(x);
                    document.getElementById("demo").innerHTML = "EXPIRED";
                }
            }, 1000);
        </script>
        <!--end of  timer-->

    </body>
</html>

