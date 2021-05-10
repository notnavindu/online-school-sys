<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet" />
	<link href="./css/global.css" rel="stylesheet" />
<title>Admin | Enroll teachers</title>
</head>
<body>

	<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	
	<header>
		<div
			class="w-full flex justify-between items-center p-4 mb-3 bg-gray-800 text-white">
			<h1 class="font-bold text-3xl">GISMS</h1>
			<form action="Logout">
				<button type="submit"
					class="bg-indigo-600 py-2 px-5 rounded-3xl text-base hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400">Logout</button>
			</form>
		</div>
		<div class="md:px-4 px-2 mb-7">
			<h2 class="text-white sm:text-left text-center font-bold md:text-5xl sm:text-3xl text-2xl mb-6">
				Student Enrollments
			</h2>
			<nav
				class="flex sm:justify-between justify-center items-center flex-wrap text-lg font-medium">
				<div class="mb-3">
					<h4 class="text-white">
						Admin info | <a
							class="bg-indigo-600 hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 py-2 px-5 rounded-3xl"
							href="Profile">Profile</a>
					</h4>
				</div>
				<div class="my-4 ml-2 space-x-3 flex justify-center">
					<button
						class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-4 rounded-3xl">
						<a href="enroll.jsp">Enroll</a>
					</button>
					<button
						class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl">
						<a href="Notices">Notices</a>
					</button>
					<button
						class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl">
						<a href="ViewInquiry">Inquiry</a>
					</button>
				</div>
			</nav>
		</div>
	</header>
	
	<div class="flex justify-center md:mx-4 sm:mx-3 mx-2 mb-5">
	    <form class="bg-gray-900 bg-opacity-80 text-white w-full max-w-xl rounded-2xl shadow-2xl p-5 flex flex-col" action="AddTeacher" method="post" enctype="multipart/form-data">
	      <h3 class="text-white text-center text-xl font-medium mb-3">Add teacher data</h3>
	      <label class="font-medium mb-2" for="name"> Name </label>
	      <input placeholder="Teacher name" class="text-gray-900 p-2 rounded-3xl shadow-2xl focus:outline-none focus:ring-2 ring-indigo-500 ring-offset-indigo-500 mb-3" type="text" name="sname" />
	
	      <label class="font-medium mb-2" for="age"> Age </label>
	      <input placeholder="Teacher age" class="text-gray-900 p-2 rounded-3xl shadow-2xl focus:outline-none focus:ring-2 ring-indigo-500 ring-offset-indigo-500 mb-3" type="text" name="age" />
	
	      <label class="font-medium mb-2" for="contact"> Contact </label>
	      <input placeholder="Teacher contact" class="text-gray-900 p-2 rounded-3xl shadow-2xl focus:outline-none focus:ring-2 ring-indigo-500 ring-offset-indigo-500 mb-3" type="text" name="contact" />
	
	      <label class="font-medium mb-2" for="address"> Address </label>
	      <input placeholder="Teacher address" class="text-gray-900 p-2 rounded-3xl shadow-2xl focus:outline-none focus:ring-2 ring-indigo-500 ring-offset-indigo-500 mb-5" type="text" name="address" />
	
	      <div class="flex w-full">
	        <div class="flex items-center space-x-4 w-full">
	          <label class="font-medium mb-2" for="subject"> Subject: </label>
	          <select class="text-white w-full bg-indigo-600 hover:bg-indigo-500 transition ease-in p-2 rounded-3xl shadow-2xl focus:outline-none focus:ring-2 ring-indigo-500 ring-offset-indigo-500 mb-3" name="subject">
	            <option class="bg-indigo-500" value=1> ICT </option>
				<option class="bg-indigo-500" value=2> English </option>
				<option class="bg-indigo-500" value=3> Sinhala </option>
				<option class="bg-indigo-500" value=4> History </option>
				<option class="bg-indigo-500" value=5> Mathematics</option>
	          </select>
	        </div>
	      </div>
	
	      <div class="flex items-center space-x-5 mb-3">
	        <label class="font-medium mb-2" for="file">Profile Picture</label>
	        <div class="overflow-hidden relative w-56 mt-4 mb-4">
	          <button class="bg-indigo-600 hover:bg-indigo-500 transition ease-in rounded-3xl shadow-2xl text-white py-2 px-4 w-full inline-flex items-center">
	            <svg fill="#FFF" height="18" viewBox="0 0 24 24" width="18" xmlns="http://www.w3.org/2000/svg">
	              <path d="M0 0h24v24H0z" fill="none" />
	              <path d="M9 16h6v-6h4l-7-7-7 7h4zm-4 2h14v2H5z" />
	            </svg>
	            <span class="ml-2">Upload Profile Picture</span>
	          </button>
	          <input class="cursor-pointer absolute block opacity-0 pin-r pin-t" type="file" name="file" @change="fileName" size="50" />
	        </div>
	      </div>
	      <div class="flex justify-center">
	        <button class="font-medium bg-indigo-600 hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 rounded-3xl shadow-2xl py-2 px-6" type="submit">Enroll</button>
	      </div>
	    </form>
  </div>

</body>
</html>