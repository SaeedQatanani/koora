<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/">
 <title>Log in</title>
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
         <div class="col-md-6 p-5 " id="signUp">
         </div>
 		<!-- Login Form  -->
            <div class="col-md-6 p-5 " id="login">
                <h1 class="display-4 text-center ">Login</h1>
			    <c:if test="${logoutMessage != null}">
			        <c:out value="${logoutMessage}"></c:out>
			    </c:if>
			    <c:if test="${errorMessage != null}">
			        <c:out value="${errorMessage}"></c:out>
			    </c:if>		      
				<form method="POST" action="/login" class="d-flex justify-content-center mt-4">
                    <div class="w-75 ">
                        <div class="form-group">
							<label for="username">Username</label>
							<input type="text" id="username" name="username"/>
                        </div>
                        <div class="form-group my-4">
							<label for="password">Password</label>
							<input type="password" id="password" name="password"/>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="submit" value="Login!"/>
                        <div class="d-flex justify-content-between mt-5">
                            <a class="links" href="/registration" id="registerLink">Create an Account ?</a>
                        </div>
                    </div>
				</form>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/log.js"></script>
</body>
</html>