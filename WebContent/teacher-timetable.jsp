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
		<h2>Timetables</h2>
		<nav>
			<div>
				<h4>Teacher info | Profile</h4>
			</div>
			<div>
				<a href="#">Results</a> <a href="#">Notices</a> <a
					href="ViewTimetables">Timetables</a> <a href="#">Inquiry</a>
			</div>
		</nav>
	</header>

	<section>
		<c:if test="${timetable.image != null}">
			<p>
				<c:out value="${timetable.year}" />
			</p>
			<p>
				<c:out value="${timetable.grade}" />
			</p>
			<p>
				<c:out value="${timetable.className}" />
			</p>
			<img src="<c:out value="${timetable.image}" />" alt="timetable" />
		</c:if>

		<c:if test="${timetable.image == null}">
			<p>Timetables not found!</p>
		</c:if>


		<div>
			<c:if test="${timetable.image == null}">
				<a href="ShowNewFormTimetables">Add new</a>
			</c:if>
			<c:if test="${timetable.image != null}">
				<a href="ShowEditFormTimetables?id=<c:out value="${timetable.ttid}"/>">Edit</a>
				<a href="DeleteTimetable?id=<c:out value="${timetable.ttid}"/>">Delete</a>
			</c:if>
		</div>
	</section>

</body>
</html>