package com.btx.dao;

/***
 * Refactored by S.K.Venkat on 20-Dec-2015
 ***/

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;

import com.btx.dto.WalletBean;
import com.btx.util.DbDriver;
import com.btx.util.Util;

public class TransactionsDao {

	private static Connection conn = null;
	private static PreparedStatement preStmt = null;

	public int addTransaction(WalletBean wallet, String email, String txnType)
	{		
		try {
			conn = DbDriver.getConnection();	
			preStmt = conn.prepareStatement("insert into operations (email,amount,currency,type,time) values(?,?,?,?,?)");
			preStmt.setString(1, email);
			preStmt.setDouble(2, Double.parseDouble(wallet.getAmount()));
			preStmt.setString(3, wallet.getCurrency());
			preStmt.setString(4, txnType); //"Deposit" or "Withdrawal"
			preStmt.setTimestamp(5, Util.getCurrentTimeStamp());

			return preStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 catch (IOException e) {
				e.printStackTrace();
			}
		 catch (NumberFormatException e) {
				e.printStackTrace();
			}
		 catch (ParseException e) {
				e.printStackTrace();
			}
		finally
		{
			try {
				preStmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return 0;
	}

	public int updateWallet(WalletBean wallet, String email, String txnType)
	{
		double wdAmount = Double.parseDouble(wallet.getAmount());
		String updateQuery = "";

		if (txnType.equals("Deposit"))
		{
			updateQuery =  "update wallets set amount = amount + ? where email=?";
		}
		else if (txnType.equals("Withdrawl"))
		{
			updateQuery =  "update wallets set amount = amount - ? where email=?";
		}

		try {
			conn = DbDriver.getConnection();
			preStmt = conn.prepareStatement(updateQuery);
			preStmt.setDouble(1, wdAmount);
			preStmt.setString(2, email);

			return preStmt.executeUpdate();
		} catch (IOException e) {
			e.printStackTrace();
		}
		 catch (SQLException e) {
				e.printStackTrace();
			}
		finally
		{
			try {
				preStmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return 0;
	}
}
