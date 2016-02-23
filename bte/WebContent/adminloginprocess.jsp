<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.btx.Bean.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error"%>

<%
	String un = (String) request.getParameter("username");
	String pw = (String) request.getParameter("password");
	String result = "";
	AdminBean u = new AdminBean();
	Connection con = DbDriver.getConnection();
	PreparedStatement p = con.prepareStatement("select * from admin_login where username=? and password=?");
	p.setString(1, un);
	p.setString(2, pw);
	ResultSet r = p.executeQuery();
	if (r.next()) {

		u.setName(r.getString("name"));
		u.setUsernme(r.getString("username"));
		u.setPassword(r.getString("password"));
		u.setType(r.getString("type"));
		session.setAttribute("adminBean", u);
		
		if(u.getType().equals("Master"))
		{
		
%>
<jsp:forward page="admindashboard"></jsp:forward>
<%
		}
		else if(u.getType().equals("Slave"))
		{
		
%>
<jsp:forward page="adminuser"></jsp:forward>
<%
		}
	} else {
%>
<jsp:forward page="adminlogin">
	<jsp:param value="Incorrect Username or Password" name="msg" />
</jsp:forward>
<%
	}

	out.print(result);
%>