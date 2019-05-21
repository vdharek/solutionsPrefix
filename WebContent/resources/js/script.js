function validate() {
	// First Name validation:
	if (document.NewClient.firstName.value == "") {
		alert("Please provide client's First Name!");
		document.NewClient.firstName.focus();
		return false;
	}

	// Last Name Validation
	if (document.NewClient.lastName.value == "") {
		alert("Please provide client's Last Name!");
		document.NewClient.lastName.focus();
		return false;
	}

	// E-mail validation
	var email = document.NewClient.emailId.value;
	atpos = email.indexOf("@");
	dotpos = email.lastIndexOf(".");
	if (email == "" || atpos < 1 || (dotpos - atpos < 2)) {
		alert("Please enter correct email ID")
		document.NewClient.emailId.focus();
		return false;
	}

	// Mobile Number validation
	if (document.NewClient.mobileNo.value == ""
			|| isNaN(document.NewClient.mobileNo.value)
			|| document.NewClient.mobileNo.value.length != 10) {
		alert("Please provide a Mobile No in the format 123.");
		document.NewClient.mobileNo.focus();
		return false;
	}

	// City validation
	if (document.NewClient.city.value == "-1") {
		alert("Please provide client's City!");
		document.NewClient.city.focus();
		return false;
	}

	// Country Validation
	if (document.NewClient.country.value == "-1") {
		alert("Please provide client's Contry!");
		document.NewClient.city.focus();
		return false;
	}

	// Domain Validation
	if (document.NewClient.proDomain.value == "-1") {
		alert("Please select any domain!");
		return false;
	}

	// Requirements Validation
	if (document.NewClient.requirments.value == "") {
		alert("Please provide Requirments!");
		document.NewClient.requirments.focus();
		return false;
	}

	// DropDown validation (Domain)
	if (document.NewClient.proDomain.value == "-1") {
		alert("Please select any domain!");
		return false;
	}

	// Date validation
	if (document.StudentRegistration.projectBeginingDate.value == "") {
		alert("Please provide date of project:");
		document.StudentRegistration.dob.focus();
		return false;
	}
	return (true);

	// Date validation
	if (document.StudentRegistration.projectEndDate.value == "") {
		alert("Please provide expected date to complete project:");
		document.StudentRegistration.dob.focus();
		return false;
	}
	return (true);

	//  if( document.StudentRegistration.pincode.value == "" ||
	//          isNaN( document.StudentRegistration.pincode.value) ||
	//          document.StudentRegistration.pincode.value.length != 6 )
	//  {
	//    alert( "Please provide a pincode in the format ######." );
	//    document.StudentRegistration.pincode.focus() ;
	//    return false;
	//  }

	// Radio button validation
	//  if ( ( StudentRegistration.sex[0].checked == false ) && ( StudentRegistration.sex[1].checked == false ) )
	//  {
	//  alert ( "Please choose your Gender: Male or Female" );
	//  return false;
	//  } 
}