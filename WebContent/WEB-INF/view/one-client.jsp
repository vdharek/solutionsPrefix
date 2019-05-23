<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- CSS files -->

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/form.css" />

<link type="text/css" rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<!-- JavaScript file -->

<script src="<c:url value='/resources/js/script.js'/>"></script>

<title>Add Clients</title>
</head>

<body>
	<jsp:include page="header.jsp" />

	<section id="boxes">
		<div class="container">
			<div class="box">

				<form:form name="NewClient" action="saveClient"
					modelAttribute="client" method="POST">

						<c:url var="updateViewLink" value="/clients/formForUpdate">
							<c:param name="clientId" value="${client.id }" />
						</c:url>

					<table cellpadding="2" width="60%" bgcolor="99FFFF" align="center"
						cellspacing="2">

						<tr>
							<td colspan=2>
								<h2>Mr ${client.firstName}'s Information:</h2>
							</td>
						</tr>

						<tr>
							<td>First Name:</td>
							<td>${client.firstName}</td>
						</tr>

						<tr>
							<td>Last Name:</td>
							<td>${client.lastName}</td>
						</tr>

						<tr>
							<td>E-mail:</td>
							<td>${client.email}</td>
						</tr>

						<tr>
							<td>Mobile Number:</td>
							<td>${client.mobileNumber}</td>
						</tr>

						<tr>
							<td>City:</td>
							<td>${client.city}</td>
						</tr>

						<tr>
							<td>Country:</td>
							<td>${client.country}</td>
						</tr>

						<!-- dropdown example -->

						<tr>
							<td>Project Domain:</td>
							<td>${client.domain}</td>
						</tr>

						<tr>
							<td>Requirments:</td>
							<td>"${client.requirments}"</td>
						</tr>

						<tr>
							<td>Project Given Date:</td>
							<td>"${client.projectBeginingDate}" </td>
						</tr>

						<tr>
							<td>Expected date to complete:</td>
							<td>"${client.projectEndDate}"</td>
						</tr>
						
						<tr>
							<td><a href="${updateViewLink }">Delete</a></td>
							<td><a href="${updateViewLink }">Update</a>
							</td>
						</tr>
						
					</table>
				</form:form>
			</div>
		</div>
	</section>

	<footer id="footboxs">
		<jsp:include page="footer.jsp" />
	</footer>
</body>

</html>