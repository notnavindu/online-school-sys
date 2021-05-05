package com.sims_servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sims_models.Timetables;
import com.sims_service.TimetableDao;
import com.sims_util.FileUpload;

/**
 * Servlet implementation class AddTimetables
 */
@WebServlet("/AddTimetables")
public class AddTimetables extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			int year, grade, tid;
			String className, imagePath;

			HttpSession session = request.getSession();
			String username = (String) session.getAttribute("username");

			tid = TimetableDao.getLoggedInTeacherID(username);
			year = Integer.parseInt(request.getParameter("year"));
			grade = Integer.parseInt(request.getParameter("grade"));
			className = request.getParameter("class");
			imagePath = FileUpload.getFilePathName(request);

			Timetables tb = new Timetables(tid, year, grade, className, imagePath);
			boolean isAdded = TimetableDao.addTimetables(tb);

			if (isAdded) {
				PrintWriter out = response.getWriter();

				out.println("<script type=\"text/javascript\">");
				out.println("alert('Timetable added');");
				out.println("location='teacher-timetable.jsp';");
				out.println("</script>");

				RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-timetable.jsp");
				dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		throw new ServletException("GET method used with " + getClass().getName() + ": POST method required.");

	}
}
