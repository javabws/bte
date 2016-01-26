<%@page import="com.btx.dao.RegisterUserDao"%>
<%@page import="com.btx.Process.RegisterProcess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error"%>
<jsp:useBean id="a" class="com.btx.dto.RegisterBean"></jsp:useBean>
<jsp:setProperty property="*" name="a" />

<%
	String r = (String) request.getParameter("r");

	String submit = (String) request.getParameter("submit");
	
	RegisterProcess per = new RegisterProcess();
	RegisterUserDao registerUserDao=new RegisterUserDao();
	String msg = "";
	int i = 0;
	if (submit != null) {

		if (!per.checkUser(a.getEmail())) {
			String serverpath = request.getScheme() + "://"
					+ request.getServerName() + ":"
					+ request.getServerPort() + ""
					+ request.getContextPath() + "/activate";
			
			if (submit.equals("Register")) {
// 				i = per.registerReferal(a, serverpath, r);
				boolean re=registerUserDao.registerUser(a, serverpath, true, r, "");
// 				if(i==0){
				if(!re){
					msg="Not Registered. Sorry, something went wrong";
				}
				else if(re){
					%>
					<jsp:forward page="referralsuccess">
					<jsp:param value="1" name="n"/>
					</jsp:forward>
					<%
				}

			}
		}

		else {
			msg = "Email is already registered. Use any other email";
		}
	}
%>
<!DOCTYPE html>
<html lang="en">

<head>

<title>BTX | Referral Registration</title>
<jsp:include page="head.jsp"></jsp:include>
</head>

<body>
	<div class="wrapper-body">

		<!-- NAVBAR -->
		<div id="header">
			<!--     <nav id="nav" class="navbar navbar-default navbar-static-top"> -->
			<%--    	 <jsp:include page="menu.jsp"></jsp:include> --%>
			<!--    	 </nav> -->
		</div>
		<!-- NAVBAR END -->

		<!-- SECTION HEADING -->
		<!--===============================================================-->
		<div class="section-heading-page">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h1 class="heading-page text-center-xs">Binary Trade Exchange</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb text-right text-center-xs">
							<li><a href="home">Home</a></li>

							<li class="active">Referral Registration</li>
						</ol>
					</div>
				</div>
			</div>
		</div>

		<!--SECTION -->
		<!--===============================================================-->
		<div class="section section-xs section-bottom">
			<div class="container">
				<div class="row mb">
					<div class="col-md-6 col-sm-offset-3">
					<h3 class="title-sm text-theme text-theme-sm active" ><%=msg %></h3>
						<h3 class="title-md hr-left text-theme">Registration</h3>
						<div class="panel panel-primary text-theme">
						
							<div class="panel-heading">
								<h3 class="panel-title">Registration Form</h3>
							</div>
							<div class="panel-body">
								<form action="referralregister" method="post">

									<div class="form-group">
										<label for="first-name">First Name</label> <input type="text"
											class="form-control" id="first-name" name="firstname"
											placeholder="First Name"  required="required" value="<%=a.getFirstname()%>">
									</div>
									<div class="form-group">
										<label for="last-name">Last Name</label> <input type="text"
											class="form-control" id="last-name" placeholder="Last Name"
											name="lastname" required="required" value="<%=a.getLastname() %>">
									</div>
									<div class="form-group">
										<label for="inputEmail">Email</label> <input type="email"
											class="form-control" id="inputEmail" placeholder="Email"
											name="email"  required="required" value="<%=a.getEmail() %>">
									</div>
									<div class="form-group">
										<label for="inputPassword">Password</label> <input
											type="password" class="form-control" id="inputPassword"
											placeholder="Password" name="password"  required="required">
									</div>
									<div class="checkbox">
										<label> <input type="checkbox"  required="required"> I read <a
											href="tc">Terms & Conditions</a></label><input type="hidden"
											value="<%=r%>" name="r">
									</div>
									<button type="submit" class="btn btn-primary" name="submit"
										value="Register">Register</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<!-- SECTION FOOTER -->
		<!--===============================================================-->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.js"></script>
	<script src="assets/js/page/theme.js"></script>
	<script src="assets/js/page/page.about-us-option-2.js"></script>

</body>

</html>
