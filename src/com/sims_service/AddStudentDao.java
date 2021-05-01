package com.sims_service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sims_models.Student;
import com.sims_util.DbConnection;

public class AddStudentDao {
	private static Connection con;
	
	public static int addStudent(Student std) {
		
		int i = 0;
		
		try {
			con = DbConnection.getConnection();
			
			String query = "insert into online_school_ims.student values (?,?,?,?,?,?,?,?)";
			
			PreparedStatement stmt = con.prepareStatement(query);
			
			stmt.setInt(1, std.getSid());
			stmt.setString(2, std.getName());
			stmt.setInt(3, std.getAge());
			stmt.setString(4, std.getAddress());
			stmt.setString(5, std.getContact());
			stmt.setInt(6, std.getGrade());
			stmt.setString(7, std.getClassName());
			stmt.setString(8, std.getProfilePic());
			
			i = stmt.executeUpdate();
			
			System.out.print(i + " records inserted");
			
	
			
		} catch (ClassNotFoundException e) {
			System.out.print("1");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.print("2");
			e.printStackTrace();
		} catch (IOException e) {
			System.out.print("3");
			e.printStackTrace();
		}
		
		
		return i;
		
	}
	
}
