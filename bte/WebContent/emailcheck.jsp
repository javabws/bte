<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<%	
	String un=(String)request.getParameter("un");
	

	String result="";
	
	Connection con=DbDriver.getConnection();
	PreparedStatement p=con.prepareStatement("select email from user_details where email=?");
	p.setString(1, un);
	
	ResultSet r=p.executeQuery();
	if(r.next()){
		

			result="SUCCESS";
		%>
		
		<%
		
		
	}else{
		result="ERROR";
	}
	
	out.print(result);
%>