<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<base href="/">
	<!-- Required meta tags -->
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
	<title>About us</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script type="text/javascript" src="test.js"></script>
</head>
<body>


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
							<li class="active"><a style="font-weight: bold" href="/matches">Home</a></li>
							<li class="active"><a style="font-weight: bold"href="/">Matches</a></li>
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
    						</a>
							</li>
						</ul>
						<a href="#" class="burger ms-auto float-end site-menu-toggle js-menu-toggle d-inline-block d-lg-none light" data-toggle="collapse" data-target="#main-navbar">
							<span></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</nav>


	<div class="hero overlay">
		<div class="img-bg rellax">
			<img src="images/photo-1637203727317-3cc1a557cdbf.jpg" alt="Image" class="img-fluid">
		</div>
		<div class="container">
			<div class="row align-items-center justify-content-start">
				<div class="col-lg-5">
					<h1 class="heading" data-aos="fade-up">About Us</h1>
					<p class="mb-5" data-aos="fade-up">We are a group of future developers who are also passionate about football. 
We created this website as a spot hub for World Cup fans in Palestine to to look up places to watch the games, also our users can host these game events at their own place whether it’s a local café, restaurant or host’s private place.</p>
					<div data-aos="fade-up">
				</div>
			</div>
		</div>
	</div>
	</div>


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
