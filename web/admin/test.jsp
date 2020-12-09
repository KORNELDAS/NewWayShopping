<%-- 
    Document   : test
    Created on : 9 Dec, 2020, 4:36:16 PM
    Author     : gagan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
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

<h2>Animated Sidenav Example</h2>
<p>Click on the element below to open the side navigation menu.</p>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
   
</body>
</html> 

