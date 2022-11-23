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
<input style="margin-left: 36%; margin-top: 20%; width:300px; height:45px;" id="search"><button  class="btn btn-outline-secondary" onclick="getrecepe(document.getElementById('search').value)">Search</button>
<div style="margin-left: 36%; margin-top: 5%;" id="output">
    <script>
        function getrecepe(x){
            const options = {
	method: 'GET',
	headers: {
		'X-RapidAPI-Key': 'e96796d8f9mshf5e750bee34fd36p143071jsn177a35b49e05',
		'X-RapidAPI-Host': 'api-football-v1.p.rapidapi.com'
	}
};

fetch('https://api-football-v1.p.rapidapi.com/v3/teams?search='+x, options)
	.then(response => response.json())
	.then(res => {
        console.log(res);
        
        for(var i=0; i<res.response.length;i++){
        document.getElementById("output").innerHTML+="<h1>"+res.response[i].team.name+"</h1><br><img src='"+res.response[i].team.logo+"' width='400' /><br>Ready in "+res.response[i].team.country
    }
})
	.catch(err => console.error(err));
        }
        </script>

</body>
</html>