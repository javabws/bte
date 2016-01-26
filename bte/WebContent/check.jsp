<%@page import="com.mysql.jdbc.exceptions.jdbc4.MySQLNonTransientConnectionException"%>
<%@page import="com.btx.Process.UTCTime"%>
<%@page import="com.mysql.jdbc.exceptions.jdbc4.CommunicationsException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.btx.Process.LoginProcess"%>
<%@page import="com.btx.driver.DbSeession"%>
<%@page import="com.btx.Process.ByteArrayConvert"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page errorPage="error" %>
<%	

String result="LOGEDIN";
if(session.getAttribute("userBean")==null)
{
	String un=(String)request.getParameter("un");
	String pw=(String)request.getParameter("pw");
	String re=(String)request.getParameter("r");
	
	UserBean u=null;
	try
	{
	u=LoginProcess.checkLogin(un, pw);
	}
	catch(CommunicationsException e)
	{
		System.out.println("Communication Error...");
		DbDriver.getConnection();
		u=LoginProcess.checkLogin(un, pw);
	}
	catch(MySQLNonTransientConnectionException  e)
	{
		System.out.println("MySQLNonTransientConnectionException Communication Error...");
		DbDriver.getConnection();
		u=LoginProcess.checkLogin(un, pw);
	}
	
	if(u!=null){
		
		
		session.setAttribute("userBean",u);
			
			if(re.equals("forum"))
			{
				%>
				<jsp:forward page="userforum">
				<jsp:param value="1" name="n"/>
				</jsp:forward>
				
				<%
			}
			else if(re.equals("strategies"))
			{
				int i=Integer.parseInt((String)request.getParameter("st"));
				%>
				<jsp:forward page="strategy.jsp">
				<jsp:param value="<%=i %>" name="st"/>
				<jsp:param value="1" name="n"/>
				</jsp:forward>
				<%
			}
			else 
			{
			%>
			
			<jsp:forward page="usertrade">
			<jsp:param value="1" name="n"/>
			</jsp:forward>
			<%
			}
		

		
		
	}else{
		%>
		<jsp:forward page="login_register">
		<jsp:param value="Incorrect Username or Password" name="msg"/>
		</jsp:forward>
		<%
	}

}
	
	
%>

		<jsp:forward page="login_register">
		<jsp:param value="Logout existing account to Login <a href='usertrade'>Go back to Trade Page</a>" name="msg"/>
		</jsp:forward>
		