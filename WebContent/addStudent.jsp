<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enroll Students</title>
</head>
<body>
	
	<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	
	<div class="container">
	
	<h2> Enrollments For Students</h2>
		
		<nav>
			<div>
				<h4>Admin info | Profile</h4>
			</div>
			<div>
				<a href="enroll.jsp">Enroll</a> 
				<a href="#">Notices</a> 
				<a href="#">Inquiry</a>
			</div>
		</nav>
		<br>
		<div class="enroll-form">
			<form action="AddStudent" method="post">
				
				<label for="name"> Name </label>
				<input type="text" name="sname">
			
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
				
				<label for="uname"> User Name</label>
				<input type="text" name="uname">
				
				<br> 
				
				<label for="pwd"> Password </label>
				<input type="password" name="pwd">
				
				<br> 
				
				
				<input type = "submit" value = "Enroll">
			</form>	
		</div>
	</div>
</body>
</html>