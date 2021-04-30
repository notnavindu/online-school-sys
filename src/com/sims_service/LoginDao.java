package com.sims_service;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;

import com.sims_models.Auth;
import com.sims_util.DbConnection;



public class LoginDao {
	private static Connection con;
	
	public static List<Auth> validate(String userName, String password){
		
		ArrayList<Auth> user = new ArrayList<Auth>();
		
		//Validation
		try {
			con = DbConnection.getConnection();
			Statement stmt = con.createStatement();
			String sql = "select * from auth where userName = '"+userName+"' and password = '"+password+"'";
			ResultSet res = stmt.executeQuery(sql);
			
			if(res.next()) {
				String name = res.getString(1);
				String pwd = res.getString(2);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return user;
	}
}
