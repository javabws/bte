package com.btx.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.sql.Statement;
import java.util.LinkedList;

import com.btx.Bean.WithdrawalRequest;
import com.btx.driver.DbDriver;

public class WithdrawalRequestDao {
	
	private String sql="select * from withdrawal_request where user_email=? order by requested_time desc limit 100";
	private Connection c=null;
	private PreparedStatement p=null;
	private ResultSet r=null;
	private WithdrawalRequest withdrawalRequest=null;
	private  Savepoint savepoint=null;
	private LinkedList<WithdrawalRequest> arrayList=null;
	
	public WithdrawalRequestDao() {

		arrayList=new LinkedList<WithdrawalRequest>();
	}
	
	public LinkedList<WithdrawalRequest> getWithdrawalRequests(String email) {
		  
		  
		  try {
			  c=DbDriver.getConnection();
			  c.setAutoCommit(false);
			  savepoint=c.setSavepoint("getwithdrawalRequest");
			  p=c.prepareStatement(sql);
			  p.setString(1, email);
			  r=p.executeQuery();
			  while(r.next())
			  {
				  
				  withdrawalRequest=new WithdrawalRequest();
				  withdrawalRequest.setId(r.getInt("id"));
				  withdrawalRequest.setOkpay_id(r.getString("okpay_id"));
				  withdrawalRequest.setRequested_amouunt(r.getString("requested_amount"));
				  withdrawalRequest.setStatus(r.getString("status"));
				  withdrawalRequest.setRequested_time(r.getDate("requested_time")+" "+r.getTime("requested_time"));
				  arrayList.add(withdrawalRequest);
			  }
			  c.commit();
		  } catch (IOException e) {
			  try {
				c.rollback(savepoint);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			  e.printStackTrace();
		  } catch (SQLException e) {
			  try {
				c.rollback(savepoint);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			  e.printStackTrace();
		  }
		  finally
		  {
			  freeResources();
		  }
		return arrayList;
		
	}
	
	private void freeResources()
	{
		try{
			if(p != null)
			{ p.close(); }
			if (c != null) 
			{c.close(); }
			if (r != null) 
			{r.close(); }
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@SuppressWarnings("unused")
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


}
