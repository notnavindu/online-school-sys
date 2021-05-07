package com.sims_service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sims_models.Auth;
import com.sims_util.DbConnection;

public class UpdateProfileService {
	static Connection con;
	
	
	public static Auth selectAuthInfo(int auid) {
		Auth user = null;
		try {
			con = DbConnection.getConnection();
			String query = "select * from online_school_ims.auth where AUID = ?";
			PreparedStatement stmt = con.prepareStatement(query);
			
			stmt.setInt(1, auid);
			
			ResultSet rs = stmt.executeQuery();
			
			String uname,pwd;
			
			if(rs.next()) {
				uname = rs.getString("userName");
				pwd = rs.getString("password");
				user = new Auth(auid, uname, pwd);	
			}	
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return user;
		
	}
	
	public static boolean checkPassword(int auid, String pwd, String npwd) {
		boolean isAdded = false;
		try {	
			con = DbConnection.getConnection();
			
			String query = "select * from online_school_ims.auth where AUID = ?";
			PreparedStatement stmt = con.prepareStatement(query);
			
			stmt.setInt(1, auid);
			
			ResultSet rs = stmt.executeQuery();
			String password = null;
			if(rs.next()) {
				password = rs.getString("password");
				if (password.equals(pwd)) {
					isAdded = updatePassword(auid, password, npwd);
				} else {
					System.out.println("");
				}
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return isAdded;
		
	}
	
	public static boolean updatePassword(int auid, String pwd, String npwd) {
		boolean isAdded = false;
		
		try {
			con = DbConnection.getConnection();
			String query = "update online_school_ims.auth set password = ? where auid = ?";
			
			PreparedStatement stmt = con.prepareStatement(query);
			
			stmt.setString(1, npwd);
			stmt.setInt(2, auid);
			
			int i = stmt.executeUpdate();
			
			if(i>0) {
				isAdded = true;
			}
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return isAdded;
		
		
		
	}
}
