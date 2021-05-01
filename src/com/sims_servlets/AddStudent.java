package com.sims_servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims_models.Student;
import com.sims_service.AdminService;


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
		String userName;
		
		//TODO :Figure out image uploading
		String image = "random link";
				
		Student std = new Student(0,name,age,address,contact, grade, className, image);
				
		int i = AdminService.addStudent(std);
			
				
		//Redirect to Enroll.jsp
		response.sendRedirect("enroll.jsp");
		
	}

}
