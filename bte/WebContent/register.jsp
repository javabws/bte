<%@page import="com.btx.dao.RegisterUserDao"%>
<%@page import="com.btx.Process.RegisterProcess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error"%>
<%-- <jsp:useBean id="r" class="com.btx.Bean.RegisterBean"></jsp:useBean> --%>
<jsp:useBean id="r" class="com.btx.dto.RegisterBean"></jsp:useBean> 
<jsp:setProperty property="*" name="r" />
<%
	String serverpath = request.getScheme() + "://"
			+ request.getServerName() + "" + request.getContextPath() + "/activate";
// 	RegisterProcess rp = new RegisterProcess();
// 	boolean re = rp.registerUser(r, serverpath);
// 	String n="1";

	RegisterUserDao registerUserDao=new RegisterUserDao();
	boolean re=registerUserDao.registerUser(r, serverpath,false,"","");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>BTX | Register</title>
 
<jsp:include page="head.jsp"></jsp:include>
<link href="assets/css/coming-soon-404.css" rel="stylesheet">

</head>
<body>
	<div class="wrapper-table">
		<div class="wrapper-table-cell">
			<div id="content">
				<h3 class="title-404 text-theme-lg">
					<%
						if (re) {
					%>
					Registered !<%
						} else {
					%>
					Sorry !<%
						}
					%>
				</h3>

				<p class="text-theme-lg subtitle-404">
					<%
						if (re) {
					%>
					Successfully Registered and the Verification mail is sent to you <br>Click
					the verification link in the mail to activate your account<%
						} else {
					%>Something
					went wrong<br> Try Again....<%
						}
					%>
				</p>
				<a href="home"
					class="btn btn-sm btn-primary btn-rounded text-theme-lg"><i
					class="fa fa-chevron-left"></i>Back to Homepage</a>
			</div>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="assets/js/jquery.backstretch.js"></script>
	<script src="assets/js/page/page.404.js"></script>

</body>
</html>