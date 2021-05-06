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
import com.sims_util.GetFieldNames;

/**
 * Servlet implementation class UpdateTimetable
 */
@WebServlet("/UpdateTimetable")
public class UpdateTimetable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String className, imagePath, year, grade;
			int tid;

			HttpSession session = request.getSession();
			String username = (String) session.getAttribute("username");

			tid = TimetableDao.getLoggedInTeacherID(username);
			year = GetFieldNames.getFieldName(request, "year");
			grade = GetFieldNames.getFieldName(request, "grade");
			className = GetFieldNames.getFieldName(request, "class");
			imagePath = FileUpload.getFilePathName(request);
			
			System.out.println(year);
			System.out.println(grade);
			System.out.println(className);		
			
			
//			int finalYear = Integer.parseInt(year);
//			int finalGrade = Integer.parseInt(grade);

//			Timetables tb = new Timetables(tid, finalYear, finalGrade, className, imagePath);
//
//			boolean isAdded = TimetableDao.updateTimetables(tb);
//
//			if (isAdded) {
//
//				PrintWriter out = response.getWriter();
//
//				out.println("<script type=\"text/javascript\">");
//				out.println("alert('Timetable updated');");
//				out.println("location='teacher-timetable.jsp';");
//				out.println("</script>");
//
//				RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-timetable.jsp");
//				dispatcher.forward(request, response);
//			} else {
//				PrintWriter out = response.getWriter();
//
//				out.println("<script type=\"text/javascript\">");
//				out.println("alert('Timetable is not updated');");
//				out.println("location='teacher-timetable.jsp';");
//				out.println("</script>");
//				
//				RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-timetable.jsp");
//				dispatcher.forward(request, response);
//			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
