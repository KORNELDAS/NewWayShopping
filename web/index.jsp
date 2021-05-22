<%@page import="java.util.ArrayList"%>
<%@page import="com.newwayshopping.dao.Productdao"%>
<%@page import="com.newwayshopping.databases.Database"%>
<%@page import="entities.Product"%>
<%
    HttpSession hs = request.getSession(false);

    if (hs.getAttribute("currentUser") != null) {
        response.sendRedirect("welcome.jsp");
    }


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
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

        <style>
            .cont-shop{
                width: 250px;
                height: 300px;
                transition: 0.5s;
                border-radius: 15px;
                box-shadow: -10px -10px 15px  rgba(255,255,255,0.5),
                    10px 10px 15px rgba(70,70,70,0.12);
            }
            .cls-img{
                max-width: 100%;
                max-height: 100%;
                border-radius: 15px;
                transition: .4s ease-in-out;
                object-fit: cover;
            }

            .cont-shop:hover{
                transform: scale(1.1);
                transition: 0.5s;
            }
                        .cont-shop:hover .cls-img{
                            -webkit-filter: grayscale(100%) blur(2px);
                            filter: grayscale(100%) blur(2px);
                            transition: .4s ease-in-out;
                        }
            .cont-shop:hover .bid-buttons{
                display: block;
            }


            .count-time{
                position: absolute;
                z-index: 1;
                top: -30px;
                left: 27px;
                color: white;
                font-weight: bolder;
                width: 120px;
                height: 30px;
                text-align: center;
                font-size: 15px;
                border-top-left-radius: 15px;
                border-top-right-radius: 15px;
            }
            .bid-buttons{
                position: absolute;
                z-index: 1;
                top: 40%;
                left: 42%;
                color: white;
                font-weight: bolder;
                width:60px;
                height: 40px;
                font-size: 25px;
                border: 2px solid black;
                border-radius: 8px;
                text-align: center;
                cursor: pointer;
                display: none;
                transition: .4s ease-in-out;
            }
            .bid-buttons:hover{
                background-color: black!important;
                transition: .4s ease-in-out;
            }
            .img-nam{
                position: absolute;
                bottom: 0;
                width: 250px;
                color: white;
                font-weight: bolder;
                text-align: center;
                border-bottom-left-radius: 15px;
                border-bottom-right-radius: 15px;
            }







            /*            .countdown{
                            height: 30px;
                            text-align: center;
                            width: 120px;
                            font-size: 15px;
                            font-weight: bolder;
                            color: white;
                            z-index: 1;
                            position: absolute;
                            top: 0;
                            left: 0;
            
                        }
                        .bid{
                            height: 40px;
                            width: 60px;
                            font-size: 20px;
                            font-weight: bolder;
                            color: white;
                            z-index: 1;
                            position: absolute;
                            left: 42%;
                            top: 40%;
                            border: 2px solid black;
                            border-radius: 8px;
                            transition: 0.4s ease;
                            text-align: center;
                           display: none;
            
                        }
                        .bid:hover{
                            background: black!important;
                            transition: 0.4s ease!important;
            
                        }
                        
                        .bid-container{
                            width: 250px;
                            height: 300px;
                            border-radius: 15px;
                           border: none;
                           -webkit-appearance: none;
                           box-shadow: -10px -10px 15px  rgba(255,255,255,0.5),
                               10px 10px 15px rgba(70,70,70,0.12);
                           
                        }
                        .cls-img{
                             max-width: 100%;
                            max-height: 100%;
                            border-radius: 15px;
                        }*/



        </style>
    </head>

    <body>


        <%@include file="header.jsp" %>
        <!-- Start Slider -->

        <div id="slides-shop" class="cover-slides">
            <ul class="slides-container">
                <li class="text-left">
                    <img src="images/crousel1.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Welcome To <br> NewWayshopping</strong></h1>
                                <p class="m-b-40">Here you anything can BID and <br> whatever you want to product add
                                </p>
                                <p><a class="btn hvr-hover" href="#" onclick="invent()">Shop New</a></p>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="text-center">
                    <img src="images/banner-02.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Welcome To <br> NewWayshopping</strong></h1>
                                <p class="m-b-40"> <br> trends
                                    to see any changes in performance over time.</p>
                                <p><a class="btn hvr-hover" href="#" onclick="invent()">Shop New</a></p>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="text-right">
                    <img src="images/banner-03.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Welcome To <br> NewWayshopping</strong></h1>
                                <p class="m-b-40">See how your users experience your website in realtime or view <br> trends
                                    to see any changes in performance over time.</p>
                                <p><a class="btn hvr-hover" href="" onclick="invent()">Shop New</a></p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="slides-navigation">
                <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
            </div>
        </div>
        <!-- End Slider -->

        <!-- Start Categories  -->
        <div class="categories-shop" style="background-color:white;">
            <div class="container">
                <div class="row">
                    <%                    Productdao pd = new Productdao(Database.getConnection());
                        ArrayList<Product> list = pd.getProduct1();
                        int i = 0;
                        for (Product li : list) {
                            i++;
                    %>

                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="cont-shop d-flex align-items-center justify-content-center">

                            <div class="bid-buttons bg-danger" id="<%= li.getProduct_id()%>" >
                                Bid
                            </div>
                            <div class="count-time bg-danger"  >
                                10h 20m 30s
                            </div>
                            <img src="product_image/<%= li.getProduct_image()%>" class="cls-img">
                            <div class="img-nam bg-danger"><%= li.getProduct_name()%></div>
                        </div>
                    </div>





                    <!--                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" >
                                            <div class=" bid-container d-flex align-items-center justify-content-center"  onmouseover="bid(<%=i%>)" onmouseout="bid1(<%=i%>)">
                                                <div  class="countdown hvr-hover bg-danger">
                                                    <p>10d 14h 54m</p>
                                                </div>
                                                <div  class="btn  bg-danger bid" id="<%=i%>" onclick="invent()">
                                                    <p>Bid</p>
                                                </div>
                                                <img class="img-fluid cls-img" src="product_image/<%= li.getProduct_image()%>" alt="" />
                                                <a class="btn hvr-hover" href="#"><%= li.getProduct_name()%></a>
                                               
                                            </div>
                    
                                        </div>-->
                    <%
                        }
                    %>

                </div>
            </div>
        </div>
        <!-- End Categories -->

        <!-- Start Products  -->
        <div class="products-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title-all text-center">
                            <h1>Featured Products</h1>
                            <p>describe of features</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="special-menu text-center">
                            <div class="button-group filter-button-group">
                                <button class="active" data-filter="*">All</button>
                                <button data-filter=".top-featured">Top featured</button>
                                <button data-filter=".best-seller">Best seller</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row special-list">
                    <div class="col-lg-3 col-md-6 special-grid best-seller">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Sale</p>
                                </div>
                                <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i
                                                    class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i
                                                    class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right"
                                               title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Lorem ipsum dolor sit amet</h4>
                                <h5> $7.79</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 special-grid top-featured">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="new">New</p>
                                </div>
                                <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i
                                                    class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i
                                                    class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right"
                                               title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
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

                    <div class="col-lg-3 col-md-6 special-grid top-featured">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Sale</p>
                                </div>
                                <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i
                                                    class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i
                                                    class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right"
                                               title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Lorem ipsum dolor sit amet</h4>
                                <h5> $10.79</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 special-grid best-seller">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Sale</p>
                                </div>
                                <img src="images/img-pro-04.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i
                                                    class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i
                                                    class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right"
                                               title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Lorem ipsum dolor sit amet</h4>
                                <h5> $15.79</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Products  -->

        <!-- Start Blog  -->
        <div class="latest-blog">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title-all text-center">
                            <h1>latest blog</h1>
                            <p>describe latest blog</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="blog-box">
                            <div class="blog-img">
                                <img class="img-fluid" src="images/blog-img.jpg" alt="" />
                            </div>
                            <div class="blog-content">
                                <div class="title-blog">
                                    <h3>Fusce in augue non nisi fringilla</h3>
                                    <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet
                                        urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed
                                        mollis. Praesent laoreet lacinia elit id lobortis.</p>
                                </div>
                                <ul class="option-blog">
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Likes"><i
                                                class="far fa-heart"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Views"><i
                                                class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Comments"><i
                                                class="far fa-comments"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="blog-box">
                            <div class="blog-img">
                                <img class="img-fluid" src="images/blog-img-01.jpg" alt="" />
                            </div>
                            <div class="blog-content">
                                <div class="title-blog">
                                    <h3>Fusce in augue non nisi fringilla</h3>
                                    <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet
                                        urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed
                                        mollis. Praesent laoreet lacinia elit id lobortis.</p>
                                </div>
                                <ul class="option-blog">
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Likes"><i
                                                class="far fa-heart"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Views"><i
                                                class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Comments"><i
                                                class="far fa-comments"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="blog-box">
                            <div class="blog-img">
                                <img class="img-fluid" src="images/blog-img-02.jpg" alt="" />
                            </div>
                            <div class="blog-content">
                                <div class="title-blog">
                                    <h3>Fusce in augue non nisi fringilla</h3>
                                    <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet
                                        urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed
                                        mollis. Praesent laoreet lacinia elit id lobortis.</p>
                                </div>
                                <ul class="option-blog">
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Likes"><i
                                                class="far fa-heart"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Views"><i
                                                class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Comments"><i
                                                class="far fa-comments"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Blog  -->


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
        <%@include file="footer.jsp"%>
        <!----> 
        <!-- ALL JS FILES -->
        <script src="js/changing.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
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

        <!--this is for bid button-->
        <script>
                                    function bid(id) {
                                        var idd = id;
                                        var bid1 = document.getElementById(id);
                                        bid1.style.display = "block";
                                    }
                                    function bid1(id) {
                                        var idd = id;
                                        var bid2 = document.getElementById(id);
                                        bid2.style.display = "none";
                                    }
        </script>

    </body>

</html>
