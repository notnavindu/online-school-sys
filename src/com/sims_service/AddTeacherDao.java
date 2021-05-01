package com.sims_service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sims_models.Teacher;
import com.sims_util.DbConnection;

public class AddTeacherDao {
	public static Connection con;
	
	public static void addTeacher(Teacher teach) {
		try {
			
			con = DbConnection.getConnection();
			
			String query = "insert into online_school_ims.teacher values (?,?,?,?,?,?,?)";
			
			PreparedStatement stmt = con.prepareStatement(query);
			
			stmt.setInt(1, teach.getSbid());
			stmt.setString(2, teach.getName());
			stmt.setInt(3, teach.getAge());
			stmt.setString(4, teach.getAddress());
			stmt.setString(5, teach.getContact());
			stmt.setInt(6, teach.getSbid());
			stmt.setString(7, teach.getProfilePic());
			
			int i = stmt.executeUpdate();
			System.out.print(i + "rows added");
			
			/*
			PrintWriter out;
			
			if(i>0) {
				
			}
			*/
			
			
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
