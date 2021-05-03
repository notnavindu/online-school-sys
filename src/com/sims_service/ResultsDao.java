package com.sims_service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sims_models.Marks;
import com.sims_util.DbConnection;

public class ResultsDao {
	public static Connection con;
	
	public static void addResults(Marks m) {
		try {
			con = DbConnection.getConnection();
			
			String query = "insert into online_school_ims.marks values (?,?,?,?,?)";
			
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setInt(1, m.getSid());
			stmt.setInt(2, m.getSbid());
			stmt.setString(3, m.getExam());
			stmt.setInt(4, m.getGrade());
			stmt.setDouble(5, m.getResult());
			
			
			int i = stmt.executeUpdate();
			System.out.print(i + " rows added");
			
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
