<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>List Clients</title>

<!-- css reference -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

<jsp:include page="header.jsp" />

</head>
<body>
	<section id="boxes">
		<div class="container">
			<div class="boxlist">

				<h2>Clients:</h2>

				<!-- add out HTML table here -->

				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Mobile Number</th>
						<th>City</th>
						<th>Country</th>
						<th>Domain</th>
						<th>View</th>
						<th>Action</th>
					</tr>

					<!-- loop over and print our customers -->
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
							<td>${tempClients.firstName}</td>
							<td>${tempClients.lastName}</td>
							<td>${tempClients.email}</td>
							<td>${tempClients.mobileNumber}</td>
							<td>${tempClients.city}</td>
							<td>${tempClients.country}</td>
							<td>${tempClients.domain}</td>
							
							<td>
								<a href="${viewLink }">View</a>
							</td>	
							<td>
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
	</section>


	<jsp:include page="footer.jsp" />

</body>

</html>