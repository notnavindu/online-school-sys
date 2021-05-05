package com.sims_servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewInquiry
 */
@WebServlet("/ViewInquiry")
public class ViewInquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       com.sims_models.Inquiry Inquiry;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher;
		dispatcher = request.getRequestDispatcher("viewInquiry.jsp");
		request.setAttribute("Inquiry", Inquiry);
		dispatcher.forward(request, response);
		}

}
