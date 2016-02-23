package com.btx.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import com.btx.dto.AdminUserViewDto;
import com.btx.util.DbDriver;
import com.btx.util.Util;

public class AdminUserViewDao {

	private Connection conn = null;
	private PreparedStatement preStmt = null;
	private ResultSet rs = null;
	
	public AdminUserViewDto getUserDetails(String email) {
		
		String qry="select * from user_details where email=?";
		AdminUserViewDto dto=null; 
		try {
			conn = DbDriver.getConnection();

			preStmt = conn.prepareStatement(qry);
			preStmt.setString(1, email);
			rs=preStmt.executeQuery();
			if (rs.next()) {
				dto=new AdminUserViewDto();
				dto.setEmail(rs.getString("email"));
				dto.setPassword(rs.getString("password"));
				dto.setFirstname(rs.getString("firstname"));
				dto.setLastname(rs.getString("lastname"));
				dto.setGender(rs.getString("gender"));
				dto.setDob(rs.getString("dateofbirth"));
				dto.setCountry(rs.getString("country"));
				dto.setCity(rs.getString("city"));
				dto.setZip(rs.getInt("zip"));
				dto.setAddress(rs.getString("address"));
				dto.setCountrycode(rs.getString("countrycode"));
				dto.setPhoneno(rs.getLong("phonenumber"));
				dto.setCurrency(rs.getString("currency"));
				dto.setTimezone(rs.getString("timezone"));
				dto.setDefaultlanguage(rs.getString("defaultlanguage"));
				dto.setReferralcode(rs.getString("referral_link"));
				dto.setTime(rs.getTimestamp("time"));
				dto.setStatus(rs.getString("status"));
				
			}

				
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		catch (IOException e) {
			e.printStackTrace();
		}
		return dto;
		
	}
	
}
