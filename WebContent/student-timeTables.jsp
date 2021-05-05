<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student | Timetable</title>
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
				<h4>Student info | Profile</h4>
			</div>
			<div>
				<a href="#">Results</a> <a href="#">Notices</a> <a href="ViewStudentTimetables">Timetables</a>
				<a href="#">Support</a>
			</div>
		</nav>
	</header>
	
	<section>
		<p><c:out value="${timetable.year}" /></p>
		<p><c:out value="${timetable.grade}" /></p>
		<p><c:out value="${timetable.className}" /></p>
		<img src="<c:out value="${timetable.image}" />" alt="timetable"/>
	</section>

</body>
</html>