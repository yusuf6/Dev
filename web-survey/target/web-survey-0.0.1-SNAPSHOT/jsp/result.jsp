<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			<input type="text" name="name" id="name"/>
		</div>
	</div>
	<div class="row">
		<div class="left-container">
			<label class="lable">Date of Birth</label>
		</div>
		<div class="right-container">
			<input type="text" name="dob" id="dob"/>
		</div>		
	</div>
	<div class="row">
		<div class="left-container">
			<label class="lable">Phone</label>
		</div>
		<div class="right-container">
			<input type="text" name="phone" id="phone"/>
		</div>		
	</div>
	<div class="row">
		<div class="left-container">
			<label class="lable">Address</label>
		</div>
		<div class="right-container">
			<textarea name="address" id="address"> </textarea>			
			<a class="lable" href="/web-survey/result">Add New Question</a>
		</div>		
	</div>
</div>
<hr></hr>
<br><br>
<div class="table">
	<div class="button-container">
		<a href="/web-survey/" class="button">Save</a>
	</div>
	<div class="button-container">
		<a href="/web-survey/" class="button">Cancel</a>
	</div>	
</div>
</body>
</html>