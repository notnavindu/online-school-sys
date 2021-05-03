package com.sims_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddResult
 */
@WebServlet("/AddResult")
public class AddResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sbid = request.getParameter("subject");
		String exam = request.getParameter("examination");
		String grade = request.getParameter("grade");
		
		request.setAttribute("sbid", sbid);
		request.setAttribute("exam", exam);
		request.setAttribute("grade", grade);
		RequestDispatcher rs = request.getRequestDispatcher("AddResults2.jsp");
		rs.forward(request, response);
	}

}
