<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@page import="com.btx.Bean.WalletBean"%>
<%@page import="com.btx.Process.WalletProcess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


UserBean u=null;
if(session.getAttribute("userBean")!=null)
{
u=(UserBean)session.getAttribute("userBean");
}
else
{
%>
<jsp:forward page="expire"></jsp:forward>
<%
}
		
	
		
String user=request.getParameter("user");
String post=request.getParameter("post");
String id=request.getParameter("id");
String fn=request.getParameter("firstname");
WalletProcess w=new WalletProcess();
w.forumreq(user,post,id,fn);
%>
<jsp:forward page="userforum">
<jsp:param value="Comment Posted.\nIt will displayed soon." name="msg"/>
<jsp:param value="1" name="n"/>
</jsp:forward>
</body>
</html>