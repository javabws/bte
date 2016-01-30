<%@page import="com.btx.thread.ExecuteThread"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    ExecuteThread.startExecutr();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Task Executor</title>
</head>
<body>
Task Executor Started....

<br>
<br>
<a href="stopexecutor.jsp">Stop Task Executor</a>
</body>
</html>