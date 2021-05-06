<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Inquiry</title>
</head>
<body>
	<h1>Inquiry</h1>
	<header>
		<nav>
		<div>
			<h4>Admin info | Profile</h4>
		</div>
		<div>
			<a href="enroll.jsp">Enroll</a> 
			<a href="./Notices">Notices</a> 
			<a href="AddTimeTables.jsp">Timetables</a>
			<a href="viewInquiry.jsp">Inquiry</a>
		</div>
		<br>
	</nav>
	</header>
	
	<h2>Recent Inquiries</h2>
	
	<c:forEach var="item" items="${inquiries}">
		<div>
			<div>
				<c:out value="${item.email}" />
			</div><br>
			<div>
				<c:out value="${item.title}" />
			</div><br>
			<div>
				<c:out value="${item.inquiry}" />
			</div><br>
			</div>
	</c:forEach>
</body>
</html>