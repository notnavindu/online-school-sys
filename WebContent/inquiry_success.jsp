<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet" />
<link rel="stylesheet" href="./css/global.css" />
<title>Inquiry | Success</title>
</head>
<body class="min-h-screen">
  <% if (session.getAttribute("username") == null) { response.sendRedirect("login.jsp"); } %>

    <header>
      <div class="w-full flex justify-between items-center p-4 mb-3 bg-gray-800 text-white">
        <h1 class="font-bold text-3xl">GISMS</h1>
        <form action="Logout">
          <button type="submit" class="bg-indigo-600 py-2 px-5 rounded-3xl text-base hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400">Logout</button>
        </form>
      </div>
      <div class="md:px-4 px-2 mb-7">
        <h2 class="text-white sm:text-left text-center font-bold md:text-5xl sm:text-3xl text-2xl mb-6">Support Desk</h2>
        <nav class="flex sm:justify-between justify-center items-center flex-wrap text-lg font-medium">
          <div class="mb-3">
            <h4 class="text-white">Student info | <a class="bg-indigo-600 hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 py-2 px-5 rounded-3xl" href="Profile">Profile</a></h4>
          </div>
          <div class="my-4 ml-2 space-x-3 flex justify-center">
            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl">
              <a href="Results.jsp">Results</a>
            </button>
            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl">
              <a href="Notices">Notices</a>
            </button>
            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl">
              <a href="ViewStudentTimetables">Timetables</a>
            </button>
            <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl">
              <a href="SupportDesk.jsp">Support</a>
            </button>
          </div>
        </nav>
      </div>
    </header>

    <section class="mx-2 sm:mx-3 md:mx-4 mb-5 p-5 bg-gray-800 bg-opacity-80 rounded-2xl shadow-2xl mb-5">
      <div class="flex justify-center mb-6">
        <img class="md:w-72 sm:w-64 w-36" src="./images/success.svg" alt="success image" />
      </div>
      <div class="text-white flex flex-col items-center mb-3">
        <h2 class="md:text-6xl sm:text-5xl text-4xl text-green-500 font-semibold mb-3">Successfull!</h2>
        <p class="md:text-left text-center font-medium text-lg mb-4">Your have got your message, and we will reach your mail within 48 hours.</p>
        <button class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl">
            <a href="Profile">Go to Profile</a>
        </button>
      </div>
    </section>
</body>
</html>