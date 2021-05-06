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
	<header>
		<nav>
		<div>
			<h4>Student info | Profile</h4>
		</div>
		<div>
			<a href="Results.jsp">Results</a> 
			<a href="./Notices">Notices</a> 
			<a href="#">Timetables</a>
			<a href="SupportDesk.jsp">Support</a>
		</div>
		<br>
	</nav>
	</header>
	
	<!--TO DO:Add proper label from viewInquiry.java  -->
	
	<c:forEach var="item" items="${Inquiry}"}>
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