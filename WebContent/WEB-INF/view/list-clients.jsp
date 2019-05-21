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

				<h3>Clients:</h3>

				<!-- add out HTML table here -->

				<!-- put new button -->

				<input type="button" value="Add Client"
					onClick="window.location.href='showFormForAdd'; return false; "
					class="formbtnsubmit firstsubmit" />

				<table>
					<tr>
						<th>First Name :</th>
						<th>Last Name :</th>
						<th>Email :</th>
						<th>Mobile Number :</th>
						<th>City :</th>
						<th>Country :</th>
						<th>Requirments :</th>
						<th>Start Date :</th>
						<th>End Date :</th>
					</tr>

					<!-- loop over and print our customers -->
					<c:forEach var="tempClients" items="${clientsModel}">

						<tr>
							<td>${tempClients.firstName}</td>
							<td>${tempClients.lastName}</td>
							<td>${tempClients.email}</td>
							<td>${tempClients.mobileNumber}</td>
							<td>${tempClients.city}</td>
							<td>${tempClients.country}</td>
							<td>${tempClients.requirments}</td>
							<td>${tempClients.projectBeginingDate}</td>
							<td>${tempClients.projectEndDate}</td>
						</tr>

					</c:forEach>
				</table>
			</div>
		</div>
	</section>


	<jsp:include page="footer.jsp" />

</body>

</html>