<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enroll Students</title>
</head>
<body>
	<div class="container">
		<h2> Enrollments For Students</h2>
		
		<div class="enroll-form">
			<form action="#" method="post">
				<label for="name"> Name </label>
				<input type="text" name="sid">
			
				<br>
				
				<label for="age"> Age </label>
				<input type="text" name="age">
			
				<br>
			
				<label for="contact"> Contact </label>
				<input type="text" name="contact">
			
				<br>
			
				<label for="address"> Address </label>
				<input type="text" name="address">
				
				<br>
				
				<label for="grade"> Grade </label>
				<select name="grade">
					<option value="1"> Grade 6 </option>
					<option value="2"> Grade 7 </option>
					<option value="3"> Grade 8 </option>
					<option value="4"> Grade 9 </option>
					<option value="5"> Grade 10 </option>
					<option value="3"> Grade 11 </option>
					<option value="4"> Grade 12 </option>
					<option value="5"> Grade 13 </option>
					
				</select>
				
				<br>
				
				<label for="class"> Class </label>
				<select name="class">
					<option value="A"> A </option>
					<option value="B"> B</option>
					<option value="C"> C</option>
					<option value="D"> D</option>
					<option value="E"> E</option>
					<option value="F"> F</option>
					
					
				</select>
				
				<br>
				
				<input type = "submit" value = "Enroll">
			</form>	
		</div>
	</div>
</body>
</html>