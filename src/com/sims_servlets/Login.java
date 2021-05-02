package com.sims_servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims_models.Auth;
import com.sims_models.Student;
import com.sims_service.LoginDao;
import com.sims_service.StudentService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Auth user;
	Student student;

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
			}
			case "admin": {
				dispatcher = request.getRequestDispatcher("admin-profile.jsp");
				dispatcher.forward(request, response);
			}
			case "teacher": {
				dispatcher = request.getRequestDispatcher("teacher-profile.jsp");
				dispatcher.forward(request, response);
			}
			default:
				dispatcher = request.getRequestDispatcher("error.jsp");
				dispatcher.forward(request, response);
			}
		}

	}

}
