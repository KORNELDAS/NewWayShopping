<%-- 
    Document   : forgotpwd
    Created on : 23 Dec, 2020, 6:39:07 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NewWayShopping</title>
        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">


        <style>
            *{
                margin: 0;
                padding: 0;

            }

            body{

                background: url("images/forgotpwd.jpg");
                background-repeat: no-repeat;
                background-position: center center;
                background-size: cover;
                background-attachment: fixed;
            }

            .reemail{
                font-weight: bold;
                color: black;
                font-size: 20px;

            }
            .cntr{
                text-align: center;

            }
            input[type="submit"]{
                padding: 8px;
                font-weight: bolder;
                color: black;
                border-radius: 15px;
                transition: 0.4s ease;
            }
            input[type="submit"]:hover{
                color: white;
                transition: 0.4s ease;
                background-color: black!important;
            }
            .fa2{
                position: relative;
                left: 330px;
                bottom: 30px;
                visibility: hidden;
                color: black;
                cursor: pointer;
            }

            .fa1{
                position: relative;
                left: 330px;
                bottom: 30px;
                visibility: hidden;
                color: black;
                cursor: pointer;
            }
            .fa-eye-slash{
                left :310px;
            }


        </style>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/custom.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card " style="margin-top:150px; border-radius: 15px;" >
                        <div class="card-header bg-danger" style="color:black;font-weight: bolder;border-radius: 15px;">
                            Reset Password
                        </div>
                        <div class="card-body " style="border-radius: 15px;background: graytext;">
                            <%
                                if (request.getParameter("key") == null) {
                            %>
                            <% HttpSession hs=request.getSession();
                             String err2=(String)session.getAttribute("error1");
                               String err1=(String)session.getAttribute("error");
                                if (err1=="notuse") {%>
                            <div class="alert alert-danger" role = "alert">This email id doesn't exist</div >

                            <%  err1="";
                                session.removeAttribute("error"); }
                                if(err2=="use"){
                            %>
                             <div class="alert alert-success" role = "alert">Please check your email we sent password reset link</div >
                            <%
                            err2="";
                            session.removeAttribute("error");}
                            %>
                            <form action="SentResetLink" method="get">
                                <label class="reemail">Email:</label><br>
                                <input class="form-control" id="remail" name="email" type="text" ><br>
                                <div class="cntr">
                                    <input class='bg-danger btn hvr-hover' id="subemail" type="submit" value="Send Mail"/>  
                                </div>

                            </form>
                            <% } else {%>
                            <form action="ResetPassword" method="post">
                                <input type="hidden" name="key" value="<% out.print(request.getParameter("key")); %>"/>
                                <label class="reemail">New Password:</label><br>
                                <input class="form-control" id="pss" name="pass" type="password" required onkeyup="flashi()">
                                <span><i id="simple-eye" class="fa fa-eye fa2" aria-hidden="true" onclick="demo()"></i></span>
                                <span><i id="cut-eye" class="fa fa-eye-slash fa2" aria-hidden="true" onclick="demo1()"></i></span><br>
                                <label class="reemail">Confirm Password:</label><br>
                                <input class="form-control" id="pss1" name="pass1" type="password" required onkeyup="flashi1()">
                                <span><i id="simple-eye1" class="fa fa-eye fa1" aria-hidden="true" onclick="demo2()"></i></span>
                                <span><i id="cut-eye1" class="fa fa-eye-slash fa1" aria-hidden="true" onclick="demo3()"></i></span>
                                <div class="cntr">
                                    <input class='bg-danger btn hvr-hover'  type="submit" value="Reset"/>  
                                </div>

                            </form>
                            <%}%>

                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script>
            let eye = document.getElementsByClassName("fa");
            let eye1 = document.getElementById("simple-eye");
            let eye2 = document.getElementById("cut-eye");
            let pass = document.getElementById("pss");
            function flashi() {
                let regex = /^[a-zA-Z0-9@._]+$/;
                if (regex.test(pass.value)) {
                    eye1.setAttribute("style", "visibility:visible;");
                }
                if (pass.value === "") {
                    eye1.setAttribute("style", "visibility:hidden;");
                    eye2.setAttribute("style", "visibility:hidden;");
                }


            }

            function demo() {
                pass.setAttribute("type", "text");
                eye1.setAttribute("style", "visibility:hidden");
                eye2.setAttribute("style", "visibility:visible");
            }
            function demo1() {
                pass.setAttribute("type", "password");
                eye1.setAttribute("style", "visibility:visible");
                eye2.setAttribute("style", "visibility:hidden");
            }
            
            
           /*for confirm password*/     
            let eye11 = document.getElementById("simple-eye1");
            let eye21 = document.getElementById("cut-eye1");
            let pass1 = document.getElementById("pss1");
            function flashi1() {
                let regex = /^[a-zA-Z0-9@._]+$/;
                if (regex.test(pass1.value)) {
                    eye11.setAttribute("style", "visibility:visible;");
                }
                if (pass1.value === "") {
                    eye11.setAttribute("style", "visibility:hidden;");
                    eye21.setAttribute("style", "visibility:hidden;");
                }


            }

            function demo2() {
                pass1.setAttribute("type", "text");
                eye11.setAttribute("style", "visibility:hidden");
                eye21.setAttribute("style", "visibility:visible");
            }
            function demo3() {
                pass1.setAttribute("type", "password");
                eye11.setAttribute("style", "visibility:visible");
                eye21.setAttribute("style", "visibility:hidden");
            }
        </script>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

        <!--  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>-->
        <!-- ALL JS FILES -->
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
