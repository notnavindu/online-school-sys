package com.sims_servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims_models.Auth;
import com.sims_models.Teacher;
import com.sims_service.AdminService;

/**
 * Servlet implementation class AddTeacher
 */
@WebServlet("/AddTeacher")
public class AddTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Data for Auth Table
		String username = request.getParameter("uname");
		String password = request.getParameter("'pwd");
		int auid = 0;
		String userState = "Teacher";
		
		//Data for Teacher Table
		int tid = 0;
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address"); 
		String contact = request.getParameter("contact");
		int subject = Integer.parseInt(request.getParameter("subject"));

				
		//TODO figure out image uploading
		String image = "image.link";
		
		Auth auth = new Auth(auid,username, password, userState);
		Teacher teach = new Teacher(tid,name,age,address,contact,subject,image,auid);
		
		AdminService.addTeacher(teach, auth);
		
		response.sendRedirect("enroll.jsp");
	}

}
