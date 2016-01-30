package com.btx.Process;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.sql.Statement;

import com.btx.Bean.PersonalinfoBean;
import com.btx.driver.DbDriver;



//---Class is for processing the forms data from presonalinfo.jsp page----//
public class PerProcess {

	//---Declarations---//
	private Connection c=null;
	private PreparedStatement p=null;
	
	//----Method is using to process the first tab form in presonalinfo.jsp page-----//
	public int firstTab(PersonalinfoBean pe,String email)  {
		
		String country="";
		if(pe.getCountry().equals("-1"))
		{
			
		}
		else
		{
			country=pe.getCountry();
		}
		int i = 0;
		Savepoint savepoint=null;
		
		try {
			c=DbDriver.getConnection();
			c.setAutoCommit(false);
			savepoint=c.setSavepoint("firsttab");
			
			p=c.prepareStatement("update user_details set firstname=?,lastname=?,gender=?,dateofbirth=?,country=?,city=?,zip=?,address=? where email=?");
			p.setString(1, pe.getFirstname());
			p.setString(2, pe.getLastname());
			p.setString(3, pe.getGender());
			p.setString(4, pe.getDateofbirth());
			p.setString(5, country);
			p.setString(6, pe.getCity());
			p.setInt(7, Integer.parseInt(pe.getZip()));
			p.setString(8, pe.getAddress());
			p.setString(9,email);
			i=p.executeUpdate();
			
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
		return i;
		
	}
	
	//----Method is using to process the second tab form in presonalinfo.jsp page-----//
public int secondTab(PersonalinfoBean pe,String email)  {
		
	int i = 0;
	Savepoint savepoint=null;
	
	try {
	c=DbDriver.getConnection();
	c.setAutoCommit(false);
	savepoint=c.setSavepoint("secondtab");
	
	p=c.prepareStatement("update user_details set countrycode=?,phonenumber=? where email=?");
	p.setString(1, pe.getCountrycode());
	p.setLong(2, Long.parseLong(pe.getPhonenumber()));
	p.setString(3, email);
	i=p.executeUpdate();
	
	

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
	return i;
		
	}

//----Method is using to process the third tab form in presonalinfo.jsp page-----//
public int thirdTab(PersonalinfoBean pe,String email)  {
	
	int i = 0;
	Savepoint savepoint=null;

	try {
		c=DbDriver.getConnection();
		c.setAutoCommit(false);
		savepoint=c.setSavepoint("thirdtab");
		p=c.prepareStatement("update user_details set password=? where email=?");
		p.setString(1, pe.getNewpassword());
		p.setString(2, email);
		i=p.executeUpdate();
		//	p=c.prepareStatement("update login_details set password=? where email=?");
		//	p.setString(1, pe.getNewpassword());
		//	p.setString(2, email);
		//	i+=p.executeUpdate();
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
	return i;
	
}

//----Method is using to process the fourth tab form in presonalinfo.jsp page-----//
public int fourthTab(PersonalinfoBean pe,String email) throws IOException, SQLException {
	
	int i = 0;
	Savepoint savepoint=null;

	try {
		c=DbDriver.getConnection();
		c.setAutoCommit(false);
		savepoint=c.setSavepoint("fourthtab");
		p=c.prepareStatement("update user_details set currency=?,timezone=?,defaultlanguage=? where email=?");
		p.setString(1, pe.getCurrency());
		p.setString(2, pe.getTimezone());
		p.setString(3, pe.getDefaultlanguage());
		p.setString(4, email);
		i=p.executeUpdate();
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
	return i;
	
}
private void freeResources()
{
	try{
		if(p != null)
		{ p.close(); }
		if (c != null) 
		{c.close(); }
		
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
