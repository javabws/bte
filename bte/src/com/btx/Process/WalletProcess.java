package com.btx.Process;
  
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import com.btx.Bean.WalletBean;
import com.btx.driver.DbDriver;

public class WalletProcess {
	
	
	//----Declarations---//
	private Connection c=null;
	private PreparedStatement p=null;
	
	
	//----deposit the amount to wallet for particular user-----//
	public int deposit(WalletBean a,String email) throws IOException, SQLException {
		
		double amount=0;
		c=DbDriver.getConnection();
		p=c.prepareStatement("select * from wallets where email=?");
		p.setString(1, email);
		ResultSet r=p.executeQuery();
		if(r.next()){
			amount=r.getDouble("amount");
		}
		
		p=c.prepareStatement("update wallets set amount=? where email=?");
		p.setDouble(1, amount+Double.parseDouble(a.getAmount()));
		p.setString(2, email);
		int i=p.executeUpdate();
		
		p=c.prepareStatement("insert into operations (email,amount,currency,type,time,transaction_id) values(?,?,?,?,?,?)");
		p.setString(1, email);
		p.setDouble(2, Double.parseDouble(a.getAmount()));
		p.setString(3, a.getCurrency());
		p.setString(4, "Deposit");
		//Date date=getCurrentDatetime();
		p.setTimestamp(5, getCurrentTimeStamp());
		p.setString(6, a.getTransaction_id());
		i+=p.executeUpdate();
		
		return i;
		
	}
	
	
	//------withdrawal the amount from particular user's wallet------//
public int withdrawal(WalletBean a,String email) throws IOException, SQLException {
		
		double amount=0.0;
		c=DbDriver.getConnection();
		p=c.prepareStatement("select * from wallets where email=?");
		p.setString(1, email);
		ResultSet r=p.executeQuery();
		if(r.next()){
			amount=r.getDouble("amount");
		}
		
		p=c.prepareStatement("update wallets set amount=? where email=?");
		p.setDouble(1, amount-Double.parseDouble(a.getAmount()));
		p.setString(2, email);
		int i=p.executeUpdate();
		
		p=c.prepareStatement("insert into operations (email,amount,currency,type,time) values(?,?,?,?,?)");
		p.setString(1, email);
		p.setDouble(2, Double.parseDouble(a.getAmount()));
		p.setString(3, a.getCurrency());
		p.setString(4, "Withdrawal");
		//Date date=getCurrentDatetime();
		p.setTimestamp(5, getCurrentTimeStamp());
		i+=p.executeUpdate();
		
		return i;
		
	}

//----payment to users----//
public int Paymentdetails(String remail,String rname,String rwalletId,String raccountID,String rfees,String rdate,String rinvoice,String samount,String scomment,String sid,String scurrency,String snet) throws IOException, SQLException {

	c=DbDriver.getConnection();
	p=c.prepareStatement("insert into withdrawal_details (r_email,r_name,r_walletID,r_accountID,r_fees,r_date,r_invoice,s_amount,s_comment,s_id,s_currency,s_net) values(?,?,?,?,?,?,?,?,?,?,?,?)");
	p.setString(1, remail);
	p.setString(2, rname);
	p.setString(3, rwalletId);
	p.setString(4, raccountID);
	p.setString(5, rfees);
	p.setString(6, rdate);
	p.setString(7, rinvoice);
	p.setString(8, samount);
	p.setString(9, scomment);
	p.setString(10, sid);
	p.setString(11, scurrency);
	p.setString(12, snet);


	//Date date=getCurrentDatetime();
	//p.setTimestamp(5, getCurrentTimeStamp());
	int j=p.executeUpdate();
	return j;
}


//-----insert the withdrawal request from user to DB-----//
public int withdrawrequest(String okpay_id,String email,String reqamt) throws IOException, SQLException {

	c=DbDriver.getConnection();
	String status="pending";

	double amount1=0;
	c=DbDriver.getConnection();
	p=c.prepareStatement("select * from wallets where email=?");
	p.setString(1, email);
	ResultSet r=p.executeQuery();
	if(r.next()){
		amount1=r.getDouble("amount");
	}
	p=c.prepareStatement("insert into withdrawal_request (user_email,okpay_id,available_balance,requested_amount,status,requested_time) values(?,?,?,?,?,?)");
	p.setString(1, email);
	p.setString(2, okpay_id);
	p.setDouble(3,amount1);
	p.setString(4, reqamt);
	p.setString(5, status);

	//Date date=getCurrentDatetime();
	p.setTimestamp(6, getCurrentTimeStamp());
	int j=p.executeUpdate();
	return j;
}


//------update the withdrawal success status to DB-----//
public int withdrawalSuccess(String id) throws IOException, SQLException {
	
	int idd=Integer.parseInt(id);
	int i=0;
	c=DbDriver.getConnection();
	p=c.prepareStatement("update withdrawal_request set status=? where id=?");
	p.setString(1, "Success");
	p.setInt(2, idd);
	i=p.executeUpdate();
	return i;
	
	
}

//------Forum message request is inserted to DB------//
public int forumreq(String user,String post,String id, String fn) throws IOException, SQLException, ParseException {

	c=DbDriver.getConnection();
	String status="Waiting";


	c=DbDriver.getConnection();


	p=c.prepareStatement("insert into forum_posts (username,posts,post_time,status,discussion_id,firstname) values(?,?,?,?,?,?)");
	p.setString(1, user);
	p.setString(2, post);
	p.setTimestamp(3,getCurrentTimeStamp());
	p.setString(4, status);
	p.setString(5, id);
	p.setString(6, fn);

	//Date date=getCurrentDatetime();

	int k=p.executeUpdate();
	return k;
}

//---getting current date----//
	public java.sql.Date getCurrentDatetime() {
	    java.util.Date today = new java.util.Date();
	    return new java.sql.Date(today.getTime());
	}

	//---getting current time stamp----//
	public  java.sql.Timestamp getCurrentTimeStamp() {

		java.util.Date today = new java.util.Date();
		return new java.sql.Timestamp(today.getTime());

	}
}
