<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher | Timetable</title>
</head>
<body>

	<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	%>

	<header>
		<div>
			<h1>GISMS</h1>
			<form action="Logout">
				<button type="submit">Logout</button>
			</form>
		</div>
		<h2>
			Timetables
		</h2>
		<nav>
			<div>
				<h4>Teacher info | Profile</h4>
			</div>
			<div>
				<a href="#">Results</a> <a href="#">Notices</a> <a href="#">Timetables</a>
				<a href="#">Inquiry</a>
			</div>
		</nav>
	</header>
	
	<section>
		<img src="" alt="timetable"/>
	</section>

</body>
</html>