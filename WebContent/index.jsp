<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/main.css"/>
	
	<link type="text/css"
		rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
		
    <title>PreFix</title>
</head>
<body>
    <header>
        <div class="container">
            <div id="branding">
                <a href=./index.jsp><img src="<c:url value='/resources/images/PngFile.png'/>" width="100px" height="50px" alt="Tagor"></a>
            </div>
            <nav>
                <p>Placeholder</p>
            </nav>
        </div>
    </header>

    <section id="boxes">
        <div class="container">
            <div class="box">
                <h3>PreFix Practice Project</h3>
                <p>Welcome to our imaginary IT company where we give fake services to our clients 
                    to support their business and help them to build a strong empire.
                    We are flexible with money and give results before the time. Our main focuses is
                    on Web-Development, Software Development, Mobile applications.
                    The founder and only working employee of this company Vivek Dharek believes that 
                    "Understanding is more important than education".
                    
                    <p>Prefix is a base to perform some basic Software engineering operations. With 
                        attractive Front-end and powerful backend one can have access of
                        dash-board. There will be some charts as well for graphical representations. 
                        There is no copy rights, and links on footer are mostly useless. Again the focus 
                        is on Back-end developments. CEO is using HTML, CSS and JavaScript for Frant-end and 
                        Java (Spring) for Back-end.</p>
                        <p>Welcome to our imaginary IT company where we give fake services to our clients 
                            to support their business and help them to build a strong empire.
                            We are flexible with money and give results before the time. Our main focuses is
                            on Web-Development, Software Development, Mobile applications.
                            The founder and only working employee of this company Vivek Dharek believes that 
                            "Understanding is more important than education".
                            </p>
            </div>
            <div class="box1">
                <a href="${pageContext.request.contextPath}/WEB-INF/view/stat.jsp"><button type="button" class="btn first">Way to PreFix</button></a>
            </div>
        </div>
    </section>

    <footer id="footboxs">
        <div class="container grid">
            <div class="boxs">
                <img src="<c:url value='/resources/images/PngFile.png'/>" style="width: 13rem;">
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
                    <a href="#"><li>About us</li></a>
                    <a href="#"><li>About us</li></a>
                    <a href="#"><li>About us</li></a>
                    <a href="#"><li>About us</li></a>
                </ul>
            </div>
        </div>
        <div class="container grid">
            <div class="boxs">
                <p>PreFix Solutions &copy; 2019</p>
            </div>
            
            <div class="boxs">
                <a href="https://www.instagram.com/"><i class="fa fa-instagram" style="font-size:24px;;margin-left: 10px;"></i></a>
                <a href="https://www.facebook.com/"><i class="fa fa-facebook" style="font-size:24px;;margin-left: 10px;"></i></a>
                <a href="https://www.youtube.com/"><i class="fa fa-youtube" style="font-size:24px;;margin-left: 10px;"></i></a>
            </div>
        </div>
    </footer>
</body>
</html>