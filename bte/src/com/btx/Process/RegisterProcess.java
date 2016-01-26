package com.btx.Process;
  
import com.btx.Bean.RegisterBean;
import com.btx.driver.DbDriver;
import com.sun.jersey.api.client.ClientHandlerException;
import com.sun.jersey.api.client.ClientResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import org.apache.commons.lang3.RandomStringUtils;


//----Class is used for Registration process---//
public class RegisterProcess
{
	
	//---Declarations--//
  Date date;
  Connection con=null;
  Statement st=null;
  
  //-----Method is to get the random string(length-20,numbers-true,characters-true)------//
  public String randomString()
  {
    String vco = RandomStringUtils.random(20, true, true);
    return vco;
  }
  
  
  //------Method is used to register the new user 
  @SuppressWarnings("unused")
  public boolean registerUser(RegisterBean r, String serverpath)
  {
    boolean re = true;
    String stat = "Inactive";
    
    String vcode = randomString();
    try
    {
       con= DbDriver.getConnection();
     st= con.createStatement();
      
      //int i = st.executeUpdate("insert into login_details (first_name, last_name, email, password, status) values ('" + r.getFirstname() + "','" + r.getLastname() + "','" + r.getEmail() + "','" + r.getPassword() + "','" + stat + "')");
      int l = st.executeUpdate("insert into user_details (email,password,firstname,lastname,status,time,referral_link) values('"+r.getEmail()+"','"+r.getPassword()+"','"+r.getFirstname()+"','"+r.getLastname()+"','Inactive','"+getCurrentTimeStamp()+"','"+randomString()+"')");
      int j = st.executeUpdate("insert into activation (email, verification_code) values ('" + r.getEmail() + "','" + vcode + "')");
      int k = st.executeUpdate("insert into wallets (email,amount) values('"+r.getEmail()+"',0.0)");
     
      if ((j > 0) && (k>0) && (l>0)) {
    	  try{
        EmailProcess.SendVerificationCode(vcode, r.getEmail(),serverpath);
    	  }
    	  catch(ClientHandlerException e){
    		  st.executeUpdate("delete from user_details where email='"+r.getEmail()+"'");
    		  st.executeUpdate("delete from activation where email='"+r.getEmail()+"'");
    		  st.executeUpdate("delete from wallets where email='"+r.getEmail()+"'");
    		  re=false;
    	  }
      } else {
    	  st.executeUpdate("delete from user_details where email='"+r.getEmail()+"'");
		  st.executeUpdate("delete from activation where email='"+r.getEmail()+"'");
		  st.executeUpdate("delete from wallets where email='"+r.getEmail()+"'");

        re = false;
      }
    }
    catch (IOException e)
    {
      
      re = false;
    }
    catch (SQLException e)
    {
      
      re = false;
    }
    return re;
  }
  
  //---getting current time stamp----//
	public static java.sql.Timestamp getCurrentTimeStamp() {

		java.util.Date today = new java.util.Date();
		return new java.sql.Timestamp(today.getTime());

	}
	
	
	//---checking the existing user while registration----//
	public boolean checkUser(String email) throws IOException, SQLException {
		boolean r=false;
		
		 con = DbDriver.getConnection();
		 PreparedStatement p=con.prepareStatement("select email from user_details where email=?");
		 p.setString(1, email);
		 ResultSet rs=p.executeQuery();
		 if(rs.next()){
			 r=true;
		 }

		return r;
	}
	
	
	//-----Method is used to register the referral user----//
	@SuppressWarnings("unused")
	public int registerReferal(RegisterBean r,String path,String link) throws IOException, SQLException {
		int i=0;
		
		
		String referrer_id="";
		con=DbDriver.getConnection();
		PreparedStatement p=con.prepareStatement("select email from user_details where referral_link=?");
		p.setString(1, link);
		ResultSet rs=p.executeQuery();
		if(rs.next()){
			referrer_id=rs.getString("email");
			 String vcode = randomString();
			 double amount=100;
			 double amo=0;
			Statement st = con.createStatement();
			 int l = st.executeUpdate("insert into user_details (email,password,firstname,lastname,status,time,referral_link) values('"+r.getEmail()+"','"+r.getPassword()+"','"+r.getFirstname()+"','"+r.getLastname()+"','Inactive','"+getCurrentTimeStamp()+"','"+randomString()+"')");
		      int j = st.executeUpdate("insert into activation (email, verification_code) values ('" + r.getEmail() + "','" + vcode + "')");
		      int k = st.executeUpdate("insert into wallets (email,amount) values('"+r.getEmail()+"',0.0)");
		      int m= st.executeUpdate("insert into referral_list (referrer_id,refer_id,status,time) values('"+referrer_id+"','"+r.getEmail()+"','Referred','"+getCurrentTimeStamp()+"')");
		      int o = st.executeUpdate("insert into referral_process (referrer_id,refer_id,type,time,amount) values('"+referrer_id+"','"+r.getEmail()+"','Registration','"+getCurrentTimeStamp()+"','"+amount+"')");
		      p=con.prepareStatement("select amount from wallets where email=?");
		      p.setString(1, referrer_id);
		      ResultSet rs1=p.executeQuery();
		      if(rs1.next()){
		    	  amo=rs1.getDouble("amount");
		    	  System.out.println("Referrer Amount: "+amo);
		      }
		     
		      int w= st.executeUpdate("update wallets set amount='"+(amo+amount)+"' where email='"+referrer_id+"'");
		      
		      System.out.println("Deetails inserted");
		     
		      if ((j > 0) && (k>0) && (l>0) && (m>0) && (o>0) && (w>0) ) {
		    	  try{
		    		  ClientResponse res= EmailProcess.SendVerificationCode(vcode, r.getEmail(),path);
		    		  i=1;
		    		  System.out.println("Email sent");
		    	  }
		    	  catch(ClientHandlerException e){
		    		  System.out.println("Email Exception");
		    		  st.executeUpdate("delete from user_details where email='"+r.getEmail()+"'");
		    		  st.executeUpdate("delete from activation where email='"+r.getEmail()+"'");
		    		  st.executeUpdate("delete from wallets where email='"+r.getEmail()+"'");
		    		  st.executeUpdate("delete from referral_list where refer_id='"+r.getEmail()+"'");
		    		  st.executeUpdate("delete from referral_process where refer_id='"+r.getEmail()+"'");
		    		  st.executeUpdate("update wallets set amount='"+amo+"' where email='"+referrer_id+"'");
		    		  i=0;
		    		  
		    	  }
		       
		      
		      } else {
		    	  st.executeUpdate("delete from user_details where email='"+r.getEmail()+"'");
	    		  st.executeUpdate("delete from activation where email='"+r.getEmail()+"'");
	    		  st.executeUpdate("delete from wallets where email='"+r.getEmail()+"'");
	    		  st.executeUpdate("delete from referral_list where refer_id='"+r.getEmail()+"'");
	    		  st.executeUpdate("delete from referral_process where refer_id='"+r.getEmail()+"'");
	    		  st.executeUpdate("update wallets set amount='"+amo+"' where email='"+referrer_id+"'");
		        i = 0;
		      }
			
		}
		
		
		
		return i;
		
	}
	
	
	
}
