package com.sims_service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sims_models.Auth;
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
	
	public static void addTeacher(Teacher teach, Auth auth) {
		try {
			con = DbConnection.getConnection();
			
			
			String set_auth_query = "insert into online_school_ims.auth values (?,?,?,?)";
			String teacher_query = "insert into online_school_ims.teacher values (?,?,?,?,?,?,?,?)";
			
			//Set valuse to auth table
			PreparedStatement set_auth_stmt = con.prepareStatement(set_auth_query);
			
			set_auth_stmt.setInt(1, auth.getAuid() );
			set_auth_stmt.setString(2, auth.getUserName());
			set_auth_stmt.setString(3, auth.getPassword());
			set_auth_stmt.setString(3, auth.getUserState());
			
			set_auth_stmt.executeQuery();
			
			//Get auth id from auth table
			String get_auth_query = "select * from online_school_ims.auth where userName =  ";
			
			PreparedStatement get_auth_stmt = con.prepareStatement(get_auth_query);
			
			get_auth_stmt.setString(1, auth.getUserName());
			
			ResultSet rs = get_auth_stmt.executeQuery();
			
			//TODO ithuru tika karapn
			
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
