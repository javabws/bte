<%@page import="com.btx.driver.DbSeession"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error"%>
<%
// 	Connection c=DbSeession.getSessionConnection();
// PreparedStatement p=c.prepareStatement("delete from sessions where session_id=?");
// p.setString(1, session.getId());
// boolean a=p.execute();

session.invalidate();
%>
<jsp:forward page="home">
<jsp:param value="1" name="n"/>
</jsp:forward>