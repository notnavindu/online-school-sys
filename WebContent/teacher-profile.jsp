<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet" />
<title>Teacher | GISMS</title>
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
			Welcome
			<c:out value="${teacher.name}" />
		</h2>
		<nav>
			<div>
				<h4>Teacher info | Profile</h4>
			</div>
			<div>
				<a href="AddResult.jsp">Results</a> <a href="AddNotices.jsp">Notices</a>
				<a href="ViewTimetables">Timetables</a> <a href="viewInquiry.jsp">Inquiry</a>
			</div>
		</nav>
	</header>

	<section>
		<div>
			<div class="md:col-span-3">
				<h2 class="font-semibold md:text-3xl text-2xl mb-4">Recent
					Notices</h2>
				<div class="flex flex-col space-y-4 mb-8 ">
					<c:forEach begin="0" end="2" varStatus="loop">
					<div class="bg-gray-200 p-4 rounded-lg w-full">
						<div class="text-lg font-bold">${recentNotices[loop.index].getTitle()}</div>
						<div class="text-gray-500">${recentNotices[loop.index].getDate().split(" ")[0]}</div>
						<div>${recentNotices[loop.index].getDescription()}</div>
					</div>
				</c:forEach>
				</div>
			</div>
		</div>

		<!-- student data -->
		<aside>

			<img src="<c:out value='${teacher.profilePic}'/>"
				alt="teacher profile picture" />
			<h3>
				<c:out value="${teacher.name}" />
			</h3>
			<p>
				<c:out value="${subject.name}" />
			</p>
			<p>
				<c:out value="${teacher.address}" />
			</p>


		</aside>
	</section>

</body>
</html>