<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password | GISMS</title>
</head>
<body>
	<form action="ResetPassword" method="post">
		
		<label for="uname"> User Name</label>
		<input type="text" name="uname" value="${user.userName}" readonly>
		<br>
		<label for="pwd"> Password </label>
		<input type="text" name="pwd" value="Enter Password">
		<br>
		<label for="new-pwd"> New Password </label>
		<input type="text" name="new-pwd" value="Enter New Password">
		
		<input type="submit">
		
	</form>

</body>
</html>