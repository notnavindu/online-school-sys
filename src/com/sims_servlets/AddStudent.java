package com.sims_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims_models.Student;
import com.sims_service.AddStudentDao;

/**
 * Servlet implementation class AddStudent
 */
@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("sname");
		int age = Integer.parseInt(request.getParameter("age"));
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		int grade = Integer.parseInt(request.getParameter("grade"));
		String className = request.getParameter("class");
		
		//TODO :Figure out image uploading
		String image = "random link";
		
		Student std = new Student(0,name,age,address,contact, grade, className, image);
		
		AddStudentDao.addStudent(std);
		
		//TODO Redirect to Enroll.jsp
		
		//request.setAttribute("name", name);
		//request.setAttribute("age", age);
		//request.setAttribute("contact", contact);
		//request.setAttribute("address", address);
		//request.setAttribute("grade", grade);
		//request.setAttribute("className", className);
		
		//RequestDispatcher rd = request.getRequestDispatcher("AddStudentDao");
		//rd.forward(request, response);
	}

}
