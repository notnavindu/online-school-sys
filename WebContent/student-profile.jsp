<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet" />
    <link href="./css/global.css" rel="stylesheet"/>
    <title>Student | Profile</title>
  </head>
  <body>
    <% if (session.getAttribute("username") == null) { response.sendRedirect("/Login"); } %>

    <header>
      <div class="w-full flex justify-between items-center p-4 mb-3 bg-gray-800 text-white">
        <h1 class="font-bold text-3xl">GISMS</h1>
        <form action="Logout">
          <button type="submit" class="bg-indigo-600 py-2 px-5 rounded-3xl text-base hover:bg-indigo-500 transition ease-in">Logout</button>
        </form>
      </div>
      <div class="md:px-4 px-2 mb-7">
        <h2 class="font-bold md:text-5xl sm:text-3xl text-2xl mb-6">
          Welcome
          <c:out value="${student.name}" />
        </h2>
        <nav class="flex justify-between items-center flex-wrap text-lg font-medium">
          <div>
            <h4>Student info | <a class="bg-gray-200 hover:bg-gray-300 transition ease-in py-2 px-5 rounded-3xl" href="Profile">Profile</a></h4>
          </div>
          <div class="my-4 ml-2">
            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in mb-1 py-2 px-3 rounded-3xl"><a href="Results.jsp">Results</a></button>
            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in mb-1 py-2 px-3 rounded-3xl"><a href="Notices">Notices</a></button>
            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in mb-1 py-2 px-3 rounded-3xl"><a href="ViewStudentTimetables">Timetables</a></button>
            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in mb-1 py-2 px-3 rounded-3xl"><a href="SupportDesk.jsp">Support</a></button>
          </div>
        </nav>
      </div>
    </header>

    <section class="grid grid-rows-1 grid-cols-1 md:grid-cols-5 gap-5 md:px-4 px-2">
      <div class="md:col-span-4">
        <h2 class="font-semibold md:text-3xl text-2xl mb-4">Recent Notices</h2>
        <div class="flex flex-col space-y-4">
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
      <aside class="md:col-span-1 bg-gray-200 p-4 rounded-lg">
        <img src="./uploads/student_profile_pictures/<c:out value='${student.profilePic}'/>" alt="student profile picture" />
        <h3 class="font-semibold md:text-2xl text-xl text-indigo-700 mb-3">
          <c:out value="${student.name}" />
        </h3>
        <p>
          Grade :
          <c:out value="${student.grade}" />
        </p>
        <p class="mb-5">
          Class :
          <c:out value="${student.className}" />
        </p>
        <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in py-1 px-2 rounded-3xl"><a href="#">Update Profile</a></button>
      </aside>
    </section>
  </body>
</html>

