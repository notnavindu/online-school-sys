<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher | Add timetables</title>
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

	<!-- Add timetables form -->
	<div>
		<c:if test="${timetable != null}">
			<h2>Update timetable</h2>
			<form method="post" action="UpdateTimetable" enctype="multipart/form-data">
				Year <input type="text" name="year"
					value="<c:out value="${timetable.year}" />"> Grade <input
					type="number" name="grade"
					value="<c:out value="${timetable.grade}" />"> Class <input
					type="text" name="class"
					value="<c:out value="${timetable.className}" />"> Image <input
					type="file" name="file" size="50"
					value="<c:out value="${timetable.image}" />" /> <input
					type="submit">
			</form>
		</c:if>

		<c:if test="${timetable == null}">

			<h2>Add timetable</h2>
			<form method="post" action="AddTimetables"
				enctype="multipart/form-data">

				Year <input type="text" name="year"> Grade <input
					type="text" name="grade"> Class <input type="text"
					name="class"> Image <input type="file" name="file"
					size="50" /> <input type="submit">
			</form>


		</c:if>


	</div>

</body>
</html>