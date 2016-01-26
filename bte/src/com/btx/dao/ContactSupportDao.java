package com.btx.dao;

/***
 * Refactored by S.K.Venkat on 25-Dec-2015
 ***/

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import com.btx.dto.ContactSupportBean;
import com.btx.util.DbDriver;
import com.btx.util.Util;

public class ContactSupportDao {

	private Connection conn = null;
	private PreparedStatement preStmt = null;

	public int insertTicket(ContactSupportBean a,String email) 
	{
		String qry="insert into contact_support (email,subject,message,status,time)values(?,?,?,?,?)";
		try {
			conn = DbDriver.getConnection();

			preStmt = conn.prepareStatement(qry);
			preStmt.setString(1, email);
			preStmt.setString(2, a.getSubject());
			preStmt.setString(3, a.getMessage());
			preStmt.setString(4, "Pending");
			preStmt.setTimestamp(5, Util.getCurrentTimeStamp());			

			int i = preStmt.executeUpdate();	
			return i;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		catch (ParseException e) {
			e.printStackTrace();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		
		finally{
//			try {
//				if (preStmt != null)
//				{ preStmt.close(); }
//				if (conn != null)
//				{ conn.close(); }
//			}catch (SQLException e) 
//			{ e.printStackTrace(); }
		}

		return 0;
	}

	public int getTicket(String email) throws ClassNotFoundException, SQLException, IOException 
	{	 
		int i=0;
		String qry="select id from contact_support where email=?";
		try {
			conn = DbDriver.getConnection();

			preStmt= conn.prepareStatement(qry);
			preStmt.setString(1, email);
			ResultSet rs = preStmt.executeQuery();

			while(rs.next()){
				i = rs.getInt("id");
			}
		}catch(SQLException  e) {
			e.printStackTrace();
		}
		catch(IOException  e) {
			e.printStackTrace();
		}
		finally{
//			try {
//				if (preStmt != null)
//				{ preStmt.close(); }
//				if (conn != null)
//				{ conn.close(); }
//			}catch (SQLException e) 
//			{ e.printStackTrace(); }
		}
		
		return i;
	}
}
