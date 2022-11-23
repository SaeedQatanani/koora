<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
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
	<title>Matches Dashboard</title>
</head>
<body  style="background-color: wheat">

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
	<c:forEach var="match" items="${matches}">
    <img src="images/Untitled-3.png" style="width: 10%;margin-top:7% ;margin-left: 44%;" alt="">
    <div id="create_formmm1">
        <div class="forr1" style="position:relative;">
            <p style="position: absolute;font-weight: bold; margin-top: 1.5%"><c:out value="${match.firstTeam}"/></p>
            <span style="font-weight: bold;font-size:xx-large;margin-left: 45%;margin-top: 0%;">VS</span>
            <p style="position: absolute;font-weight: bold;margin-left: 85%;margin-top: 1.5%"><c:out value="${match.secondTeam}"/></p>
            </div>
        <button style="padding: 0.5%;margin-left: 39%;background-color: #75263a;color:wheat ;font-weight: bold;width:20%;margin-top: 10px; border-radius:20px;border: wheat;"><a href="/matchevents/<c:out value="${match.id}"/>">Hosts</a></button>
    </div>
	</c:forEach>








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