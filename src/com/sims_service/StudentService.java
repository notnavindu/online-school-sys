package com.sims_service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.sims_models.Student;
import com.sims_util.DbConnection;

public class StudentService {
	private static Connection conn;
	
	private static final String SEELECT_USER_BY_ID = "select name, age, address, contact, grade, class, profilePic from student where SID=?";
	

	public Student selectStudentById(int id) throws ClassNotFoundException, SQLException, IOException {
		Student student = null;
		
		try{
			conn = DbConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement(SEELECT_USER_BY_ID);
			stmt.setInt(1, id);
			System.out.println(stmt);
			
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				String name, address, contact, className, profilePic;
				int grade, age;
				
				name = rs.getString("name");
				age = rs.getInt("age");
				address = rs.getString("address");
				contact = rs.getString("contact");
				grade = rs.getInt("grade");
				className = rs.getString("class");
				profilePic = rs.getString("profilePic");
				
				student = new Student(name, age, address, contact, grade, className, profilePic); 
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return student;
	}
}
