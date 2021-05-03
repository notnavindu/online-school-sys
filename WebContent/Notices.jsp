<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notices</title>
</head>
<body>
	<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	%>

	Notices

	<br>

	<!-- Navigation bar -->

	<div>
		<table>
			<tr>
				<th>Student info | Profile
				<th>
				<th>Results</th>
				<th>Notices</th>
				<th>Timetables</th>
				<th>Support</th>
			</tr>
		</table>
	</div>
	<br>
	<h1>
		<c:out value="${test}" />
	</h1>

	<!-- Notices view -->
	<div>
		<div>
			<h3>paka</h3>
			<p></p>
		</div>
		<br>
		<div>
			<c:forEach var="item" items="${notices}">
				<div>
					<h2><c:out value="${item.title}" /></h2>
					<div><c:out value="${item.date}" /></div>
					<p><c:out value="${item.description}" /></p>
				</div>
				<br>
			</c:forEach>
		</div>
	</div>
	<br>
</body>
</html>