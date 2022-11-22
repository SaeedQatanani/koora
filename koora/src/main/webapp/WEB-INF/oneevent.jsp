<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<base href="/">
<!-- YOUR own local CSS -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style1.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <link rel="stylesheet" href="css/display.css">
    <title>Events Ticket Card</title>
</head>
<body>
    <nav>
		<div class="logo">
			<p>WorldCup</p>
		</div>
		<ul>
			<li><a href="/" class="active">Home</a></li>
			<li><a href="/aboutus">about Us</a></li>
			<li><a href="/events">Places</a></li>
			<li><a href="/profile">profile</a></li>
			<li><a href="/events/new">Create</a></li>
            <li><a href="">LogOut</a></li>
		</ul>
	</nav>
    <div class="container">
        <div class="item-container">
            <div class="img-container">
                <img src="2022-world-cup-emblem (1).gif" alt="Event image">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title"><c:out value="${event.name}"/></p>
                    <div class="separator"></div>
                    <p class="info"><c:out value="${event.city}"/></p>
                    <p class="price">Capacity: <c:out value="${event.capacity}"/>, Remaining seats: <c:out value="${remainingSeats}"/></p>

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                            <c:out value="${event.location}"/>
                        </p>
                        

                        <p class="info description">
                            Welcome! Everyone has a unique perspective after visiting our place, and we would love you
                            to share yours with us! We meet one Sunday evening <span>more...</span>
                        </p>
                    </div>
                </div>
                <c:choose>
			<c:when test="${event.host.id==currentUser.id}">
				<a style="text-decoration: none;" href="/events/${event.id}/edit"  class="action">Edit</a>
			</c:when>
			<c:when test="${attendance}">
		    	<a href="/events/${event.id}/leave" class="action">Leave</a>
			</c:when>
			<c:otherwise>
				<c:choose>
				<c:when test="${event.attendees.size() < event.capacity}">
					<a href="/events/${event.id}/join" class="action">Join</a>
				</c:when>
				<c:otherwise>
					<p>This event is fully booked.</p>
				</c:otherwise>
				</c:choose>
			</c:otherwise>
		</c:choose>
            </div>
        </div>
        </div>


</body>
</html>