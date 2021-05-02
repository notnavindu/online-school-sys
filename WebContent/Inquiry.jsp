<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inquiry</title>
</head>
<body>
	Inquiry
	
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
	
	<!-- Inquiry view -->
	Recent Inquiries
	<br>
	<div>
		<div>
			<form action="addInquiry" method="post">
				<label for="email">Email</label>
				<input type="text" name="email">
				<br>
			
				<label for="tilte">Title</label>
				<input type="text" name="title">
				<br>
			
				<label for="inquiry">Inquiry</label>
				<textarea name="inquiry"></textarea>
				<br>
				<input type="submit">
			</form>
	
		</div>
	</div>
</body>
</html>