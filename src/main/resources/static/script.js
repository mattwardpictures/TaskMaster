/**
 * 
 */

function validateInfo() {
	// 1. Get the textbox value.
	var first = document.getElementById("firstname").value;
	var last = document.getElementById("lastname").value;
	var email = document.getElementById("email").value;
	var phone = document.getElementById("phone").value;
	var password = document.getElementById("password").value;
	
	
	if (first == "") {
		alert("You must enter your first name");
		document.getElementById("firstname").focus();
		return false;
	}
	
	if (first.length <= 2) {
		alert("Please enter a longer First Name!");
		document.getElementById("firstname").focus();
		return false;
	}
	
	if (last == "") {
		alert("You must enter your last name");
		document.getElementById("lastname").focus();
		return false;
	}
	
	if (last.length <= 2) {
		alert("Please enter a longer Last Name!");
		document.getElementById("lastname").focus();
		return false;
	}
	
	if (email == "") {
		alert("You must enter your email address");
		document.getElementById("email").focus();
		return false;
	}
	
	if (phone == "") {
		alert("You must enter your phone number");
		document.getElementById("phone").focus();
		return false;
	}
	
	if (password == "") {
		alert("You must enter your password");
		document.getElementById("password").focus();
		return false;
	}
}