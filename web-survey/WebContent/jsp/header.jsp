<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script> 
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/datetimepicker.js"></script>
<script type="text/javascript" src="js/survey.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css"></link>
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
								<c:if test="${not empty surveyId}">
									<a href="/web-survey/result?id=${surveyId}" class="button" >Results</a>	
								</c:if>
							</td>
						</tr>
					</table>
				</div>
		</td>
	</tr>
	<tr>
		<td style="text-align: center;">
			<label class = "msg">${msg}</label>
		</td>
	</tr>
</table>
<hr></hr>
</body>
</html>