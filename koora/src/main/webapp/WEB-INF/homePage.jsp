<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="favicon.png">
	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap5" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Brygada+1918:ital,wght@0,400;0,600;0,700;1,400&family=Inter:wght@400;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="fonts/icomoon/style.css">
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<link rel="stylesheet" href="css/tiny-slider.css">
	<link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/flatpickr.min.css">
	<link rel="stylesheet" href="css/glightbox.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home Page</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script type="text/javascript" src="test.js"></script>
	<style>
		* {box-sizing: border-box;}
		body {font-family: Verdana, sans-serif;}
		.mySlides {display: none;}
		.imgs  {vertical-align: middle; margin-top: 5%; margin-left: 25%}
		
		/* Slideshow container */
		.slideshow-container {
		  max-width: 1000px;
		  position: relative;
		  margin: auto;
		}
		
		/* Caption text */
		.text {
		  color: #f2f2f2;
		  font-size: 15px;
		  padding: 8px 12px;
		  position: absolute;
		  bottom: 8px;
		  width: 100%;
		  text-align: center;
		}
		
		/* Number text (1/3 etc) */
		.numbertext {
		  color: #f2f2f2;
		  font-size: 12px;
		  padding: 8px 12px;
		  position: absolute;
		  top: 0;
		}
		
		/* The dots/bullets/indicators */
		.dot {
		  
		  height: 15px;
		  width: 15px;
		  margin: 0 2px;
		  background-color: #bbb;
		  border-radius: 50%;
		  display: inline-block;
		  transition: background-color 0.6s ease;
		}
		
		
		/* Fading animation */
		.fade {
		  animation-name: fade;
		  animation-duration: 2s;
		}
		
		@keyframes fade {
		  from {opacity: .4} 
		  to {opacity: 1}
		}
		
		/* On smaller screens, decrease text size */
		@media only screen and (max-width: 300px) {
		  .text {font-size: 11px}
		}

.topnav input[type=text] {
	border-radius: 20px;
  font-size: 17px;
  width: 200%;
  border: 1px solid rgb(214, 214, 214);
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
}

</style>
</head>
<body class="bod">
	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<nav class="site-nav mt-3">
		<div class="container">
			<div class="site-navigation">
				<div  class="row">
					<div class="col-6 col-lg-3">
						<a href="index.html" class="logo m-0 float-start">WorldCupUp</a>
					</div>
					<div class="col-lg-6 d-none d-lg-inline-block text-center nav-center-wrap">
						<ul class="js-clone-nav  text-center site-menu p-0 m-0">
							<li class="active"><a style="font-weight: bold" href="/">Home</a></li>
							<li class="active"><a style="font-weight: bold"href="/matches">Matches</a></li>
							<li class="active"><a style="font-weight: bold"href="/api">More On</a></li>
							<li class="active"><a style="font-weight: bold"href="/events/new">Create Event</a></li>
							<li class="active"><a style="font-weight: bold"href="/profile">Profile</a></li>
							<li class="active"><a style="font-weight: bold"href="/aboutus">About us</a></li>
						</ul>
					</div>
					<!-- <input type="text" placeholder="Search.."> -->
					<div class="col-6 col-lg-3 text-lg-end">
						<ul class="js-clone-nav d-none d-lg-inline-block text-end site-menu ">
							<li class="cta-button" style="font-weight: bold"><a>
							<form id="logoutForm" method="POST" action="/logout">
        						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        						<input type="submit" value="Logout!" style="margin:0; padding:0; border:0;"/>
    						</form>
    						</a></li>
						</ul>
						<a href="#" class="burger ms-auto float-end site-menu-toggle js-menu-toggle d-inline-block d-lg-none light" data-toggle="collapse" data-target="#main-navbar">
							<span></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</nav>
<div style="display: flex; flex-direction: column" >
	
<img src="images/photo.jpg" width="100%" alt="" style="opacity: 0.75;">


</div>
<div style="background-color: #8c1638">
	<div class="slideshow-container">
		<div class="mySlides fade">
			<img class="imgs"src="images/g1.jpg" style="width:50%">
		</div>
		
		<div class="mySlides fade">
			<img class="imgs"src="images/g2.jpg" style="width:50%">
		</div>
		
		<div class="mySlides fade">
			<img class="imgs"src="images/g3.jpg" style="width:50%">
		</div>

		<div class="mySlides fade">
			<img class="imgs"src="images/g4.jpg" style="width:50%">
		</div>
				
		<div class="mySlides fade">
			<img class="imgs"src="images/g5.jpg" style="width:50%">
		</div>
				
		<div class="mySlides fade">
			<img class="imgs"src="images/g6.jpg" style="width:50%">
		</div>
				
		<div class="mySlides fade">
			<img class="imgs"src="images/g7.jpg" style="width:50%">
		</div>
				
		<div class="mySlides fade">
			<img class="imgs"src="images/g8.jpg" style="width:50%">
		</div>
	</div>
		<br>
		
		<div style="text-align:center">
			<span style="margin-bottom: 10px" class="dot"></span> 
			<span style="margin-bottom: 10px"class="dot"></span> 
			<span style="margin-bottom: 10px"class="dot"></span> 
			<span style="margin-bottom: 10px"class="dot"></span> 
			<span style="margin-bottom: 10px"class="dot"></span> 
			<span style="margin-bottom: 10px"class="dot"></span> 
			<span style="margin-bottom: 10px"class="dot"></span> 
			<span style="margin-bottom: 10px"class="dot"></span> 
		</div>
</div>
	<script>
		let slideIndex = 0;
		showSlides();
		
		function showSlides() {
		  let i;
		  let slides = document.getElementsByClassName("mySlides");
		  let dots = document.getElementsByClassName("dot");
		  for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";  
		  }
		  slideIndex++;
		  if (slideIndex > slides.length) {slideIndex = 1}    
		  for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		  setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
		</script>
		


    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/tiny-slider.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/navbar.js"></script>
    <script src="js/counter.js"></script>
    <script src="js/rellax.js"></script>
    <script src="js/flatpickr.js"></script>
    <script src="js/glightbox.min.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>