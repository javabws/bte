package com.btx.dao;

/***
 * Refactored by S.K.Venkat on 20-Dec-2015
 ***/

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.sql.Statement;
import java.text.ParseException;

import com.btx.dto.RegisterBean;
import com.btx.dto.UserProfileDto;
import com.btx.util.DbDriver;
import com.btx.util.Util;

public class UserOperationsDao {

	private Connection conn = null;
	private PreparedStatement preStmt = null;
	private Statement stmt = null;

	public int activateNewUser(String email, String vCode)
	{
		int exitCode = 0;
		try {
			conn = DbDriver.getConnection();
			preStmt = conn.prepareStatement("insert into activation (email, verification_code) values (?,?)");
			preStmt.setString(1, email);
			preStmt.setString(2, vCode);
			exitCode = preStmt.executeUpdate();
			
		} catch (IOException  e) {
			e.printStackTrace();
		}
		catch (SQLException  e) {
			e.printStackTrace();
		}
		finally
		{
			freeResources();
		}
		return exitCode;
	}

	public int addNewUser(RegisterBean userProfile)
	{
		int exitCode = 0;
		try {
			conn = DbDriver.getConnection();
			preStmt = conn.prepareStatement("insert into user_details (email,password,firstname,lastname,status,time,referral_link) "
					+ "values(?,?,?,?,?,?,?)");
			preStmt.setString(1, userProfile.getEmail());
			preStmt.setString(2,userProfile.getPassword());
			preStmt.setString(3,userProfile.getFirstname());
			preStmt.setString(4,userProfile.getLastname());
			preStmt.setString(5,"Inactive");
			preStmt.setTimestamp(6,Util.getCurrentTimeStamp());
			preStmt.setString(7,Util.randomString());
			exitCode = preStmt.executeUpdate();
		}catch(SQLException e)
		{ 
			e.printStackTrace();
		}
		catch(ParseException e)
		{ 
			e.printStackTrace();
		}
		catch(IOException e)
		{ 
			e.printStackTrace();
		}
		finally{
			freeResources();
		}
		return exitCode;
	}

	public int addReferralBonus(String referralId, String referreeEmail, double amount)
	{
		int exitCode = 0;
		try {
			conn = DbDriver.getConnection();
			preStmt = conn.prepareStatement("insert into referral_process (referrer_id,refer_id,type,time,amount) values(?,?,?,?)");
			
			preStmt.setString(1, referralId);
			preStmt.setString(2, referreeEmail);
			preStmt.setString(3, "Registration");
			preStmt.setTimestamp(4, Util.getCurrentTimeStamp());
			preStmt.setDouble(5, amount);
			exitCode = preStmt.executeUpdate();
		} catch(SQLException e)
		{ 
			e.printStackTrace();
		}
		catch(ParseException e)
		{ 
			e.printStackTrace();
		}
		catch(IOException e)
		{ 
			e.printStackTrace();
		}finally{
			freeResources();
		}		
		return exitCode;
	}

	public int addReferralUserEntry(String referralId, String refereeEmail)
	{
		int exitCode = 0;
		try {
			conn = DbDriver.getConnection();
			preStmt = conn.prepareStatement("insert into referral_list (referrer_id,refer_id,status,time) values(?,?,?,?)");
			preStmt.setString(1, referralId);
			preStmt.setString(2, refereeEmail);
			preStmt.setString(3, "Referred");
			preStmt.setTimestamp(4, Util.getCurrentTimeStamp());
			exitCode = preStmt.executeUpdate();
		} catch(SQLException e)
		{ 
			e.printStackTrace();
		}
		catch(ParseException e)
		{ 
			e.printStackTrace();
		}
		catch(IOException e)
		{ 
			e.printStackTrace();
		}finally{
			freeResources();
		}		
		return exitCode;
	}

	public boolean checkUser(String email) throws IOException, SQLException {
		boolean usrExists = false;
	
		try{
			conn = DbDriver.getConnection();
			preStmt = conn.prepareStatement("select email from user_details where email=?");
			preStmt.setString(1, email);
			ResultSet rs=preStmt.executeQuery();
			if(rs.next()){
				usrExists = true;
			}
		}catch(SQLException e)
		{ 
			e.printStackTrace();
		}
		catch(IOException e)
		{ 
			e.printStackTrace();
		}
		finally{
			freeResources();
		}
		return usrExists;
	}

	public int createProfile(RegisterBean profile, String verificationCode)
	{
		int exitCode = 0;
		if (addNewUser(profile) == 1){
			if(activateNewUser(profile.getEmail(), verificationCode) == 1){
				if(initializeWallet(profile.getEmail()) == 1){
					exitCode = 3;
				}
			}
		}
		return exitCode;
	}

	public int createReferralProfile(RegisterBean profile, String vCode, String referralId, String referreeEmail, double amount)
	{
		int exitCode = 0;
		
		if(createProfile(profile, vCode) == 1)
		{
			if  (addReferralUserEntry(referralId, referreeEmail) == 1)
			{
				if(addReferralBonus(referralId, referreeEmail, amount) == 1)
				{
					exitCode = 5;
				}
			}
		}
		return exitCode;
	}

	public int deleteProfile(String email)
	{
		int exitCode = 0;
		final String qryDeleteUser = "delete from user_details where email = '" + email + "'";
		final String qryDeleteActivate = "delete from activation where email = '" + email + "'";
		final String qryDeleteWallet = "delete from wallets where email= '" + email + "'";

		try {
			conn = DbDriver.getConnection();
			stmt = conn.createStatement();

			stmt.addBatch(qryDeleteUser);					  
			stmt.addBatch(qryDeleteActivate);
			stmt.addBatch(qryDeleteWallet);

			int[] results =	stmt.executeBatch();
			for(int i : results){exitCode += exitCode+i;}
		}catch(SQLException e)
		{ 
			e.printStackTrace();
		}
		catch(IOException e)
		{ 
			e.printStackTrace();
		}
		finally
		{
			freeResources(conn, stmt, null);
		}	
		return exitCode;
	}
	
	private void freeResources()
	{
		try{
			if(preStmt != null)
			{ preStmt.close(); }
			if (conn != null) 
			{conn.close(); }
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
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
	
	public int initializeWallet(String email)
	{
		int exitCode = 0;
		try {
			conn = DbDriver.getConnection();
			preStmt = conn.prepareStatement("insert into wallets (email,amount) values(?,?)");
			preStmt.setString(1, email);
			preStmt.setDouble(2, 0.0);
			exitCode = preStmt.executeUpdate();
		}catch(SQLException e)
		{ 
			e.printStackTrace();
		}
		catch(IOException e)
		{ 
			e.printStackTrace();
		}
		finally{
			freeResources();
		}		
		return exitCode;
	}
	
	public int resetPasswd(String passwd, String email)
	{
		int exitCode = 0;
		try {
			conn = DbDriver.getConnection();
			preStmt = conn.prepareStatement("update user_details set password=? where email=?");
			preStmt.setString(1, passwd);
			preStmt.setString(2, email);
			exitCode = preStmt.executeUpdate();
		} catch(SQLException e)
		{ 
			e.printStackTrace();
		}
		catch(IOException e)
		{ 
			e.printStackTrace();
		}
		finally
		{
			freeResources();
		}			
		return exitCode;
	}
	
	public int updateProfile(UserProfileDto profile, String email)
	{
		int exitCode = 0;
		final String updateQuery = "update user_details set"
				+ "firstname=?, lastname=?, gender=?, dateofbirth=?, "
				+ "country=?, city=?, zip=?, address=?, "
				+ "countrycode=?, phonenumber=?, "
				+ "currency=?, timezone=?, defaultlanguage=?"
				+ "where email=?";

		try {
			conn = DbDriver.getConnection();
			preStmt = conn.prepareStatement(updateQuery);
			
			preStmt.setString(1, profile.getFirstname());
			preStmt.setString(2, profile.getLastname());
			preStmt.setString(3, profile.getGender());
			preStmt.setString(4, profile.getDateofbirth());
			preStmt.setString(5, profile.getCountry());
			preStmt.setString(6, profile.getCity());
			preStmt.setInt(7, Integer.parseInt(profile.getZip()));
			preStmt.setString(8, profile.getAddress());
			preStmt.setString(9, profile.getCountrycode());
			preStmt.setLong(10, Long.parseLong(profile.getPhonenumber()));
			preStmt.setString(11, profile.getCurrency());
			preStmt.setString(12, profile.getTimezone());
			preStmt.setString(13, profile.getDefaultlanguage());
			preStmt.setString(14, email);

			exitCode = preStmt.executeUpdate();			
		}catch(SQLException e)
		{ 
			e.printStackTrace();
		}
		catch(IOException e)
		{ 
			e.printStackTrace();
		}
		finally
		{
			freeResources();
		}
		return exitCode;
	}
	
	public boolean createProfileTxn(RegisterBean userProfile, String vCode, boolean isReferral, String referralId, String refereeEmail, double amount)
	{
		boolean isCreated = false;
		PreparedStatement stmtUserDetails = null;
		PreparedStatement stmtActivation = null;
		PreparedStatement stmtWallet = null;
		PreparedStatement stmtReffererID = null;
		ResultSet rs=null;
		
		Savepoint spCreateProfile = null;
		try{			
			conn = DbDriver.getConnection();
			conn.setAutoCommit(false);
			spCreateProfile = conn.setSavepoint("createNewProfile");
			
			// Preparing the insert query for User_details table 
			stmtUserDetails = conn.prepareStatement("insert into user_details (email,password,firstname,lastname,status,time,referral_link) "
					+ "values(?,?,?,?,?,?,?)");
			stmtUserDetails.setString(1, userProfile.getEmail());
			stmtUserDetails.setString(2,userProfile.getPassword());
			stmtUserDetails.setString(3,userProfile.getFirstname());
			stmtUserDetails.setString(4,userProfile.getLastname());
			stmtUserDetails.setString(5,"Inactive");
			stmtUserDetails.setTimestamp(6,Util.getCurrentTimeStamp());
			stmtUserDetails.setString(7,Util.randomString());
			
			// Preparing the insert query for Activation table
			stmtActivation = conn.prepareStatement("insert into activation (email, verification_code) values (?,?)");
			stmtActivation.setString(1, userProfile.getEmail());
			stmtActivation.setString(2, vCode);
			
			// Preparing the insert query for Wallets table
			stmtWallet = conn.prepareStatement("insert into wallets (email,amount) values(?,?)");
			stmtWallet.setString(1, userProfile.getEmail());
			stmtWallet.setDouble(2, 0.0);
			
			stmtUserDetails.executeUpdate();
			stmtActivation.executeUpdate();
			stmtWallet.executeUpdate();
			
			// Committing last 3 insert statements
			conn.commit();
			
			if (isReferral)
			{
				stmtReffererID=conn.prepareStatement("select email from user_details where referral_link=?");
				stmtReffererID.setString(1, referralId);
				rs= stmtReffererID.executeQuery();
				if(rs.next())
				{
					createReferralProfileTxn(rs.getString("email"),userProfile.getEmail(),amount, spCreateProfile);
				}
			}
			
		}
		
		catch(SQLException e)
		{ 
			try {
				conn.rollback(spCreateProfile);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		catch(ParseException e)
		{ 
			try {
				conn.rollback(spCreateProfile);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		catch(IOException e)
		{ 
			try {
				conn.rollback(spCreateProfile);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		
		finally
		{
//			freeResources(conn,stmtUserDetails,null);
//			freeResources(conn,stmtActivation,null);
//			freeResources(conn,stmtWallet,null);
//			freeResources(conn,stmtReffererID,rs);
			freeResources();
			isCreated = true;
		}
		
		return isCreated;
	}
	
	public void createReferralProfileTxn(String referralId, String refereeEmail, double amount, Savepoint rollUpto)
	{
		System.out.println("Referral Method");
		PreparedStatement stmtReferralList = null;
		PreparedStatement stmtReferralProcess = null;
		
		try{
			Connection conn=DbDriver.getConnection();
			// Preparing the insert query for Referral_list table
			stmtReferralList = conn.prepareStatement("insert into referral_list (referrer_id,refer_id,status,time) values(?,?,?,?)");
			stmtReferralList.setString(1, referralId);
			stmtReferralList.setString(2, refereeEmail);
			stmtReferralList.setString(3, "Referred");
			stmtReferralList.setTimestamp(4, Util.getCurrentTimeStamp());
			
			// Preparing the insert query for Referral_process table
			stmtReferralProcess = conn.prepareStatement("insert into referral_process (referrer_id,refer_id,type,time,amount) values(?,?,?,?,?)");
			stmtReferralProcess.setString(1, referralId);
			stmtReferralProcess.setString(2, refereeEmail);
			stmtReferralProcess.setString(3, "Registration");
			stmtReferralProcess.setTimestamp(4, Util.getCurrentTimeStamp());
			stmtReferralProcess.setDouble(5, amount);
			
			stmtReferralList.execute();
			stmtReferralProcess.execute();
		}
		catch(SQLException e)
		{ 
			try {
				conn.rollback(rollUpto);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		catch(ParseException e)
		{ 
			try {
				conn.rollback(rollUpto);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} catch (IOException e) {
			try {
				conn.rollback(rollUpto);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		System.out.println("Referral Method Exit");
	}
	
}
