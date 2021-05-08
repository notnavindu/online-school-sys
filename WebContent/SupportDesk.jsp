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
	
	<nav>
		<div>
			<h4>Student info | Profile</h4>
		</div>
		<div>
			<a href="Results.jsp">Results</a> 
			<a href="./Notices">Notices</a> 
			<a href="student-timeTables.jsp">Timetables</a>
			<a href="SupportDesk.jsp">Support</a>
		</div>
	</nav>
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