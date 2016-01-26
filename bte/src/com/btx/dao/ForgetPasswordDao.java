package com.btx.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;

import org.apache.commons.lang3.RandomStringUtils;

import com.btx.Process.EmailProcess;
import com.btx.driver.DbDriver;

public class ForgetPasswordDao {
	
	
	private Connection c=null;
	private PreparedStatement p=null;
	private ResultSet rs=null;
	
	
	///-----Send forget password link
	public boolean sendForgetLink(String un,String path) {
		
		boolean isSent=false;
		int i = 0;
		Savepoint savepoint=null;

		try {
			c=DbDriver.getConnection();
			c.setAutoCommit(false);
			savepoint=c.setSavepoint("sentforgetlink");
		
			String code=RandomStringUtils.random(20, true, true);
			p=c.prepareStatement("insert into forget_password (email,code) values(?,?)");
			p.setString(1,un);
			p.setString(2, code);
			i=p.executeUpdate();
			
			
			if(i>0)
			{
				EmailProcess.SendForgetPasswordLink(code, un, path);
				isSent=true;
			}
			else if(i<0)
				isSent=false;
			
			c.commit();
		} catch (IOException e) {
			try {
				c.rollback(savepoint);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} catch (SQLException e) {
			try {
				c.rollback(savepoint);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		finally
		{
//			freeResources();
		}
		return isSent;
		
	}
	
	
	//----Resetting the password
	public boolean resetPassword(String pw,String code,String email) {
		
		boolean isReset=false;
		
		Savepoint savepoint=null;

		try {
			c=DbDriver.getConnection();
			c.setAutoCommit(false);
			savepoint=c.setSavepoint("resetpassword");
			p=c.prepareStatement("update user_details set password=? where email=?");
			p.setString(1, pw);
			p.setString(2, email);
			int i=p.executeUpdate();
			
			if(i>0)
			{
				isReset=true;
				
			}
			else
			{
				isReset=false;
			}
			c.commit();
					
		} catch (IOException e) {
			try {
				c.rollback(savepoint);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} catch (SQLException e) {
			try {
				c.rollback(savepoint);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		finally
		{
//			freeResources();
		}
		
		return isReset;
		
	}
	
	//-----Change the status for forget link
	public boolean changeStatus(int id) {
		boolean isStatusChanged=false;

		Savepoint savepoint=null;

		try {
			c=DbDriver.getConnection();
			c.setAutoCommit(false);
			savepoint=c.setSavepoint("changeStatus");
			p=c.prepareStatement("update forget_password set status=? where id=?");
			p.setString(1, "Changed");
			p.setInt(2,id);
			int j=p.executeUpdate();
			if(j>0)
			{
				isStatusChanged=true;
			}
			else
			{
				isStatusChanged=false;
			}
			c.commit();
		} catch (IOException e) {
			try {
				c.rollback(savepoint);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} catch (SQLException e) {
			try {
				c.rollback(savepoint);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		finally
		{
//			freeResources();
		}
		return isStatusChanged;
	}
	
	// check the code is expired
	public String[] isCodeExpired(String code) {
		String[] isExpired = new String[2];

		Savepoint savepoint=null;

		try {
			c=DbDriver.getConnection();
			c.setAutoCommit(false);
			savepoint=c.setSavepoint("codeexpired");
			p=c.prepareStatement("select email,id from forget_password where code=? and status=?");
			p.setString(1, code);
			p.setString(2, "Pending");
			rs=p.executeQuery();
			if(rs.next())
			{
				isExpired[0]=""+rs.getInt("id");
				isExpired[1]=rs.getString("email");
			}
			else
			{
				isExpired=null;
			}
			c.commit();
		} catch (IOException e) {
			try {
				c.rollback(savepoint);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} catch (SQLException e) {
			try {
				c.rollback(savepoint);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		finally
		{
//			freeResources();
		}
		return isExpired;
	}
	
	//---to free the resource
	@SuppressWarnings("unused")
	private void freeResources()
	{
		try{
			if(p != null)
			{ p.close(); }
			if (c != null) 
			{c.close(); }
			if (rs != null) 
			{rs.close(); }
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
