package com.sims_servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims_models.Auth;
import com.sims_models.Student;
import com.sims_service.AdminService;


@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Data for Auth Table
		String username = request.getParameter("uname");
		String password = request.getParameter("pwd");
		int auid = 0;
		String userState = "student";
		
		String name = request.getParameter("sname");
		int age = Integer.parseInt(request.getParameter("age"));
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		int grade = Integer.parseInt(request.getParameter("grade"));
		String className = request.getParameter("class");
		
		//TODO :Figure out image uploading
		String image = "random link";
		
		Auth auth = new Auth(auid, username, password, userState);
		Student std = new Student(0,name,age,address,contact, grade, className, image);
				
		AdminService.addStudent(std, auth);
			
				
		//Redirect to Enroll.jsp
		response.sendRedirect("enroll.jsp");
		
	}

}
