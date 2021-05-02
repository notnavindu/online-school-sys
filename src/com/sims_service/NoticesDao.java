package com.sims_service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sims_models.Notices;
import com.sims_util.DbConnection;

public class NoticesDao {
	private static Connection con;
	
	public static void addNotices(Notices notice) throws SQLException, IOException {
		try {
			con = DbConnection.getConnection();
			
			String sql = "insert into online_school_ims.notices (?,?,?,?,?,?)";
			
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setInt(1, notice.getNID());
			stmt.setString(2, notice.getDate());
			stmt.setString(3, notice.getTitle());
			stmt.setString(4, notice.getDescription());
			stmt.setBoolean(5, notice.getStudent());
			stmt.setBoolean(6, notice.getAcademic());
			
			int i = stmt.executeUpdate();
			System.out.println("No. of records inserted" + i);
			
		}catch(ClassNotFoundException e) {
			System.out.println("1");
			e.printStackTrace();
			}catch (SQLException e) {
				System.out.print("2");
				e.printStackTrace();
			} catch (IOException e) {
				System.out.print("3");
				e.printStackTrace();
			}
	}
}
