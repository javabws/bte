<%@page import="com.btx.thread.ExecuteThread"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    ExecuteThread.stopExecutor();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stop Task Executor</title>
</head>
<body>
Task Executor Stopped....

<br>
<br>
<a href="startexecutor.jsp">Start Task Executor</a>
</body>
</html>