<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	Results
	
	<br>
	
	<!-- Navigation bar -->
	
	<nav>
		<div>
			<h4>Student info | Profile</h4>
		</div>
		<div>
			<a href="Results.jsp">Results</a> 
			<a href="./Notices">Notices</a> 
			<a href="">Timetables</a>
			<a href="SupportDesk.jsp">Support</a>
		</div>
	</nav>
	<br>
	
	<!-- Search result form -->
	
	<form action="viewResult" method="post">
		<div>
			<label for="exam"> Examination </label>
				<select name="exam">
					<option value="Term1"> Term 1 </option>
					<option value="Term2"> Term 2 </option>
					<option value="Term3"> Term 3 </option>
				</select>
		</div>
		<br>
		<div>
			<label for="year"> Year </label>
				<select name="year">
					<option value="2021"> 2021 </option>
					<option value="2020"> 2020 </option>
					<option value="2019"> 2019 </option>
					<option value="2018"> 2018 </option>
				</select>
		</div>
		<br>
		<input type="submit" name="submit">
	</form>
</body>
</html>