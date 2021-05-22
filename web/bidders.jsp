<%-- 
    Document   : bidders
    Created on : 2 Mar, 2021, 11:36:58 AM
    Author     : Asus
--%>

<%-- 
    Document   : bided_products
    Created on : 28 Feb, 2021, 12:11:31 PM
    Author     : Asus
--%>

<%@page import="java.sql.ResultSet"%>
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
                        <h2>Your Bidders</h2>

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
                                        <th>Biding Price</th>
                                        <th>Contact Number</th>
                                        <th>Email</th>
                                        <th>Select</th>
                                     
                                    </tr>
                                </thead>
                                <tbody>
                                    <%   try {
                                            Users users1 = (Users) session.getAttribute("currentUser");
                                            String user_email = users1.getEmail();
                                            Connection cd = Database.getConnection();
                                            String quer = "select * from product where puser=?";
                                            PreparedStatement ps = cd.prepareStatement(quer);
                                            ps.setString(1, user_email);
                                            ResultSet rs = ps.executeQuery();
                                            while (rs.next()) {

                                                int id = rs.getInt("product_id");
                                                String image = rs.getString("product_image");
                                                try {
                                                    Connection cd1 = Database.getConnection();
                                                    String quer1 = "select * from bidders where product_id=?";
                                                    PreparedStatement ps1 = cd1.prepareStatement(quer1);
                                                    ps1.setInt(1, id);
                                                    ResultSet rs1 = ps1.executeQuery();

                                                    while (rs1.next()) {
                                                        String user=rs1.getString("user_email");
                                                        int pid=rs1.getInt("product_id");
                                                        
                                                
                                    %>
                                    <tr id="temp">
                                        <td class="thumbnail-img">
                                            <a href="#">
                                                <img class="img-fluid" src="product_image/<%=image%>" alt="" />
                                            </a>
                                        </td>
                                        <td class="name-pr">
                                            <a href="#">
                                                <%= rs1.getString("product_name")%> 
                                            </a>
                                        </td>
                                        <td class="price-pr">
                                            <p><%= rs1.getString("biding_price")%></p>
                                        </td>
                                        <td class="quantity-box"><%= rs1.getString("phone")%></td>
                                       
                                        <td class="total-pr prdct_sts"  >
                                           <%= rs1.getString("user_email")%>
                                        </td>
                                       

                                        <td class="total-pr prdct_sts"  >
                                            <form id="select_form" method="get" action="Select_Help">
                                                <input type="hidden" name="user_name" value="<%= user %>">
                                                <input type="hidden" name="pid" value="<%= pid %>">
                                                
                                            </form>
                                            <button type="button" class="btn btn-primary" onclick="select()">Select</button>
                                        </td>
                                       
                                       
                                        
                                    </tr>

                                    <%
                                        
                                            }
                                                } catch (Exception ex1) { 
                                                    System.out.println(ex1.getMessage());
                                                }
                                            }
                                        } catch (Exception ex) {
                                            System.out.println(ex.getMessage());
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

         <script>
           
            
            
        </script>

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




    </body>
</html>


