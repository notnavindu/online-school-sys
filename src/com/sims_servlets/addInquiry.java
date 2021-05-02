package com.sims_servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims_models.Inquiry;
import com.sims_service.InquiryDao;

/**
 * Servlet implementation class addInquiry
 */
@WebServlet("/addInquiry")
public class addInquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int iid =0;
		//TODO get sid value from session
		int sid = 2;
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
		int responded =0;
		
		Inquiry inq = new Inquiry(iid,sid,email,inquiry,responded);
		
		InquiryDao.addInquiry(inq);
		
		
	}

}
