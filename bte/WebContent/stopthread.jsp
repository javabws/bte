<%@page import="com.btx.thread.ExecuteThread"%>
<%@page import="com.btx.thread.USDJPYThread"%>
<%@page import="com.btx.thread.USDCHFThread"%>
<%@page import="com.btx.thread.GBPUSDThread"%>
<%@page import="com.btx.thread.EURJPYThread"%>
<%@page import="com.btx.thread.EURUSDThread"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    
//     EURJPYThread eurjpyThread=new EURJPYThread();
//     eurjpyThread.threadStop();
//     EURUSDThread eurusdThread=new EURUSDThread();
//     eurjpyThread.threadStop();
//     GBPUSDThread gbpusdThread=new GBPUSDThread();
//     gbpusdThread.threadStop();
//     USDCHFThread usdchfThread=new USDCHFThread();
//     usdchfThread.threadStop();
//     USDJPYThread usdjpyThread=new USDJPYThread();
//     usdjpyThread.threadStop();
ExecuteThread.stopThread();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stop</title>
</head>
<body>
<h1>Stopped</h1>
<br><br>
<a href="startthread.jsp">Start thread</a>
</body>
</html>