<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.Set,
				java.util.HashSet,
				com.assignment.model.Question,
				com.assignment.model.Survey" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<script>

function addQuestion() {
	
	alert();
	var element = document.getElementById("addQuestion");
	element.href="/web-survey/addQuestion?name="+document.getElementById("name").value+"&dob="+document.getElementById("dob").value+"&phone="+document.getElementById("phone").value+"&address="+document.getElementById("address").value;
	
}

</script>
</head>
<body>

<jsp:include page="header.jsp">
	<jsp:param name="surveyId" value="${surveyId}" />
</jsp:include>

<form method="post" action="/web-survey/save">
<input type="hidden" name="surveyId" id="surveyId" value="${surveyId}">
<div class = "table">
	<div class="row">
		<div class="left-container">
			<label class="lable">Name</label>
		</div>
		<div class="right-container">
			<input type="text" name="name" id="name" value="${survey.name}"/>
		</div>
	</div>
	<div class="row">
		<div class="left-container">
			<label class="lable">Date of Birth</label>
		</div>
		<div class="right-container">
			<input type="text" name="dob" id="dob" value="${survey.dob}" readonly="readonly"/> 
			<a href="javascript:NewCal('dob','ddmmyyyy')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
		</div>		
	</div>
	<div class="row">
		<div class="left-container">
			<label class="lable">Phone</label>
		</div>
		<div class="right-container">
			<input type="text" name="phone" id="phone" value="${survey.phone}"/>
		</div>		
	</div>
	<div class="row">
		<div class="left-container">
			<label class="lable">Address</label>
		</div>
		<div class="right-container">
			<textarea name="address" id="address">${survey.address}</textarea>			
			<a id="addQuestion" class="lable" href="/web-survey/addQuestion" onClick="addQuestion();"><img src="images/add.jpg" width="16" height="16" border="0" alt="Pick a date">&nbsp;Add New Question</a>
			
		</div>		
	</div>	
</div>
<hr></hr>
<br>
<div class="table">
	<div class="button-container">
		<!-- <a href="/web-survey/save" class="button">Save</a> -->
		<input type="Submit" value="Save" class="button"/>
	</div>
	<div class="button-container">
		<!-- <a href="/web-survey/" class="button">Cancel</a> -->
		<input type="button" value="Cancel" class="button"/>
	</div>	
</div>
</form>
</body>
</html>