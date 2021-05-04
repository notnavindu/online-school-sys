<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add notices</title>
</head>
<body>
	Add Notices
	
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
	
	<!-- Add notices form -->
	<div>
		<form method="post" action="AddNotices">
			Date
			<input type="date" name="date"><br>
			
			Title
			<input type="text" name="title"><br>
			
			Description
			<input type="text" name="description"><br><br>
			
			Type<br>
			<input type="checkbox" name="type" value="student">Student<br>
			<input type="checkbox" name="type" value="academic">Academic<br><br>
			
			
			<input type="submit" name="submit"><br>
		</form>
	</div>
	
</body>
</html>