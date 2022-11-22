<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/">
 <title>Sign up</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" type="text/css" href="/css/styleh.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container  p-4">
        <div class="row main mt-3">
            <!-- sign up form -->
            <div class="col-md-6 p-5 " id="signUp">
            	<h1 class="display-4 text-center ">Sign up</h1>
                <p><form:errors path="user.*"/></p>
                <form:form class="d-flex justify-content-center mt-4" method="POST" action="/registration" modelAttribute="user">
                    <div class="w-75 ">
                        <div class="form-group">
				            <form:label path="username">Username:</form:label>
				            <form:input path="username"/>
                        </div>	
                        <div class="form-group ">
				            <form:label path="email">Email:</form:label>
				            <form:input path="email"/>
                        </div>                        
                        <div class="form-group my-4">
            				<form:label path="password">Password:</form:label>
            				<form:password path="password"/>
                        </div>
                        <div class="form-group my-4">
          					<form:label path="confirm">Password Confirmation:</form:label>
            				<form:password path="confirm"/>
                        </div>
                         <input class="input" type="submit" value="Register!"/>                       
                        <div class="d-flex justify-content-between mt-5">
                            <a class="links" href="/login" id="loginLink">Already have an Account ?</a>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/log.js"></script>
</body>
</html>