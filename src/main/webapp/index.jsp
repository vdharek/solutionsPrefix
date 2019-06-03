<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- CSS -->
    <link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/form.css'/>" />

    <link type="text/css" rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />

    <!-- JAVA_SCRIPT -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>

    <title>PreFix</title>

</head>

<body>
    <footer class="container-fluid text-center">
        <p>Clients, Managers, Admin Portal</p>
    </footer>

    </div>
    </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <img src="<c:url value='/resources/images/PngFile.png'/>" class="img-responsive" style="width:30%" alt="PreFix">
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                        laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                        voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                        laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                        voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="login-form">
                    <form action="#" method="post">
                        <h2 class="text-center">Log in</h2>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Username" required="required">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" required="required">
                        </div>
                        <div class="form-group">
                            <a href="${pageContext.request.contextPath}/clients/list" class="btn btn-primary btn-block">Log in</a>
                        </div>
                        <div class="clearfix">
                            <!-- <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label> -->
                            <!-- <a href="#" class="pull-right">Forgot Password?</a> -->
                        </div>
                    </form>
                    <p class="text-center" onclick="document.getElementById('id01').style.display='block'"><a
                            href="#">Create an Account</a></p>
                </div>

                <div id="id01" class="modal" class="login-form">

                    <form class="modal-content animate" action="#">
                        <div class="imgcontainer">
                            <span onclick="document.getElementById('id01').style.display='none'" class="close"
                                title="Close Modal">&times;</span>
                        </div>

                        <h2 class="text-center">Sign Up</h2>
                        <div class="form-group input">
                            <input type="text" class="form-control" placeholder="User Name" required="required">
                        </div>
                        <div class="form-group input">
                            <input type="text" class="form-control" placeholder="E-mail" required="required">
                        </div>
                        <div class="form-group input">
                            <input type="password" class="form-control" placeholder="Password" required="required">
                        </div>
                        <div class="form-group input">
                            <button type="submit" class="btn btn-primary btn-block">Create Account</button>
                        </div>
                        <div class="clearfix">
                            <!-- <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label> -->
                            <!-- <a href="#" class="pull-right">Forgot Password?</a> -->
                        </div>

                        <div class="container" style="background-color:#f1f1f1">

                        </div>
                    </form>
                </div>

            </div>
        </div>
        <hr>
    </div>
    <div class="container img-center content">
        <h3>What We Do</h3>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <img src="<c:url value='/resources/images/responsive.png'/>" class="img-responsive imgclass" style="width:60%" alt="Web Development">
                <h4 class="textclass">Web Development</h4>
            </div>
            <div class="col-sm-4">
                <img src="<c:url value='/resources/images/tablet.png'/>" class="img-responsive imgclass" style="width:60%" alt="Mobile Applications">
                <h4 class="textclass">Mobile Applications</h4>
            </div>
            <div class="col-sm-4">
                <img src="<c:url value='/resources/images/technical-support.png'/>" class="img-responsive imgclass" style="width:60%"
                    alt="Software Development">
                <h4 class="textclass">Software Development</h4>
            </div>
        </div>
        <hr>
    </div>

    <br>

    <footer class="container-fluid text-center">
        <p>
            <p>&copy; 2019 PreFix Solutions<p></p>
    </footer>

</body>

</html>