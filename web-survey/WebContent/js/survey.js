function validate() {
	
	if(document.getElementById("name").value == "") {
		alert("Please enter the name");
		return false;
	}
	if(document.getElementById("dob").value == "") {
		alert("Please enter the date of birth");
		return false;
	}
	
	if(document.getElementById("phone").value == "") {
		alert("Please enter the phone");
		return false;
	}
	
	if(document.getElementById("phone").value != "" && !checkNumber()) {
		alert("Please enter the numeric value for phone");
		return false;
	}
	
	if(document.getElementById("address").value == "") {
		alert("Please enter the address");
		return false;
	}
	return true;
}

function checkNumber() {
	
	var current = document.getElementById("phone").value;
	if(!isNaN(current)) {
		return true;
	}
	return false;
}

function submitform()
{
	if(validate()) {
		document.surveyForm.method = "post"
		document.surveyForm.action = "/web-survey/save";
		document.surveyForm.submit();
	}
}

function changeTheAnswerField()
{	
	var type = document.getElementById('type').value;
	if(type == "1") {
		document.getElementById('singleChoice').style.display='none';
		document.getElementById('multiChoiceDiv').style.display='none';
		document.getElementById('multiLineText').style.display='block';
	}
	if(type == "2") {
		document.getElementById('singleChoice').style.display='none';
		document.getElementById('multiLineText').style.display='none';
		document.getElementById('multiChoiceDiv').style.display='';
	}
	if(type == "3") {
		document.getElementById('multiLineText').style.display='none';
		document.getElementById('multiChoiceDiv').style.display='none';
		document.getElementById('singleChoice').style.display='';
	}
} 

function addQuestion() {
	
	if(validate()) {
		var element = document.getElementById("addQuestion");
		element.href="/web-survey/addQuestion?name="+document.getElementById("name").value+"&dob="+document.getElementById("dob").value+"&phone="+document.getElementById("phone").value+"&address="+document.getElementById("address").value;
	}
}