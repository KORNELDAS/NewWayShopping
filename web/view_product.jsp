<%-- 
    Document   : view_product
    Created on : 29 Dec, 2020, 6:32:13 PM
    Author     : Asus
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    HttpSession hs1 = request.getSession(false);
    if (hs1.getAttribute("currentUser") == null) {
        response.sendRedirect("index.jsp");
    }


%>

<%@page import="entities.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.newwayshopping.dao.Productdao"%>
<%@page import="com.newwayshopping.databases.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
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
            .cros-but{
                color: black;
                transition: 0.5s ease;
            }
            .cros-but:hover{
                color: #17a2b8;
                transition: 0.5s ease;
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>


        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Your Added Product</h2>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->

        <!-- Start Cart  -->
        <div class="cart-box-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-main table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Images</th>
                                        <th>Product Name</th>
                                        <th>Price</th>
                                        <th>Type</th>
                                        <th>Time</th>
                                        <th>Remove</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%                                        Users users1 = (Users) session.getAttribute("currentUser");

                                        Productdao pr = new Productdao(Database.getConnection());
                                        ArrayList<Product> list = pr.getProduct(users1.getEmail());

                                        int k = 0;
                                        for (Product li : list) {

                                            k++;
                                    %>
                                    <tr id="<%= k%>">
                                        <td class="thumbnail-img">
                                            <a href="#">
                                                <img class="img-fluid" src="product_image/<%=li.getProduct_image()%>" alt="" />
                                            </a>
                                        </td>
                                        <td class="name-pr">
                                            <a href="#">
                                                <%= li.getProduct_name()%>
                                            </a>
                                        </td>
                                        <td class="price-pr">
                                            <p><%= li.getProduct_cost()%></p>
                                        </td>
                                        <td class="quantity-box"><%= li.getProduct_type()%></td>
                                        <td class="total-pr">
                                            <p>$ 80.0</p>
                                        </td>
                                        <td class="remove-r">

                                            <form action="DeleteProduct" id="<%= li.getProduct_id()%>" method="post">
                                                <input type="hidden" name="del_id" value="<%= li.getProduct_id()%>">
                                            </form>
                                            <i class="fas fa-times cros-but" onclick="deletpro(<%= k%>,<%= li.getProduct_id()%>)"></i>

                                        </td>
                                    </tr>

                                    <%
                                        }
                                    %>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>



            </div>
        </div>-
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


        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous"></script>
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

        <!--its for deleting product from database-->
        <script>
                                                function deletpro(k, id) {
                                                    let tbrow = document.getElementById(k);
                                                    let dele_frm = document.getElementById(id);
                                                    swal({
                                                        title: "Are you sure?",
                                                        text: "Once deleted, you will not be able to recover this Product",
                                                        icon: "warning",
                                                        buttons: true,
                                                        dangerMode: true
                                                    })
                                                            .then((willDelete) => {
                                                                if (willDelete) {
                                                                    tbrow.style.display = "none";

                                                                    swal("Successfully Registered", "Click on the ok button for redirecting to login page", "success")
                                                                            .then((value) => {
                                                                                dele_frm.submit();
                                                                            });
                                                                } else {
                                                                    swal("Your Product is safe!");
                                                                }
                                                            });

                                                }


        </script>




        <!--End-->

    </body>
</html>
