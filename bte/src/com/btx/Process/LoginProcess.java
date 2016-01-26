package com.btx.Process;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.btx.Bean.UserBean;
import com.btx.driver.DbDriver;
import com.mysql.jdbc.exceptions.jdbc4.CommunicationsException;

public class LoginProcess {
	
	//---Declarations---//
	private static Connection con=null;
	private static PreparedStatement p=null;
	private static ResultSet r=null;
	private static UserBean u;
	
	
	
	//-----Method is used to Check the user credentials while Login-----//
	public static UserBean checkLogin(String un,String pw) throws IOException, SQLException,CommunicationsException
	{
		u=null;
		con=DbDriver.getConnection();
		p=con.prepareStatement("select * from user_details where email=? and password=? and status=?");
		p.setString(1, un);
		p.setString(2, pw);
		p.setString(3, "Active");
		r=p.executeQuery();
		if(r.next())
		{
			u=new UserBean();
			u.setFirstname(r.getString("firstname"));
			u.setLastname(r.getString("lastname"));
			u.setEmail(r.getString("email"));
			u.setPassword(r.getString("password"));
			u.setLink(r.getString("referral_link"));
		}
		
		return u;
		
	}
	

}
