package com.sims_service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.sims_util.DbConnection;

public class AddStudentDao {
	private static Connection con;
	
	public static void addStudent(String name, int age, String contact, String address, int grade, String className, String image ) {
		
		try {
			con = DbConnection.getConnection();
			
			String query = "insert into online_school_ims.student values (0, '"+name+"', '"+age+"', '"+address+"', '"+contact+"', '"+grade+"', '"+className+"', '"+image+"' )";
			
			Statement stmt = con.createStatement();
			
			
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
