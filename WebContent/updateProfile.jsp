<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile | GISMS</title>
</head>
<body>
	<form action="UpdateProfile" method="post">
	
		<label for="uname"> User Name</label>
		<input type="text" name="uname" value="${auth.userName}">
		<br>
		
		<label for="name"> Name</label>
		<input type="text" name="name" value="${student.name}">
		<br>
		
		<label for="age"> Age</label>
		<input type="text" name="age" value="${student.age}" readonly>
		<br>
		
		<label for="address"> Address </label>
		<input type="text" name="address" value="${student.address}">
		<br>
		
		<label for="contact"> Contact No </label>
		<input type="text" name="contact" value="${student.contact}">
		<br>
		
		<input type="submit">
	</form>
	
	<a href="ShowEditFormPassword">Reset Password</a>

</body>
</html>