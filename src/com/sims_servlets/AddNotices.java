package com.sims_servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims_models.Notices;
import com.sims_service.NoticesDao;

/**
 * Servlet implementation class AddNotices
 */
@WebServlet("/AddNotices")
public class AddNotices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String date = request.getParameter("date");
		 String title = request.getParameter("title");
		 String description = request.getParameter("description");
		 Boolean student = true;
		 Boolean academic = false;
		 
		 DateFormat formatdate = new SimpleDateFormat("yyyy mm dd");
		 try {
			Date newdate = formatdate.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 
		
		Notices notice = new Notices(0, date, title, description, student, academic);
		try {
			NoticesDao.addNotices(notice);
		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("teacher-profile.jsp");
	}

}
