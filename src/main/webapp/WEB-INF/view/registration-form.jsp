<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <title>List Clients</title>

    <!-- css reference -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/form.css" />

    <link type="text/css" rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" /> 

    <!-- JavaScript file -->

    <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <jsp:include page="header.jsp" />

</head>

<body>
    <div class="container">
        <div class="row">

            <div class="col-sm-12">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <h3>REGISTRATION FORM</h3>
                    <br>
                    <div class="addnew-form">

					<form:form class="modal-content animate" action="${pageContext.request.contextPath}/register/processRegistrationForm" 
										modelAttribute="prefixUser">
                        <div class="imgcontainer">
                            <span onclick="document.getElementById('id01').style.display='none'" class="close"
                                title="Close Modal">&times;</span>
                        </div>

                        <h2 class="text-center">Sign Up</h2>
                        <div class="form-group input">
                        	<form:errors path="userName" cssClass="error" />
                            <form:input path="userName" class="form-control" placeholder="User Name" required="required" />
                        </div>
                        <div class="form-group input">
                        	<form:errors path="password" cssClass="error" />
                            <form:password path="password" class="form-control" placeholder="Password" required="required" />
                        </div>
                        <div class="form-group input">
                        	<form:errors path="matchingPassword" cssClass="error" />
                            <form:password path="matchingPassword"  class="form-control" placeholder="Confirm Password" required="required" />
                        </div>
                        <div class="form-group input">
                        	<form:errors path="firstName" cssClass="error" />
                            <form:input path="firstName" class="form-control" placeholder="First Name" required="required" />
                        </div>
                        <div class="form-group input">
                        	<form:errors path="lastName" cssClass="error" />
                            <form:input path="lastName" class="form-control" placeholder="Last Name" required="required" />
                        </div>
                        <div class="form-group input">
                        	<form:errors path="email" cssClass="error" />
                            <form:input path="email" class="form-control" placeholder="E-mail" required="required" />
                        </div>
                        <div class="form-group input">
                            <button type="submit" class="btn btn-primary">Create Account</button>
                        </div>
                        
                        <div class="clearfix">
                            <!-- <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label> -->
                            <!-- <a href="#" class="pull-right">Forgot Password?</a> -->
                        </div>

                        <div class="container" style="background-color:#f1f1f1">

                        </div>
                  </form:form> 
                       
                    </div>
                </div>
            </div>
        </div>
        <br>
    </div>
    <jsp:include page="footer.jsp" />
</body>

</html>