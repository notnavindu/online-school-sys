<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add timetables</title>
</head>
<body>
	Add Time Tables
	
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
	
	<!-- Add timetables form -->
	<div>
		<form>
			Year
			<input type="text" name="year"><br>
			Grade
			<input type="text" name="grade"><br>
			Class
			<input type="text" name="class"><br>
			Image
			<button type="button">Choose file</button><br>
			<input type="submit" name="submit"><br>
		</form>
	</div>

</body>
</html>