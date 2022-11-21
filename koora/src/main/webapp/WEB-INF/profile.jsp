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
<title><c:out value="${currentUser.username}"/></title>
</head>
<body>
	<main class="container">
		<h4>Welcome, <c:out value="${currentUser.username}"/></h4>
		<c:choose>
			<c:when test="${predection}">
		    	<p>Your guess for the winner: <c:out value="${currentUser.prediction}"></c:out></p>
			</c:when>
			<c:otherwise>
				<form action="/profile/predict" method="post">
				    <div class="form-group">
					    <label  for="prediction">Make your world cup winner guess</label>
						<select id="prediction" name="prediction" class="form-select">
							<c:forEach var="team" items="${teams}">
								<option><c:out value="${team}"></c:out></option>
							</c:forEach>
						</select>
				    </div>
        			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		 			<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</c:otherwise>
		</c:choose>
	</main>

</body>
</html>