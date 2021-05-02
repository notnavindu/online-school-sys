<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	Results
	
	<br>
	
	<!-- Navigation bar -->
	
	<div>
	<table>
	<tr>
		<th>Student info | Profile<th>
	    <th>Results</th>
	    <th>Notices</th>
	    <th>Timetables</th>
	    <th>Support</th>
	</tr>
	</table>
	</div>
	<br>
	
	<!-- Search result form -->
	
	<form>
		<div>
			Exam ID No
			<input type="text" name="examID">
		</div>
		<br>
		<div>
			Examination
			<input type="text" name="exam">
		</div>
		<br>
		<div>
			Year
			<input type="text" name="year">
		</div>
		<br>
		<input type="submit" name="submit">
	</form>
</body>
</html>