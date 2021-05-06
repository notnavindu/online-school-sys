<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add result</title>
</head>
<body>
	Add Results
	
	<br>
	
	<!-- Navigation bar -->
	
	<nav>
		<div>
			<h4>Teacher info | Profile</h4>
		</div>
		<div>
			<a href="addResults">Results</a> 
			<a href="AddNotices.jsp">Notices</a> 
			<a href="ViewTimetables">Timetables</a>
			<a href="#">Inquiry</a>
		</div>
	</nav>
	<br>
	
	<!-- Add result form -->
	<div>
		<form action="AddResult" method="post">
			<label for="subject"> Subject </label>
			<select name="subject">
				<option value=1> ICT </option>
				<option value=2> English </option>
				<option value=3> Sinhala </option>
				<option value=4> History </option>
				<option value=5> Mathematics</option>
			</select>
			<br>
			<label for="exam"> Examination </label>
			<select name="exam">
				<option value="2021Term1"> 2021 Term 1 </option>
				<option value="2021Term2"> 2021 Term 2 </option>
				<option value="2021Term3"> 2021 Term 3 </option>
				<option value="2020Term1"> 2020 Term 1  </option>
				<option value="2020Term2"> 2020 Term 2 </option>
				<option value="2021Term2"> 2020 Term 3 </option>
			</select>
			<br>
			<label for="grade"> Grade </label>
			<select name="grade">
				<option value=6> Grade 6 </option>
				<option value=7> Grade 7 </option>
				<option value=8> Grade 8 </option>
				<option value=9> Grade 9 </option>
				<option value=10> Grade 10 </option>
				<option value=11> Grade 11 </option>
				<option value=12> Grade 12 </option>
				<option value=13> Grade 13 </option>
			</select>
			<br>
			
			<div>
				<input type="text" name="studentid1">

				<input type="text" name="result1">
			</div>
			<br>
			<div>
				<input type="text" name="studentid2">
				
				<input type="text" name="result2">
			</div>
			<br>
			<div>
				<input type="text" name="studentid3">
				
				<input type="text" name="result3">
			</div>
			<br>
			<div>
				<input type="text" name="studentid4">
				
				<input type="text" name="result4">
			</div>
			<br>
			
			
			<input type="submit" name="submit"><br>
		</form>
	</div>
</body>
</html>