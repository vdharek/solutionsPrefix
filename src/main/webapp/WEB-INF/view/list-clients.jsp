<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
                    <h3>ALL CLIENTS</h3>
                    <br>
                    <div class="addnew-form">

                        <table>
                            <tr>
                                <th class="trtd">First Name</th>
                                <th class="trtd">Last Name</th>
                                <th class="trtd">Email</th>
                                <th class="trtd">Mobile Number</th>
                                <th class="trtd">City</th>
                                <th class="trtd">Country</th>
                                <th class="trtd">Domain</th>
                                <th class="trtd">View</th>
                                <th class="trtd">Action</th>
                            </tr>

                            <!-- LOOPS -->

                            <c:forEach var="tempClients" items="${clientsModel}">

                                <!-- construct an "view" link with customer Id -->
                                <c:url var="viewLink" value="/clients/viewOneClient">
                                    <c:param name="clientId" value="${tempClients.id }" />
                                </c:url>

                                <c:url var="updateLink" value="/clients/formForUpdate">
                                    <c:param name="clientId" value="${tempClients.id }" />
                                </c:url>

                                <c:url var="deleteLink" value="/clients/delete">
                                    <c:param name="clientId" value="${tempClients.id }" />
                                </c:url>

                                <tr>
                                    <td class="trtd">${tempClients.firstName}</td>
                                    <td class="trtd">${tempClients.lastName}</td>
                                    <td class="trtd">${tempClients.email}</td>
                                    <td class="trtd">${tempClients.mobileNumber}</td>
                                    <td class="trtd">${tempClients.city}</td>
                                    <td class="trtd">${tempClients.country}</td>
                                    <td class="trtd">${tempClients.domain}</td>

                                    <td class="trtd">
                                        <a href="${viewLink }">View</a>
                                    </td>
                                    <td class="trtd">
                                        <a href="${updateLink }">Update</a>
                                        |
                                        <a href="${deleteLink }"
                                            onClick="if(!(confirm('Are you sure you want to delete this Client?')))return false">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <br>
    </div>
    <jsp:include page="footer.jsp" />
</body>

</html>