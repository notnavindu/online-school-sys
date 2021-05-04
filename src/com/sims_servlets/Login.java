package com.sims_servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sims_models.Admin;
import com.sims_models.Auth;
import com.sims_models.Student;
import com.sims_models.Subject;
import com.sims_models.Teacher;
import com.sims_service.AdminService;
import com.sims_service.LoginDao;
import com.sims_service.StudentService;
import com.sims_service.TeacherService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Auth user;
	Student student;
	Teacher teacher;
	Subject subject;
	Admin admin;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		user = (Auth) LoginDao.validate(username, password);
		
		RequestDispatcher dispatcher;
		
		if (user != null) {
			
			HttpSession session=request.getSession();  
	        session.setAttribute("username",username); 
	        session.setAttribute("userState", user.getUserState());
	        session.setAttribute("AUID", user.getAuid());
	        
	        switch (user.getUserState()) {
			case "student": {
				
				try {
					student = StudentService.selectStudentById(user.getAuid());
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				dispatcher = request.getRequestDispatcher("student-profile.jsp");
				request.setAttribute("student", student);
				dispatcher.forward(request, response);
				break;
			}
			case "teacher": {
				teacher = TeacherService.selectTeacherById(user.getAuid());
				subject = TeacherService.getSubjectName(teacher.getSbid());
				
				dispatcher = request.getRequestDispatcher("teacher-profile.jsp");
				request.setAttribute("teacher", teacher);
				request.setAttribute("subject", subject);
				dispatcher.forward(request, response);
				break;
			}
			case "admin": {
				admin = AdminService.selectAdminById(user.getAuid());
				
				dispatcher = request.getRequestDispatcher("admin-profile.jsp");
				request.setAttribute("admin", admin);
				dispatcher.forward(request, response);
				break;
			}
			default:
				dispatcher = request.getRequestDispatcher("error.jsp");
				dispatcher.forward(request, response);
				break;
			}
		}

	}

}
