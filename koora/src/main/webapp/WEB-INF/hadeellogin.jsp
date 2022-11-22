<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>Login & Sign up Form</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

    <div class="container  p-4">
        <div class="row main mt-3">

            <!-- sign up form -->
            <div class="col-md-6 p-5 " id="signUp">
                <h1 class="display-4 text-center ">Sign up</h1>
                <form:form class="d-flex justify-content-center mt-4" action="/register" method="post" modelAttribute="newUser">
                    <div class="w-75 ">
                    
                        <div class="form-group">
                        <form:label path="userName">User Name:</form:label>
        				<form:errors path="userName"/>
        				<form:input path="userName"/>
                        </div>

        						
                        <div class="form-group ">
                        <form:label path="email">Email:</form:label>
        				<form:errors path="email"/>
        				<form:input path="email"/>
                        </div>                        
                        
                  
                        <div class="form-group my-4">
                        <form:label path="password">Password</form:label>
        				<form:errors path="password"/>
        				<form:input type="password" path="password"/>
                        </div>
                        
                        
                        <div class="form-group my-4">
                        <form:label path="confirm">Confirm Password</form:label>
        				<form:errors path="confirm"/>
        				<form:input type="password" path="confirm"/>
                        </div>
                                                
                        <button value="Submit" class="input" type="submit">Register</button>
                        <div class="d-flex justify-content-between mt-5">
                            <a class="links" href="#" id="loginLink">Already have an Account ?</a>
                        </div>
                    </div>
                </form:form>
            </div>
<!-- ///////////////////////////////////////////////////////////////////////////////////////////////////// -->
 <!-- Login Form  -->
            
            <div class="col-md-6 p-5 " id="login">
                <h1 class="display-4 text-center ">Login</h1>
                <form:form action="/login" method="post" modelAttribute="newLogin" class="d-flex justify-content-center mt-4">
                    <div class="w-75 ">
                    
                        <div class="form-group">
	        				<form:label path="email">Email:</form:label>
	        				<form:errors path="email"/>
	        				<form:input path="email"/>
                        </div>
                        
                        <div class="form-group my-4">
        				<form:label path="password">Password:</form:label>
        				<form:errors path="password"/>
        				<form:input type="password" path="password"/>
                        </div>
                        
                        <button type="submit">Login</button>
                        <div class="d-flex justify-content-between mt-5">
                            <a class="links" href="#" id="registerLink">Create an Account ?</a>
                            <a class="links" href="#" >forget Password ?</a>
                        </div>
                    </div>
                </form:form>
            </div>
            <div  id="overlay">
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/log.js"></script>
    
</body>
</html>