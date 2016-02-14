package com.btx.calculation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbDriver
{
  private static Connection connection = null;
  
  public static Connection getConnection()
    throws IOException
  {
//    Properties props = new Properties();
////    if (connection != null) {
////      return connection;
////    }
//    props.load(DbDriver.class.getResourceAsStream("database.properties"));
//    
//    String dbname = props.getProperty("dbname");
//    String dbUrl = props.getProperty("url") + dbname;
//    
//    String user = props.getProperty("username");
//    
//    String password = props.getProperty("password");
//    try
//    {
//      Class.forName("com.mysql.jdbc.Driver");
//      
//      connection = DriverManager.getConnection(dbUrl+"?user="+user+"&password="+password+"&autoReconnect=true");
//      System.out.println("DB url: " + dbUrl);
//      System.out.println("Username: " + user);
//      System.out.println("Password: " + password);
//    }
//    catch (ClassNotFoundException e)
//    {
//      e.printStackTrace();
//    }
//    catch (SQLException e)
//    {
//      e.printStackTrace();
//    }
//    return connection;
	  return com.btx.driver.DbDriver.getConnection();
  }
  //-----------------------------------------//
  
 
}
