package com.sims_service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sims_models.Inquiry;
import com.sims_util.DbConnection;

public class InquiryDao {
	public static Connection con;
	
	public static void addInquiry(Inquiry inq) {
		try {
			con = DbConnection.getConnection();
			
			String query = "insert into online_school_ims.inquiry values (?,?,?,?,?,?)";
			
			PreparedStatement stmt = con.prepareStatement(query);
			
			stmt.setInt(1, inq.getIid());
			stmt.setInt(2, inq.getSid());
			stmt.setString(3, inq.getEmail());
			stmt.setString(4, inq.getTitle());
			stmt.setString(5, inq.getInquiry());
			stmt.setInt(6, inq.getResponded());
			
			int i = stmt.executeUpdate();
			
			System.out.print(i + " records inserted");
			
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
