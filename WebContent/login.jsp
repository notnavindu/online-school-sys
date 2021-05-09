<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet" />
    <title>Login | GISMS</title>
    <link href="./css/global.css" rel="stylesheet" />
  </head>
  <body>
    <div class="h-screen flex justify-center items-center">
      <section class="grid grid-rows-1 grid-cols-1 md:grid-cols-2 gap-5 mx-3 sm:mx-4 md:mx-5 my-10">
        <div class="md:col-span-1 md:col-start-1 md:col-end-2 md:row-span-1 row-start-2 row-end-3 flex flex-col justify-center items-center">
          <h1 class="text-4xl sm:text-5xl md:text-6xl text-white text-center font-bold mb-5">WELCOME!</h1>
          <form class="bg-gray-900 bg-opacity-80 md:max-w-xl min-w-full text-white p-8 shadow-2xl rounded-2xl" action="Login" method="post">
            <label for="username" class="block font-medium mb-2">Username</label>
            <input type="text" name="username" required class="w-full border text-gray-900 border-indigo-500 rounded-2xl shadow-sm px-3 py-2 focus:outline-none focus:ring-1 focus:ring-offset-2 focus:ring-indigo-600 hover:border-light-blue-800 mb-4" />

            <label for="password" class="block font-medium mb-2">Password</label>
            <input type="password" name="password" required class="w-full border text-gray-900 border-indigo-500 rounded-2xl shadow-sm px-3 py-2 focus:outline-none focus:ring-1 focus:ring-offset-2 focus:ring-indigo-600 hover:border-light-blue-800 mb-4" />

            <div class="flex justify-center">
              <button type="submit" class="py-2 px-4 rounded-2xl shadow-2xl font-medium text-white bg-indigo-600 hover:bg-indigo-500 transition ease-in focus:outline-none ring-2 ring-gray-50">LOGIN</button>
            </div>
          </form>
        </div>
        <div class="md:col-span-1 md:col-start-2 md:col-end-3 md:row-span-1 row-start-1 row-end-2 flex justify-center items-center">
          <img class="w-32 sm:w-96 md:w-full md:max-w-lg rounded-full" src="./images/proPic.png" alt="GISMS brand logo" />
        </div>
      </section>
    </div>
  </body>
</html>