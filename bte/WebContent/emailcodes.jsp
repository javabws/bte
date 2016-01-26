<%@page import="com.sun.jersey.api.client.ClientHandlerException"%>
<%@page import="java.net.ConnectException"%>
<%@page import="org.apache.commons.lang3.RandomStringUtils"%>
<%@page import="com.btx.Process.EmailProcess"%>
<%@page import="com.sun.jersey.api.client.ClientResponse"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
out.println("sending.....");%><br><%

try{

ClientResponse res=EmailProcess.SendVerificationCode(RandomStringUtils.random(20, true, true), "sangeethkumar@bluewhalesolutions.com", "http://google.com");
out.println("--------------Codes-----------------");%><br><%
out.println("Status code: "+res.getClientResponseStatus().getStatusCode());%><br><%
out.println("Status INT: "+res.getStatus());%><br><%
out.println("status Info code: "+res.getStatusInfo().getStatusCode());%><br><%
out.println("status Info ReasonPhrase: "+res.getStatusInfo().getReasonPhrase());%><br><%
out.println("status Info String: "+res.getStatusInfo().toString());%><br><%

out.println("--------------Codes-----------------");%><br><%

out.println("Sent!");%><br><%
}
catch(ClientHandlerException e){
	out.println(e.getMessage());
}
%>
</body>
</html>