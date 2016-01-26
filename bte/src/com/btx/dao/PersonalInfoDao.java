package com.btx.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.sql.Statement;

import com.btx.driver.DbDriver;
import com.btx.dto.UserProfileDto;

public class PersonalInfoDao {
	
	
	private Connection c=null;
	private PreparedStatement p=null;
	private ResultSet r=null;
	private UserProfileDto userProfileDto=null;
	
	public PersonalInfoDao() {
		
		userProfileDto=new UserProfileDto();
	}
	
	public UserProfileDto getPersonalInfo(String email) {
		
		Savepoint savepoint=null;
		
		try {
			c=DbDriver.getConnection();
		c.setAutoCommit(false);
		c.setSavepoint("getPersonalinfo");
        p=c.prepareStatement("select * from user_details where email=?");
        p.setString(1, email);
        r=p.executeQuery();
        if(r.next())
        {
        	userProfileDto.setEmail(r.getString("email"));
        	userProfileDto.setFirstname(r.getString("firstname"));
        	userProfileDto.setLastname(r.getString("lastname"));
        	userProfileDto.setGender(r.getString("gender"));
        	userProfileDto.setDateofbirth(r.getString("dateofbirth"));
        	userProfileDto.setCountry(r.getString("country"));
        	userProfileDto.setCity(r.getString("city"));
        	userProfileDto.setZip(""+r.getInt("zip"));
        	userProfileDto.setAddress(r.getString("address"));
        	userProfileDto.setCountrycode(r.getString("countrycode"));
        	userProfileDto.setPhonenumber(""+r.getLong("phonenumber"));
        	userProfileDto.setCurrentpassword(r.getString("password"));
        	userProfileDto.setCurrency(r.getString("currency"));
        	userProfileDto.setTimezone(r.getString("timezone"));
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
			freeResources();
		}
		return userProfileDto;
		
	}
	
	private void freeResources()
	{
		try{
			if(p != null)
			{ p.close(); }
			if (c != null) 
			{c.close(); }
			if (r!=null)
			{
				r.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@SuppressWarnings("unused")
	private void freeResources(Connection con, Statement stmt, ResultSet rs) {
		try {
			if (rs!=null)
			{
				rs.close();
			}
			if(stmt != null)
			{
				stmt.close();
			}
			if (con !=null)
			{
				con.close();
			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
