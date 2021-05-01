package com.sims_servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims_models.Teacher;
import com.sims_service.AddTeacherDao;

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
		
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address"); ;
		String contact = request.getParameter("contact");;
		int subject = Integer.parseInt(request.getParameter("subject"));
		
		//TODO figure out image uploading
		String image = "image.link";
		
		Teacher teach = new Teacher(0,name,age,address,contact,subject,image);
		AddTeacherDao.addTeacher(teach);
	}

}
