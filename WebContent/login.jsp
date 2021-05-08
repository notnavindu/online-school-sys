<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet" />
<title>Login | GISMS</title>
<link href="./css/global.css" rel="stylesheet" />
</head>
<body>
  <div class="max-w-md mx-auto">
	<div class="text-6xl text-center font-bold">WELCOME!</div>
	<br>
 
   
  <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
    <div class="bg-gray-200 py-8 px-8 shadow rounded-lg sm:px-10">
	<form class="mb-0 space-y-6" action="Login" method="post">
    <div>
    <label for="username" class="block text-sm font-medium text-gray-900">Username</label>
    <div class="mt-1">
		<input type="text" name="username" required class="w-full border border-indigo-500 rounded-lg shadow-sm px-3 py-1 focus:outline-none focus:border-black focus:ring-1 focus:ring-black hover:border-light-blue-800"><br>
    </div><div class="mt-3"></div>
    <div>
    <label for="password" class="block text-sm font-medium text-gray-900">Password</label>
    <div class="mt-1">
		<input type="password" name="password" required class="w-full border border-indigo-500 rounded-lg shadow-sm px-3 py-1 focus:outline-none focus:border-black focus:ring-1 focus:ring-black hover:border-light-blue-800"><br>
    </div>
    <div class="mt-6"></div>
    <button type="submit" class="w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-lg font-medium text-white bg-indigo-500 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">LOG IN</button><br>
    </div>
    </div>
  </form>
 
 
  </div>
  </div>
  </div>
  </div>
</body>
</html>