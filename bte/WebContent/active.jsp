<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<%
String id=(String)request.getParameter("un");
System.out.println(id);
String status="";

Connection c=DbDriver.getConnection();

PreparedStatement p=c.prepareStatement("select status from login_details where email=?");
p.setString(1, id);
ResultSet r=p.executeQuery();
if(r.next()){
	status=r.getString("status");
	System.out.println(status);
}
p=c.prepareStatement("update user_details set status=? where email=?");

if(status.equals("Active")){
	
	p.setString(1, "Inactive");
	p.setString(2, id);
	p.execute();
	System.out.println("inactive");
	out.print("INACTIVE");
}
if(status.equals("Inactive"))
{
	
	p.setString(1, "Active");
	p.setString(2, id);
	p.execute();
	System.out.println("active");
	out.print("ACTIVE");
}

%>