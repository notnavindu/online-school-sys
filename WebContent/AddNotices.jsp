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
	
	<nav>
		<div>
			<h4>Admin info | Profile</h4>
		</div>
		<div>
			<a href="enroll.jsp">Enroll</a> 
			<a href="./Notices">Notices</a> 
			<a href="#">Inquiry</a>
		</div>
	</nav>
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