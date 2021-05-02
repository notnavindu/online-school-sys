<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Student | Profile</title>
</head>
<body>
	<header>
		<h1>Welcome student name</h1>
		<nav>
			<div>
				<h4>Student info | Profile</h4>
			</div>
			<div>
				<a href="#">Results</a> <a href="#">Notices</a> <a href="#">Timetables</a>
				<a href="#">Support</a>
			</div>
		</nav>
	</header>

	<section>
		<div>
			<h2>Recent Notices</h2>
			<div>
				<div>Notice 1</div>
				<div>Notice 2</div>
				<div>Notice 3</div>
			</div>
		</div>

		<!-- student data -->
		<aside>

			<img src="#" alt="student profile picture" />
			<h3>
				<c:out value="${student.name}" />
			</h3>
			<p>
				<c:out value="${student.grade}" />
			</p>
			<p>
				<c:out value="${student.className}" />
			</p>


		</aside>
	</section>
</body>
</html>
