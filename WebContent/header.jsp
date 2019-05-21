<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" media="screen" href="./css/form.css" />
    
    <link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/main.css"/>
	
	<link type="text/css"
		rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    
    <script src="<c:url value='/resources/js/script.js'/>"></script>
    <title>PreFix</title>
</head>

<body>
    <header>
        <div class="container">
            <div id="branding">
                <a href="${pageContext.request.contextPath}/index.jsp"><img src="<c:url value='/resources/images/PngFile.png'/>" width="100px" height="50px" alt="Tagor"></a>
            </div>
            <nav>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/clients/showFormForAdd">New Client</a></li>
                    <li><a href="${pageContext.request.contextPath}/clients/list">Show Clients</a></li>
                    <li><a href="#">Statastic</a></li>
                    <li><a href="#">Documentation</a></li>
                </ul>
            </nav>
        </div>
    </header>
</body>
</html>