<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add result</title>
</head>
<body>
	Add Results
	
	<br>
	
	<!-- Navigation bar -->
	
	<div>
	<table>
	<tr>
		<th>Teacher info | Profile<th>
	    <th>Results</th>
	    <th>Notices</th>
	    <th>Timetables</th>
	    <th>Inquiry</th>
	</tr>
	</table>
	</div>
	<br>
	
	<!-- Add result form -->
	<div>
		<form action="" method="post">
			<div>
				<h3>Student ID</h3>
				<h3>Student Name</h3>
				<h3>Result</h3>
			</div>
			<br>
			<div>
				<input type="text" name="studentid1">

				<input type="text" name="result1">
			</div>
			<br>
			<div>
				<input type="text" name="studentid2">
				
				<input type="text" name="result2">
			</div>
			<br>
			<div>
				<input type="text" name="studentid3">
				
				<input type="text" name="result3">
			</div>
			<br>
			<div>
				<input type="text" name="studentid4">
				
				<input type="text" name="result4">
			</div>
			<br>
			<input type="submit" name="submit">
		</form>
	</div>
</body>
</html>