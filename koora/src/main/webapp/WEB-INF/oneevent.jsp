<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<meta charset="ISO-8859-1">
<title><c:out value="${event.name}"/></title>
</head>
<body>
	<main class="container">
		<h4>Event: <c:out value="${event.name}"/></h4>
		<h4>Event: <c:out value="${event.capacity}"/></h4>
		<h4>Event: <c:out value="${event.contact}"/></h4>
		<h4>Event: <c:out value="${event.location}"/></h4>
		<h4>Event: <c:out value="${event.city}"/></h4>
		<h4>Event: <c:out value="${event.placeType}"/></h4>
		
		<c:choose>
			<c:when test="${event.host.id==currentUser.id}">
		    	<a style="text-decoration: none;" href="/events/${event.id}/delete">Delete</a>
				<a style="text-decoration: none;" href="/events/${event.id}/edit">Edit</a>
			</c:when>
			<c:when test="${attendance}">
		    	<a href="/events/${event.id}/leave">Leave</a>
			</c:when>
			<c:otherwise><a href="/events/${event.id}/join">Join</a></c:otherwise>
		</c:choose>
	</main>

</body>
</html>