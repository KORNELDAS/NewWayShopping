<%-- 
    Document   : admin
    Created on : 21 May, 2021, 12:42:57 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="admin.css" rel="stylesheet" type="text/css"/>
        <title>Admin Panel</title>

    </head>
    <body>
        <div class="drama">
            <div class="navigate"> 
                <ul>
                    <li>
                        <a>
                            <span><i class="fa fa-user-circle" aria-hidden="true"></i></span>
                            <span class="user-name">Sabyasachi</span>
                        </a>
                    </li>
                    <hr/>
                    <li>
                        <a href="#">
                            <span><i class="fa fa-home" aria-hidden="true"></i></span>
                            <span>Dashboard</span>
                        </a>

                    </li>
                    <li>
                        <a href="#">
                            <span><i class="fa fa-users" aria-hidden="true"></i></span>
                            <span>Customers</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span><i class="fa fa-key" aria-hidden="true"></i></span>
                            <span>Password</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span><i class="fa fa-wrench" aria-hidden="true"></i></span>
                            <span>Setting</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span><i class="fa fa-sign-out" aria-hidden="true"></i></span>
                            <span>Logout</span>
                        </a>
                    </li>
                </ul>

            </div>


            



        </div>
        
        <div class="main">
                <div class="top-bar">
                    <div class="toogle" onclick="togglemenu()">
                        <span><i class="fa fa-bars" aria-hidden="true"></i></span>
                    </div>
                    <div class="search-box">
                       
                        <input type="text" placeholder="search" >
                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                    </div>
                    <div class="user">
                        <img src="image/resume.jpg" />

                    </div>
                </div>
            </div>



        <script src="admin.js" type="text/javascript"></script>




    </body>
</html>
