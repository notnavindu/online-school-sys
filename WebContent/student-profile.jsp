<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet" />
<title>Student | Profile</title>
</head>
<body>
	<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("/Login");
	}
	%>

	<header>
		<div
			class="w-full flex justify-between items-center p-4 mb-3 bg-gray-800 text-white">
			<h1 class="font-bold text-3xl">GISMS</h1>
			<form action="Logout">
				<button type="submit"
					class="bg-indigo-600 py-2 px-5 rounded-3xl text-base hover:bg-indigo-500 transition ease-in">
					Logout</button>
			</form>
		</div>
		<div class="md:px-4 px-2 mb-7">
			<h2 class="font-bold md:text-5xl sm:text-3xl text-2xl mb-6">
				Welcome
				<c:out value="${student.name}" />
			</h2>
			<nav class="flex justify-between text-lg font-medium">
				<div>
					<h4>
						Student info | <a
							class="bg-gray-200 hover:bg-gray-300 transition ease-in py-2 px-5 rounded-3xl">Profile</a>
					</h4>
				</div>
				<div class="space-x-1">
					<a
						class="bg-gray-200 hover:bg-gray-300 transition ease-in py-2 px-5 rounded-3xl"
						href="Results.jsp">Results</a> <a
						class="bg-gray-200 hover:bg-gray-300 transition ease-in py-2 px-5 rounded-3xl"
						href="Notices">Notices</a> <a
						class="bg-gray-200 hover:bg-gray-300 transition ease-in py-2 px-5 rounded-3xl"
						href="ViewStudentTimetables">Timetables</a> <a
						class="bg-gray-200 hover:bg-gray-300 transition ease-in py-2 px-5 rounded-3xl"
						href="SupportDesk.jsp">Support</a>
				</div>
			</nav>
		</div>
	</header>

	<section
		class="grid grid-rows-1 grid-cols-1 md:grid-cols-5 md:px-4 px-2">
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

		<!-- student data -->
		<aside class="md:col-span-2 ml-8">
			<img src="<c:out value='${student.profilePic}'/>"
				alt="student profile picture" />
			<h3>
				<c:out value="${student.name}" />
			</h3>
			<p>
				Grade
				<c:out value="${student.grade}" />
			</p>
			<p>
				Class
				<c:out value="${student.className}" />
			</p>
		</aside>
	</section>
	
	<a href="ShowEditFormPassword"> Test Test Test Test Test Test Test </a>
</body>
</html>
