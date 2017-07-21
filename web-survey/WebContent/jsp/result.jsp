<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>

<jsp:include page="header.jsp">
	<jsp:param name="surveyId" value="${surveyId}" />
</jsp:include>

<div class = "table">
	<div class="row">
		<div class="left-container">
			<label class="lable">Name</label>
		</div>
		<div class="right-container">
			${survey.name}
		</div>
	</div>
	<div class="row">
		<div class="left-container">
			<label class="lable">Date of Birth</label>
		</div>
		<div class="right-container">
			${survey.dob}
		</div>		
	</div>
	<div class="row">
		<div class="left-container">
			<label class="lable">Phone</label>
		</div>
		<div class="right-container">
			${survey.phone}
		</div>		
	</div>
	<div class="row">
		<div class="left-container">
			<label class="lable">Address</label>
		</div>
		<div class="right-container">
			${survey.address}
		</div>		
	</div>
</div>
<hr></hr>
<br>
<!-- TODO:: Convert into a tree structure using Accordian JQuery -->
<div class="table"> 
	<fieldset>
	<legend align="left">Questions: </legend>
	<c:forEach items="${survey.question}" var="question">
       <ul >
       	<li>
				<label class="lable" >${question.question}</label>
			
			<ul>
	       		<li >
	       				<c:if test="${not empty question.answer.multiLineAnswer}">
							 <label class="lable">${question.answer.multiLineAnswer}</label>
						</c:if>
						<c:if test="${not empty question.answer.multiChoiceAnswer}">
							 <label class="lable">${question.answer.multiChoiceAnswer}</label>
						</c:if>
						<c:if test="${not empty question.answer.singleChoiceAnswer}">
							 <label class="lable">${question.answer.singleChoiceAnswer}</label>
						</c:if>
				</li>
       		</ul>
       	</li>
       	
       	
       	
       </ul>
    </c:forEach>
    </fieldset>
</div>
</body>
</html>