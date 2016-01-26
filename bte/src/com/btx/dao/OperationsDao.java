package com.btx.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;

import com.btx.driver.DbDriver;
import com.btx.dto.OperationsDto;

public class OperationsDao {
	
	private String sql="select * from operations where email=? order by time desc limit 100";
	private Connection c=null;
	private PreparedStatement p=null;
	private ResultSet r=null;
	private OperationsDto operationsDto=null;
	private  Savepoint savepoint=null;
	private LinkedList<OperationsDto> arrayList=null;
	
	public OperationsDao() {

		arrayList=new LinkedList<OperationsDto>();
	}
	
	public LinkedList<OperationsDto> getOperationsDetails(String email,String range,String operation) {
		
		
		  if(range!=null)
          {
          	String[] re=range.split(" to ");
          	
      		sql="select * from operations where email=? and time between '"+re[0]+" 00:00:00' and '"+re[1]+" 23:59:59' order by time desc limit 100";
      		
      		if(operation!=null)
      		{
      			if(operation.equals("Deposit"))
      			{
      				sql="select * from operations where email=? and type='Deposit' and time between '"+re[0]+" 00:00:00' and '"+re[1]+" 23:59:59' order by time desc limit 100";
      			}
      			else if(operation.equals("Withdraw"))
      			{
      				sql="select * from operations where email=? and type='Withdrawal' and time between '"+re[0]+" 00:00:00' and '"+re[1]+" 23:59:59' order by time desc limit 100";
      			}
      		}
          }
		  
		  try {
			  c=DbDriver.getConnection();
			  c.setAutoCommit(false);
			  savepoint=c.setSavepoint("getoperations");
			  p=c.prepareStatement(sql);
			  p.setString(1, email);
			  r=p.executeQuery();
			  while(r.next())
			  {
				  
				  operationsDto=new OperationsDto();
				  operationsDto.setOperation_id(r.getInt("operation_id"));
				  operationsDto.setAmount(r.getInt("amount"));
				  operationsDto.setCurrency(r.getString("currency"));
				  operationsDto.setType(r.getString("type"));
				  operationsDto.setTime(r.getDate("time")+" "+r.getTime("time"));
				  arrayList.add(operationsDto);
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
