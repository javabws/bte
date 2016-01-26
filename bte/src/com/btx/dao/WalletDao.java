package com.btx.dao;

/***
 * Refactored by S.K.Venkat on 20-Dec-2015
 ***/

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;

import com.btx.dto.WalletBean;

public class WalletDao extends TransactionsDao
{
	public int deposit(WalletBean wallet,String email, String txnType) throws IOException, SQLException, ParseException {
		int rowsUpdated = updateWallet(wallet, email, "Deposit");
		rowsUpdated += addTransaction(wallet, email, "Deposit");

		return rowsUpdated;
	}


	public int withdrawal(WalletBean wallet,String email, String txnType) throws IOException, SQLException, ParseException 
	{
		int rowsUpdated = updateWallet(wallet, email, "Withdrawal");
		rowsUpdated += addTransaction(wallet, email, "Withdrawal");

		return rowsUpdated;		
	}
}
