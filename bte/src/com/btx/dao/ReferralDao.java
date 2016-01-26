package com.btx.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.btx.util.DbDriver;

public class ReferralDao {
	
	private Connection c=null;
	private PreparedStatement p=null;
	
	public int sendReferral(String email,String remail,String path) throws IOException, SQLException {
		
		int i=0;
		
		c=DbDriver.getConnection();
		p=c.prepareStatement("select referral_link from user_details where email=?");
		p.setString(1, email);
		ResultSet rs=p.executeQuery();
		if(rs.next()){
			EmailDao.SendReferralLink(rs.getString("referral_link"), remail, path);
			i=1;
		}
		
		return i;		
	}

}
