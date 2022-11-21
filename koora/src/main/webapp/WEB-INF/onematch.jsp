<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<main class="container">
		<h4>Match: <c:out value="${thematch.firstTeam}"/>  vs <c:out value="${thematch.secondTeam}"/></h4>
		<h4>Match Date:  <fmt:formatDate value="${thematch.matchDate}" pattern="MMMM dd, yyyy"/></h4>
		<h4>Match Time: <c:out value="${thematch.matchTime}"/></h4>
		<a style="text-decoration: none;" href="/admin/${thematch.id}/delete">Delete</a>
	</main>
	
</body>
</html>