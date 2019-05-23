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

				<!-- need to associate this data with customer ID -->
				<form:hidden path="id"/>

					<table cellpadding="2" width="60%" bgcolor="99FFFF" align="center"
						cellspacing="2">

						<tr>
							<td colspan=2>
								<h2>Add new Client:</h2>
							</td>
						</tr>

						<tr>
							<td>First Name:</td>
							<td><form:input type="text" path="firstName" id="firstName" /></td>
						</tr>

						<tr>
							<td>Last Name:</td>
							<td><form:input type="text" path="lastName" id="lastName" /></td>
						</tr>

						<tr>
							<td>E-mail:</td>
							<td><form:input type="text" path="email" id="emailId" /></td>
						</tr>

						<tr>
							<td>Mobile Number:</td>
							<td><form:input type="text" path="mobileNumber"
									id="mobileNo" /></td>
						</tr>

						<tr>
							<td>City:</td>
							<td><form:input type="text" path="city" id="city" /></td>
						</tr>

						<tr>
							<td>Country:</td>
							<td><form:input type="text" path="country" id="country" /></td>
						</tr>

						<!-- dropdown example -->

						<tr>
							<td>Project Domain:</td>
							<td>
								<form:select path="domain">
								<form:option value="NONE" label="Select" />
								<form:options items="${domainList}" />
								</form:select>
							</td>
						</tr>

						<tr>
							<td>Requirments:</td>
							<td><form:textarea path="requirments" id="requirments"
									rows="4" cols="30" /></td>
						</tr>

						<tr>
							<td>Project Given Date:</td>
							<td><form:input type="date" path="projectBeginingDate"
									id="mobilenumber" /></td>
						</tr>

						<tr>
							<td>Expected Project to Complete:</td>
							<td><form:input type="date" path="projectEndDate"
									id="mobilenumber" /></td>
						</tr>

						<center>
							<td><input type="submit" value="Submit Form"
								class="formbtnsubmit firstsubmit" /></td>
							<td><input type="reset" class="formbtnreset firstreset">
						</center>
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