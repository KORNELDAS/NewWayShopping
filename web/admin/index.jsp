<%-- 
    Document   : admin_panel
    Created on : 9 Dec, 2020, 11:36:04 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NewWayShopping</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
        <link href="admin.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
                HttpSession ses = request.getSession(false);
                out.print(request.getParameter("check_login"));
                if(request.getParameter("check_login")!=null){
                        if(request.getParameter("admin_id").equals("admin") && request.getParameter("pass").equals("12345")){
                            ses.setAttribute("admin_log", "success");
                        }
                        else{
                            out.print("<script>alert('invalid credentials');</script>");
                        }

                }
                if(ses.getAttribute("admin_log")!=null){
            %>
        
        <!--vertical navbar-->
        <div class="vertical-nav bg-whie" id="sidebar">
            <div class="py-4 px-3 mb-4 bg-grey">
                <div class="media d-flex align-items-center">
                    <img src="image/resume.jpg" alt="..." width="80" height="80" class="mr-3 rounded-circle img-thumbnail shadow-sm">
                    <div class="media-body">
                        <h4 class="m-0 text-white">Sabyasachi</h4>
                        <p class="text-white font-weight-normal mb-0">Web Developer</p>
                    </div> 
                </div>
            </div>

            <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0 ">Dashboard</p>
            <ul class="nav flex-column bg-whie mb-0">
                <li class="nav-item">
                    <a class="nav-link text-dark">
                        <i class="fa fa-home fa-fw text-dark mr-3" aria-hidden="true"></i>Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark">
                        <i class="fa fa-address-card-o fa-fw text-dark mr-3" aria-hidden="true"></i>about
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark">
                        <i class="fa fa-cubes fa-fw text-dark mr-3" aria-hidden="true"></i>services
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark">
                        <i class="fa fa-picture-o fa-fw text-dark mr-3" aria-hidden="true"></i>gallery
                    </a>
                </li>
            </ul>

            <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0 ">charts</p>
            <ul class="nav flex-column bg-whie mb-0">
                <li class="nav-item">
                    <a class="nav-link text-dark">
                        <i class="fa fa-area-chart fa-fw text-dark mr-3" aria-hidden="true"></i>area charts
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark">
                        <i class="fa fa-line-chart fa-fw text-dark mr-3" aria-hidden="true"></i>line charts
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark">
                        <i class="fa fa-pie-chart fa-fw text-dark mr-3" aria-hidden="true"></i>pie charts
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark">
                        <i class="fa fa-bar-chart fa-fw text-dark mr-3" aria-hidden="true"></i>bar charts
                    </a>
                </li>
            </ul>

        </div>
        
        <!--main content and toogle button-->
        
        <div class="page-content p-5" id="content">
            <button onclick="myFunction()">Try it</button>
            <span  >
                <i class="fa fa-bars toogle1" aria-hidden="true" onclick="demo()"></i>
                
            </span>
            
        </div>
        <%
            }else{
            %>
            
            <div class="container  d-flex justify-content-center ">
            <div class="card my-3" style="width: 28rem;">


                <div class="jumbotron jumbotron-fluid">
                    <div class="container">
                        <h1 style="text-decoration:underline " align="center">Admin LOG IN</h1>

                        <form action="#" method="post">
                            
                            <!--code for email-->
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">admin id</label>
                                <input type="text" name="admin_id" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            
                            <!--code for password-->
                            
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" name="pass" class="form-control" id="exampleInputPassword1">
                            </div>
                            
                            <!--code for check box-->
                            
                            <div class="form-group form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            
                            <!--code for submit-->
                            
                            <div style="text-align: center">                    
                                <button  name="check_login" type="submit" class="btn btn-primary" style='font-size:25px'>Submit</button>
                            </div>
                            
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
            
            <%
                }
                %>


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="admin.js" type="text/javascript"></script>
    </body>
</html>
