package com.btx.thread;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CalculateMethods {
	
	private static PreparedStatement st = null;
	private static Connection conn = null;
	private static ResultSet rs;
	
	
	
		private static double walletamount=0.0;
		synchronized public static void updateWallet(String type,double amount,String email) throws SQLException
		{
			try {
				conn=DbDriver.getConnection();
			} catch (IOException e) {
				e.printStackTrace();
			}
			st = conn
					.prepareStatement("select amount from wallets where email=?");
			st.setString(1, email);
			rs=st.executeQuery();
			if(rs.next())
			{
				walletamount=rs.getDouble("amount");
				System.out.println(email +"Wallet amount: "+walletamount);
			}
			if(type.equals("lost") && walletamount!=0)
			{
				walletamount=walletamount-amount;
			}
			else if(type.equals("won") && walletamount!=0)
			{
				walletamount=walletamount+amount;
			}
			else if(type.equals("refer") && walletamount!=0)
			{
				walletamount=walletamount+amount;
				System.out.println("Wallet Refer: "+walletamount);
				System.out.println("Wallet Refer amount: "+amount);
			}
			System.out.println(email +"Wallet amount: "+walletamount);
			
			st = conn
					.prepareStatement("update wallets set amount=? where email=?");
			st.setDouble(1, walletamount);
			st.setString(2, email);
			st.executeUpdate();
			walletamount=0.0;
			amount=0.0;
		}
		
		
		
		private static double companywalletamount=0.0;
		synchronized public static void updateCompanyWallet(String type,double amount,String email) throws SQLException
		{
			try {
				conn=DbDriver.getConnection();
			} catch (IOException e) {
				e.printStackTrace();
			}
			st = conn
					.prepareStatement("select amount from company_wallet where id=?");
			st.setInt(1, 1);
			rs=st.executeQuery();
			if(rs.next())
			{
				companywalletamount=rs.getDouble("amount");
				System.out.println("Company Wallet Amount BEFORE: "+companywalletamount);
			}
			
			System.out.println("Company Wallet: "+amount);
			companywalletamount=companywalletamount+amount;
			System.out.println("Company Wallet Amount AFTER: "+companywalletamount);
			
			st = conn
					.prepareStatement("update company_wallet set amount=? where id=?");
			st.setDouble(1, companywalletamount);
			st.setInt(2, 1);
			st.executeUpdate();
			
			st = conn
					.prepareStatement("insert into company_wallet_history (amount,email,type) values(?,?,?)");
			st.setDouble(1, amount);
			st.setString(2, email);
			st.setString(3, type);
			st.executeUpdate();
			
			companywalletamount=0.0;
			amount=0.0;
		}
		
		
		
	

	
	synchronized public static int getPercent()  //------This method is used to get the profit percentage for profit calculation to traders
	{
		try {
			conn=DbDriver.getConnection();
		} catch (IOException e) {
			e.printStackTrace();
		}
		int percentage=0;
		try {
			st = conn
					.prepareStatement("select percentage from profit where id=?");
			st.setInt(1, 1);
			rs=st.executeQuery();
			if(rs.next())
			{
				percentage=rs.getInt("percentage");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return percentage;
		
		
	}
	
	
	synchronized public static String getReferrer(String email) throws SQLException
	{
		try {
			conn=DbDriver.getConnection();
		} catch (IOException e) {
			e.printStackTrace();
		}
		String user="",referrer="";
		user=email;
		st = conn
				.prepareStatement("select referrer_id from referral_list where refer_id=?");
		st.setString(1, user);
		rs=st.executeQuery();
		if(rs.next())
		{
			referrer=rs.getString("referrer_id");
		}
		
		return referrer;
	}

}
