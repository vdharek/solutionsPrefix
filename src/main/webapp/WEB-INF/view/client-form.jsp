<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- CSS files -->
    <link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/form.css" />

	<link type="text/css" rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" /> 

    <!-- JavaScript file -->

    <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
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
                    <h3>ADD NEW CLIENT</h3>
                    <br>
                    <div class="addnew-form">
                        <form:form name="NewClient" action="saveClient" modelAttribute="client" method="POST"
                            onSubmit="return(validate());">

                            <!-- need to associate this data with customer ID -->
                            <form:hidden path="id" />

                            <div class="form-group">
                                <label>First Name:</label>
                                <form:input type="text" path="firstName" placeholder="First Name" id="firstName"  class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Last Name:</label>
                                <form:input type="text" path="lastName" placeholder="Last Name" id="lastName"  class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>E-mail:</label>
                                <form:input type="text" path="email" placeholder="E-mail" id="emailId"  class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Mobile Number:</label>
                                <form:input type="text" path="mobileNumber" placeholder="Mobile Number" id="mobileNo" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>City:</label>
                                <form:input type="text" path="city" placeholder="City" id="city" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Country:</label>
                                <form:input type="text" path="country" placeholder="Country" id="country" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Domain:</label>
                                <form:select path="domain" class="form-control">
                                    <form:option value="NONE" label="Select" />
                                    <form:options items="${domainList}" id="proDomain" />
                                </form:select>
                            </div>
                            <div class="form-group">
                                <label>Requirments:</label>
                                <form:textarea path="requirments" placeholder="Requirments..." id="requirments" rows="4" cols="30" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Start Date:</label>
                                <form:input type="date" path="projectBeginingDate" id="projectBeginingDate"
                                    required="required" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Project Deadline:</label>
                                <form:input type="date" path="projectEndDate" id="projectEndDate" required="required" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block">Submit</button>
                            </div>
                            <div class="clearfix">
                                <!-- <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label> -->
                                <!-- <a href="#" class="pull-right">Forgot Password?</a> -->
                            </div>
                            </form:form>
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

    <jsp:include page="footer.jsp" />
</body>

</html>