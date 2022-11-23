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
	<title>New Event</title>
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
	<div id="create_formmm">
		<form:form class="forr" action="/events/create" method="post" modelAttribute="event" >
			<form:input type="hidden"  path="host" value="${currentUser.id}"/>
			<div >
			<div >
		<form:label  path="name">Name</form:label>
		 <form:errors path="name" class="text-danger" />
		<form:input style="border-radius:20px;border: wheat;padding: 0 5%;" type="text"  aria-describedby="emailHelp"  path="name"></form:input>
			<hr></div>
			
	   <div >
		<form:label  path="location">Location</form:label>
		 <form:errors path="location" class="text-danger" />
		<form:input style="border-radius:20px;border: wheat;padding: 0 5%;" type="text" aria-describedby="emailHelp"  path="location"></form:input>
	   <hr></div>
		<div >
		<form:label  path="city">City</form:label>
		<form:select style="margin-left: 27%;border-radius:20px;border: wheat;padding: 0 5%;" path="city"><form:options items="${cities}" /></form:select>
		<hr></div>
	  <div >
		<form:label  path="placeType">Place type</form:label>
		<form:select style="margin-left: 10%;border-radius:20px;border: wheat;padding: 0 5%;" path="placeType"><form:options items="${placeTypes}" /></form:select>  
	  <hr></div>
	  <div >
		<form:label path="capacity">Capacity</form:label>
		<form:errors path="capacity" class="text-danger" />
		<form:input style="border-radius:20px;border: wheat;padding: 0 5%;" type="number" aria-describedby="emailHelp"  path="capacity"></form:input>  
	  <hr></div>
	  <div >
		<form:label path="contact">Contact</form:label>
		<form:errors path="contact" class="text-danger" />
		<form:input style="border-radius:20px;border: wheat;padding: 0 5%;" type="text" aria-describedby="emailHelp"  path="contact"></form:input>  
	  <hr></div>
	  <div >
		<form:label  path="match">Match</form:label>
		<form:select path="match" style="border-radius:20px;border: wheat;padding: 0 5%;">
			<c:forEach var="match" items="${matches}">
				<form:option value="${match.id}"><c:out value="${match.firstTeam}"/>  vs <c:out value="${match.secondTeam}"/></form:option>
			</c:forEach>
		</form:select>  
	  <hr></div>
	  
		  <button type="submit" style="color:#75263a ;font-weight: bold;width: 86%;margin-top: 10px; border-radius:20px;border: wheat;">Submit</button>
			</div>
			<img style="margin-left: 30%;width: 20%;" src="images/logoo.jpg" alt="">
		 </form:form>
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