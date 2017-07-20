<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script> 
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/datetimepicker.js"></script>
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
							<a href="/web-survey/result?id=${surveyId}" class="button" >Results</a>
						</td>
						</tr>
					</table>
				</div>
		</td>
	</tr>
</table>
<hr></hr>
</body>
</html>