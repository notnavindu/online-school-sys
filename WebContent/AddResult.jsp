<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link href="./css/global.css" rel="stylesheet" />
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Add result</title>
</head>
<body>

  	<header>
		<div class="w-full flex justify-between items-center p-4 mb-3 bg-gray-800 text-white">
			<h1 class="font-bold text-3xl">GISMS</h1>
			<form action="Logout">
				<button type="submit" class="bg-indigo-600 py-2 px-5 rounded-3xl text-base hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400">Logout</button>
			</form>
		</div>
    <div class="md:px-4 px-2 mb-7">
		<h2 class="text-white sm:text-left text-center font-bold md:text-5xl sm:text-3xl text-2xl mb-6">Timetables</h2>
		<nav class="flex sm:justify-between justify-center items-center flex-wrap text-lg font-medium">
			<div class="mb-3">
				<h4 class="text-white">Teacher info | <a
							class="bg-indigo-600 hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 py-2 px-5 rounded-3xl"
							href="Profile">Profile</a></h4>
			</div>
			<div class="my-4 ml-2 space-x-3 flex justify-center">
				<button
						class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl"><a href="#">Results</a></button>
        <button
						class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl"><a href="#">Notices</a></button>
        <button
						class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl"><a href="ViewTimetables">Timetables</a></button>
        <button
						class="bg-indigo-600 text-white hover:bg-indigo-500 transition ease-in ring-2 ring-gray-400 mb-1 py-2 px-3 rounded-3xl"><a href="#">Inquiry</a></button>
			</div>
		</nav>
    </div>
	</header>

	
	<br>
	
	<!-- Navigation bar -->
	
	
	<br>
	
	<!-- Add result form -->

	<div class="min-h-screen flex justify-center items-center">
		<form class="bg-gray-900 px-10 py-5 rounded-2xl focus:ring-2" action="AddResult" method="post">
			<div class="flex justify justify-between">
			<label for="subject" class="font-bold text-gray-100"> Subject </label>
			<select name="subject">
				<option class="font-semibold  rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=0></option>
				<option class="font-semibold  rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=1> ICT </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=2> English </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=3> Sinhala </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=4> History </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=5> Mathematics</option>
				</select>
				</div>
			<br>
			<div class="flex justify justify-between">
			<label for="exam" class="font-bold text-gray-100"> Examination </label>
			<select name="exam">
				<option class="font-semibold  rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=""></option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value="2021Term1"> 2021 Term 1 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value="2021Term2"> 2021 Term 2 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value="2021Term3"> 2021 Term 3 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value="2020Term1"> 2020 Term 1  </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value="2020Term2"> 2020 Term 2 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value="2021Term2"> 2020 Term 3 </option>
			</select>
			</div>
			<br>
			<div class="flex justify justify-between">
			<label for="grade" class="font-bold text-gray-100"> Grade </label>
			<select name="grade">
				<option class="font-semibold  rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=14></option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=6> Grade 6 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=7> Grade 7 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=8> Grade 8 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=9> Grade 9 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=10> Grade 10 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=11> Grade 11 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=12> Grade 12 </option>
				<option class="font-semibold rounded-2xl shadow-sm px-3 py-2 focus:ring-2" value=13> Grade 13 </option>
			</select>
			</div>
			<br>
			
			
			
			<div class="rounded-2xl shadow-sm px-3 py-2 focus:ring-2">
				<input type="text" name="studentid1">

				<input type="text" name="result1">
			</div>
			<br>
			<div class="rounded-2xl shadow-sm px-3 py-2 focus:ring-2">
				<input type="text" name="studentid2">
				
				<input type="text" name="result2">
			</div>
			<br>
			<div class="rounded-2xl shadow-sm px-3 py-2 focus:ring-2">
				<input type="text" name="studentid3">
				
				<input type="text" name="result3">
			</div>
			<br>
			<div class="rounded-2xl shadow-sm px-3 py-2 focus:ring-2">
				<input type="text" name="studentid4">
				
				<input type="text" name="result4">
			</div>
			<br>
			
			<div class="flex justify justify-center"><button type="submit" class="bg-blue-900 font-mono text-white rounded-md py-2 px-4 shadow-sm font-semibold">Submit</button><br></div>
			
		</form></div>
	
</body>
</html>