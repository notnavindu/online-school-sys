package com.sims_service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import com.sims_models.Inquiry;
import com.sims_util.DbConnection;

public class InquiryDao {
	public static Connection con;
	
	public static void addInquiry(Inquiry inq) {
		try {
			con = DbConnection.getConnection();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
