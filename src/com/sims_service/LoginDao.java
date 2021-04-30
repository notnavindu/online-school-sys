package com.sims_service;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


import java.sql.Connection;
import com.sims_util.DbConnection;



public class LoginDao {
	private static Connection con;
	
	public static List<User> validate(String userName, String password){
		
		ArrayList<User> user = new ArrayList<User>();
		
		//Validation
		try {
			con = DbConnection.getConnection();
			Statement stmt = con.createStatement();
			String sql = "select * from auth where userName = '"+userName+"' and password = '"+password+"'";
			ResultSet res = stmt.executeQuery(sql);
			
			if(res.next()) {
				String name = res.getString(1);
				String pwd = res.getString(2);
				
				User u = new User()
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return user;
	}
}
