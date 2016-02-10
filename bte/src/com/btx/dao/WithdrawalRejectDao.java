package com.btx.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;

import com.btx.driver.DbDriver;

public class WithdrawalRejectDao {
	private Connection c=null;
	private PreparedStatement p=null;
	private ResultSet r=null;
	private  Savepoint savepoint=null;

	public  String withdrawalRejectUpdate(int id) {

		String msg="Something went wrong";


		try {
			c=DbDriver.getConnection();

			c.setAutoCommit(false);
			savepoint=c.setSavepoint("withdrawalRequestreject");
			p=c.prepareStatement("update withdrawal_request set status=? where id=?");
			p.setString(1, "Rejected");
			p.setInt(2, id);
			int i=p.executeUpdate();
			c.commit();
			if(i>0)
			{
				msg="Updated";
			}
			else {
				msg="Not updated";
			}
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

		return msg;

	}

}
