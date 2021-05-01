package com.sims_service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sims_models.Student;
import com.sims_models.Teacher;
import com.sims_util.DbConnection;


public class AdminService {
	private static Connection con;
	
	public static void addStudent(Student std) {
		
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
			
			int i = stmt.executeUpdate();
			
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
		
	}
	
	public static void addTeacher(Teacher teach) {
		try {
			con = DbConnection.getConnection();
			
			
			String auth_query = "insert into auth values (?,?,?,?)";
			String teacher_query = "insert into online_school_ims.teacher values (?,?,?,?,?,?,?,?)";
			
			//Set valuse to auth table
			PreparedStatement auth_stmt = con.prepareStatement(auth_query);
			
			auth_stmt.setInt(1, );
			
			//Get auth id from auth table
			
			
			
			//Enter student details with auth id
			PreparedStatement teacher_stmt = con.prepareStatement(teacher_query);
			
			teacher_stmt.setInt(1, teach.getTid());
			teacher_stmt.setString(2, teach.getName());
			teacher_stmt.setInt(3, teach.getAge());
			teacher_stmt.setString(4, teach.getAddress());
			teacher_stmt.setString(5, teach.getContact());
			teacher_stmt.setInt(6, teach.getSbid());
			teacher_stmt.setString(7, teach.getProfilePic());
			teacher_stmt.setInt(8, teach.getAuid());
			
			int i = teacher_stmt.executeUpdate();
			System.out.print(i + "rows added");
			
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
