package com.sims_service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sims_models.Timetables;
import com.sims_util.DbConnection;

public class TimetableDao {
	private static Connection con;
	
	private static final String INSERT_TIMETABLE = "insert into online_school_ims.timetables values (?,?,?,?,?)";
	
	public static void addTimetables(Timetables timetable) {
		
		
		try {
			con = DbConnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(INSERT_TIMETABLE);
			
			stmt.setInt(1, timetable.getTtid());
			stmt.setInt(2, timetable.getYear());
			stmt.setInt(3, timetable.getGrade());
			stmt.setString(4, timetable.getClassName());
			stmt.setString(5, timetable.getImage());
			
			int isAdded = stmt.executeUpdate();
			System.out.println("No. of records inserted" + isAdded);
			
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
