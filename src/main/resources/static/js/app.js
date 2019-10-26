function validate() {
	var name = document.getElementById("name").value;
	if (name=='') {
		alert('Please enter a valid name.');
		return false;
	} else {
		return true;
	}
}

function validate2() {
	var name = document.getElementById("username").value;
	if (name=='') {
		alert('Please enter a valid name.');
		return false;
	} else {
		return true;
	}
}