<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>Enrollments For Teachers</h2>
		
		<div class="enroll-form">
			<form action="AddTeacher" method="post">
				<label for="name"> Name </label>
				<input type="text" name="name">
				
				<br>
				
				<label for="age"> Age </label>
				<input type="text" name="age">
				
				<br>
				
				<label for="address"> Address </label>
				<input type="text" name="address">
				
				<br>
				
				<label for="contact"> Contact </label>
				<input type="text" name="contact">
				
				<br>
				
				<label for="subjects"> Subject </label>
				<select name="subjects">
					<option value=1> ICT </option>
					<option value=2> English </option>
					<option value=3> Sinhala </option>
					<option value=4> History </option>
					<option value=5> Mathematics</option>
				</select>
				
				<br>
				
				<input type="submit" value="Enroll">
					
			</form>
		</div>
	</div>

</body>
</html>