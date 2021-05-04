<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Support Desk</title>
</head>
<body>
	Support Desk
	
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
	
	<!-- Welcome message -->
	<div>
	<p>
		Hi!<br>
		Welcome to the GISM Support Desk! <br>
		Drop your questions in the form down below.<br>
	</p>
	</div>
	<br>
	
	<!-- Support desk form -->
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
</body>
</html>