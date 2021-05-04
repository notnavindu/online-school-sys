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
			<c:out value="${student.name}" />
		</h2>
		<nav>
			<div>
				<h4>Student info | Profile</h4>
			</div>
			<div>
				<a href="#">Results</a> 
				<a href="./Notices">Notices</a> 
				<a href="#">Timetables</a>
				<a href="SupportDesk.jsp">Support</a>
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

			<img src="<c:out value='${student.profilePic}'/>"
				alt="student profile picture" />
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
