<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet" />
<title>Notices | GISMS</title>
</head>
<body>

	<!-- Navigation bar -->
	
	<% 
		String userState = (String) session.getAttribute("userState");
	%>
	
	<c:set var = "userState" scope = "session" value = "<%= userState %>"/>

	<nav>
		<div>
			<h4>
				<span class="capitalize"><%= userState %></span> info | Profile
			</h4>
		</div>
		<div>
			<c:if test="${userState == \"admin\"}">
				<button> <a href="enroll.jsp">Enroll</a> </button>
				<button> <a href="Notices">Notices</a> </button>
				<button> <a href="viewInquiry.jsp">Inquiry</a> </button>
			</c:if>
			<c:if test="${userState == \"student\"}">
				<button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in mb-1 py-2 px-3 rounded-3xl"><a href="Results.jsp">Results</a></button>
	            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in mb-1 py-2 px-3 rounded-3xl"><a href="Notices">Notices</a></button>
	            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in mb-1 py-2 px-3 rounded-3xl"><a href="ViewStudentTimetables">Timetables</a></button>
	            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in mb-1 py-2 px-3 rounded-3xl"><a href="SupportDesk.jsp">Support</a></button>
			</c:if>
			<c:if test="${userState == \"teacher\"}">
				<button><a href="AddResult.jsp">Results</a></button>
				<button><a href="AddNotices.jsp">Notices</a></button>
				<button><a href="ViewTimetables">Timetables</a></button>
				<button><a href="#">Inquiry</a></button>
			</c:if>
		</div>
	</nav>
	<br>
	<h2>
		Notices
	</h2>

	<!-- Notices view -->
	<div>
		<div>
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