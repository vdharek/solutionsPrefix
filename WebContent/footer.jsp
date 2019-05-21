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
    <footer id="footboxs">
        <div class="container grid">
            <div class="boxs">
                <img src="<c:url value='/resources/images/PngFile.png'/>"  style="width: 13rem;">
                <p>"PreFix", Address is not required.
                </p>
            </div>
            <div class="boxs">
                <h1>HOURS</h1>
                <p>MON - FRI 9:00 to 20:00</p>
                <p>SAT - SUN - 9:00 to 18:00</p>
            </div>
            <div class="boxs">
                <h1>ABOUT</h1>
                <ul style="list-style: none">
                    <a href="#">
                        <li>About us</li>
                    </a>
                    <a href="#">
                        <li>About us</li>
                    </a>
                    <a href="#">
                        <li>About us</li>
                    </a>
                    <a href="#">
                        <li>About us</li>
                    </a>
                </ul>
            </div>
        </div>
        <div class="container grid">
            <div class="boxs">
                <p>PreFix Solutions &copy; 2019</p>
            </div>

            <div class="boxs">
                <a href="https://www.instagram.com/"><i class="fa fa-instagram"
                        style="font-size:24px;;margin-left: 10px;"></i></a>
                <a href="https://www.facebook.com/"><i class="fa fa-facebook"
                        style="font-size:24px;;margin-left: 10px;"></i></a>
                <a href="https://www.youtube.com/"><i class="fa fa-youtube"
                        style="font-size:24px;;margin-left: 10px;"></i></a>
            </div>
        </div>
    </footer>
</body>

</html>