<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Question</title>
<script type="text/javascript">

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

</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form method="post" action="/web-survey/saveQuestion">
<div class = "table">
	<div class="row">
		<div class="left-container">
			<select name="type" id="type" onchange="changeTheAnswerField()">				
				<option value="1">MultiLine Text</option> <label>Choice 1</label>
				<option value="2" >Multiple Choice</option> <label>Choice 2</label>
				<option value="3">Single Choice</option> <label>Choice 3</label>
			</select>
		</div>
		<div class="right-container">
			<input type="text" name="question" id="question"/>
		</div>
	</div>
	<div class="row">
		<div class="left-container">
			&nbsp;
		</div>
		<div class="right-container">
			<textarea name="multiLineText" id="multiLineText" rows="8"  cols="16"></textarea>
			<input type="text" name="singleChoice" id="singleChoice" style="display: none"/>
			<div id="multiChoiceDiv" style="display:none">
				<input type="checkbox" name="multiChoice" id="multiChoice1" value="choice1" style="display: inline;"/> &nbsp; <label>Answer # 1</label>
				<input type="checkbox" name="multiChoice" id="multiChoice2" value="choice2" style="display: inline;"/> &nbsp; <label>Answer # 2</label>
				<input type="checkbox" name="multiChoice" id="multiChoice3" value="choice3" style="display: inline;"/> &nbsp; <label>Answer # 3</label>
			</div>
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