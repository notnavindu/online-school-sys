package com.sims_servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sims_models.Marks;

/**
 * Servlet implementation class AddResult2
 */
@WebServlet("/AddResult2")
public class AddResult2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sbid = (String) request.getAttribute("sbid");
		int sbid1 = Integer.parseInt(sbid);
		String exam = (String) request.getAttribute("exam");
		String grade = (String) request.getAttribute("grade");
		int grade1 = Integer.parseInt(grade);
		
		for (int i=1; i<5; i++) {

			String sid = request.getParameter("studentid" + String.valueOf(i));
			String result = request.getParameter("result" + String.valueOf(i));
			
			int sidfinal = Integer.parseInt(sid);
			int resultfinal = Integer.parseInt(result);
			
			System.out.println(sidfinal + sbid1 + grade1 + resultfinal);
			Marks marks = new Marks(sidfinal, sbid1, grade1, exam, resultfinal);
			System.out.println("Added to marks");
			
		}
		
		
		
	}

}
