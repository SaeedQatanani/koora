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
<title>Insert title here</title>
</head>
<body>
<div style="width:1000px; height:1000px; padding:10px; margin:0 auto">
<h1>Edit an event!</h1>

<form:form action="/events/${event.id}/edit" method="post" modelAttribute="event">
<input type="hidden" name="_method" value="put">
<form:input type="hidden"  path="host" value="${currentUser.id}"/>

<form:input type="hidden"  path="attendees" />
  <div class="form-group">
    <form:label  path="name">Name</form:label>
     <form:errors path="name" class="text-danger" />
    <form:input type="text" class="form-control"  aria-describedby="emailHelp"  path="name"></form:input>
    </div>
   
  <div class="form-group">
    <form:label  path="location">Location</form:label>
     <form:errors path="location" class="text-danger" />
    <form:input type="text" class="form-control"  aria-describedby="emailHelp"  path="location"></form:input>
    </div>
    
    
  <div class="form-group">
    <form:label  path="city">City</form:label>
	<form:select path="city" class="form-select"><form:options items="${cities}" /></form:select>
  </div>
  
  
  <div class="form-group">
    <form:label  path="placeType">Place type</form:label>
	<form:select path="placeType" class="form-select"><form:options items="${placeTypes}" /></form:select>
  </div>
  
  
  <div class="form-group">
    <form:label path="capacity">Capacity</form:label>
    <form:errors path="capacity" class="text-danger" />
    <form:input type="number" class="form-control"  aria-describedby="emailHelp"  path="capacity"></form:input>
  </div>
  
  
    <div class="form-group">
    <form:label path="contact">Contact</form:label>
    <form:errors path="contact" class="text-danger" />
    <form:input type="text" class="form-control"  aria-describedby="emailHelp"  path="contact"></form:input>
  </div>
  
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>
</div>
</body>

</html>