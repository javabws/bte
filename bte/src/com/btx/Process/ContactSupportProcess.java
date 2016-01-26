package com.btx.Process;
  
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.btx.Bean.ContactSupportBean;
import com.btx.driver.DbDriver;

public class ContactSupportProcess {
	

	//----Declarations
	private Connection c=null;
	private PreparedStatement p=null;
	
	
	//----Method inserts the ticket for contactsupport to DB---//
	public int insertTicket(ContactSupportBean a,String email) throws ClassNotFoundException, SQLException, IOException 
	 {
	 
	
		  String qry="insert into contact_support (email,subject,message,status,time)values(?,?,?,?,?)";
		 c=DbDriver.getConnection();
		  p= c.prepareStatement(qry);
		  p.setString(1, email);
		  p.setString(2, a.getSubject());
		  p.setString(3, a.getMessage());
		  p.setString(4, "Pending");
		  p.setTimestamp(5, getCurrentTimeStamp());			
	    
		  int i=p.executeUpdate();	
		  return i;

	 }

	
	//---Method gets the ticket ID form DB when inserted----//
	public int getTicket(String email) throws ClassNotFoundException, SQLException, IOException 
	 {
	 
	
			int i=0;
		  String qry="select id from contact_support where email=?";
		 c=DbDriver.getConnection();
		  p= c.prepareStatement(qry);
		  p.setString(1, email);
		  ResultSet r=p.executeQuery();
		  while(r.next()){
			  i=r.getInt("id");
		  }
		  return i;

	 }
	
	
	
	//---Method insert the REPLY message for contactsupport to DB---//
	public int reply(String msg,String id) throws IOException, SQLException {
		
		int i=0;
		c=DbDriver.getConnection();
		  p= c.prepareStatement("update contact_support set status=?,reply=?,replytime=? where id=?");
		  p.setString(1, "Replyed");
		  p.setString(2, msg);
		  p.setTimestamp(3, getCurrentTimeStamp());
		  p.setInt(4, Integer.parseInt(id));
		i=p.executeUpdate();
		
		return i;
	}

	public  java.sql.Timestamp getCurrentTimeStamp() {

		java.util.Date today = new java.util.Date();
		return new java.sql.Timestamp(today.getTime());

	}
}
