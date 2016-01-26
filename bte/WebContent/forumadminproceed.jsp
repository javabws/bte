

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.btx.Process.WalletProcess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Proceed</title>
</head>
<body>
<%
      
			//String submit=(String) request.getParameter("submit");
String id=(String) request.getParameter("id");
			
 		int k=0;

	Connection c=DbDriver.getConnection();
	PreparedStatement p=null;
	p=c.prepareStatement("update forum_posts set status=? where id=?");
	p.setString(1,"proceed" );
	p.setString(2, id);
	k=p.executeUpdate();
 
      
      %>
<jsp:forward page="forumadmin"></jsp:forward>
</body>
</html>