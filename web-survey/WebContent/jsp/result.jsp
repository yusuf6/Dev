<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
<style>

body{
  margin: 0;
  width: 100%;
}
.lable {
  
    padding: 5px;     
    color: #4E9CAF;
    font-weight: bold;
    font-style: italic;
    text-decoration: none;
    font-family: sans-serif;
}

.button {
	display:block;
    background: #4E9CAF;
    padding: 5px;
    text-align: center;
    border-radius: 5px;
    color: white;
    font-weight: bold;
    text-decoration: none;
}

hr {
	border-color: #4E9CAF;
	border-style: groove;	
}    

.left-container{  
  width: 20%;  
  float: left;
  padding: 10px;
  text-align: left;
  border-radius: 5px;  
}

.right-container {  
  width: 80%;
  padding: 10px;
  text-align: left;
  border-radius: 5px;
  
}
.button-container {  
  display: inline-block;
  width: 10%;
  text-align: center;
  border-radius: 5px;  
}

.table {
	text-align:center;
}

ul {
 margin: 0; 
 text-align: left;
	}
li { margin: -5px;
	text-align: left;}

</style>

</head>
<body>

<table>
	<tr>
		<td width = "80%" style="align:left;">
			<label class = "lable">Add New Survey</label>
		<td>		
		<td width="20%" style="align:right;">
				<div >
					<table width = "100%">
						<tr>
						<td>
							<a href="/web-survey/" class="button">Home</a>
						</td>
						<td>
							<a href="/web-survey/result" class="button">Results</a>
						</td>
						</tr>
					</table>
				</div>
		</td>
	</tr>
</table>

<hr></hr>

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
<br><br>
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
						<c:if test="${not empty question.answer.multiLineAnswer}">
							 <label class="lable">${question.answer.multiLineAnswer}</label>
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