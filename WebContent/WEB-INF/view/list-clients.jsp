<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>List Clients</title>
	
	<!-- css reference -->
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>PreFix Softwares' Clients</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
			<!-- add out HTML table here -->
			
			<table>
				<tr>
					<th>First Name :	</th>
					<th>Last Name : </th>
					<th>Email : </th>
					<th>Mobile Number :	</th>
					<th>City : </th>
					<th>Country : </th>
					<th>Requirments : </th>
					<th>Start Date : </th>
					<th>End Date : </th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempClients" items="${clientsModel}">
				
					<tr>
						<td> ${tempClients.firstName}</td>
						<td> ${tempClients.lastName}</td>
						<td> ${tempClients.email}</td>
						<td> ${tempClients.mobileNumber}</td>
						<td> ${tempClients.city}</td>
						<td> ${tempClients.country}</td>
						<td> ${tempClients.requirments}</td>
						<td> ${tempClients.projectBeginingDate}</td>
						<td> ${tempClients.projectEndDate}</td>
					</tr>
				
				</c:forEach>
			</table>
		</div>
	</div>
	
</body>

</html>