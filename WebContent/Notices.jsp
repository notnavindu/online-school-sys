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