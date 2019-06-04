<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- CSS files -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/form.css"  />

    <link type="text/css" rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />

    <!-- JavaScript file -->

    <script src="${pageContext.request.contextPath}/resources/js/script.js" ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title>Add Clients</title>
</head>

<body>
    <jsp:include page="header.jsp" />

    <div class="container">
        <div class="row">

            <div class="col-sm-7">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <h3>MR ${client.firstName} INFORMATION:</h3>
                    <br>
                    <div>
                        <form action="#" method="post">

                            <table>
                                <tr>
                                    <td class="class">First Name:</td>
                                    <td class="class">${client.firstName}</td>
                                </tr>
                                <tr class="class">
                                    <td class="class">Last Name:</td>
                                    <td class="class">${client.lastName}</td>
                                </tr>
                                <tr class="class">
                                    <td class="class">E-mail:</td>
                                    <td class="class">${client.email}</td>
                                </tr>
                                <tr class="class">
                                    <td class="class">Mobile Number:</td>
                                    <td class="class">${client.mobileNumber}</td>
                                </tr>
                                <tr class="class">
                                    <td class="class">City:</td>
                                    <td class="class">${client.city}</td>
                                </tr>
                                <tr class="class">
                                    <td class="class">Country:</td>
                                    <td class="class">${client.country}</td>
                                </tr>
                                <tr class="class">
                                    <td class="class">Domain:</td>
                                    <td class="class">${client.domain}</td>
                                </tr>
                                <tr class="class">
                                    <td class="class">Requirements:</td>
                                    <td class="class">${client.requirments}</td>
                                </tr>
                                <tr class="class">
                                    <td class="class">Start Date:</td>
                                    <td class="class">${client.projectBeginingDate}</td>
                                </tr>
                                <tr class="class">
                                    <td class="class">Project Deadline Date::</td>
                                    <td class="class">${client.projectEndDate}</td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-5">
                <div class="well">
                    <p>APIs.. Coming Soon</p>
                </div>
                <div class="well">
                    <p>APIs.. Coming Soon</p>
                </div>
                <div class="well">
                    <p>APIs.. Coming Soon</p>
                </div>
            </div>
        </div>
        <hr>
    </div>

    <footer class="container-fluid text-center">
        <p>
            <p>&copy; 2019 PreFix Solutions<p></p>
    </footer>

</body>

</html>