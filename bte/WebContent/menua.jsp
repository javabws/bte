<%@page import="com.btx.Bean.AdminBean"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error"%>

<div class="col-md-3 left_col">
	<div class="left_col scroll-view">

		<div class="navbar nav_title" style="border: 0;">
			<a href="#" class="site_title"><i class="fa fa-refresh"></i> <span>Binary
					Trade Exchange</span></a>
		</div>
		<div class="clearfix"></div>



		<br />

		<!-- sidebar menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

			<div class="menu_section">

				<ul class="nav side-menu">
					<%
						AdminBean bean = null;
						bean = (AdminBean) session.getAttribute("adminBean");
						if (bean == null) {
					%>
					<jsp:forward page="adminexpire"></jsp:forward>
					<%
						}
						if (bean.getType().equals("Master")) {
					%>
					<li><a href="admindashboard"><i class="fa fa-book"></i>
							Dashboard </a></li>

					<li><a href="adminuser"><i class="fa fa-book"></i> User </a></li>
					<li><a href="transactionhistory"><i class="fa fa-bullhorn"></i>
							Transaction History </a></li>

					<li><a href="admintradinghistory"><i class="fa fa-refresh"></i>Trading
							History </a></li>
					<li><a href="adminprofit"><i class="fa fa-rouble"></i>
							Company Wallet & Profit </a></li>
					<li><a href="admincontact"><i class="fa fa-envelope-o"></i>
							Contact Support Requests </a></li>
					<li><a href="admincontacthistory"><i class="fa fa-envelope-o"></i>
							Contact Support Histories </a></li>
					<li><a href="adminwithdrawalrequest"><i
							class="fa fa-meh-o"></i> Withdrawal Requests </a></li>
					<li><a href="adminwithdrawndetails"><i
							class="fa fa-envelope-o"></i> Withdrawn Details </a></li>
					<li><a href="forumadmin"><i class="fa fa-list"></i>
							Forum </a></li>
					<%
						}

						else if (bean.getType().equals("Slave")) {
					%>
					

					<li><a href="adminuser"><i class="fa fa-book"></i> User </a></li>

					<li><a href="admintradinghistory"><i class="fa fa-refresh"></i>Trading
							History </a></li>
					<li><a href="adminprofit"><i class="fa fa-rouble"></i>
							Company Wallet & Profit </a></li>
					<li><a href="admincontact"><i class="fa fa-envelope-o"></i>
							Contact Support Requests </a></li>
					<li><a href="admincontacthistory"><i class="fa fa-envelope-o"></i>
							Contact Support Histories </a></li>
					<li><a href="forumadmin"><i class="fa fa-list"></i>
							Forum </a></li>
					<%
						}
					%>

				</ul>
			</div>


		</div>
		<!-- /sidebar menu -->

		<!-- /menu footer buttons -->

		<!-- /menu footer buttons -->
	</div>
</div>
<!-- top navigation -->
<div class="top_nav">

	<div class="nav_menu">
		<nav class="" role="navigation">
			<div class="nav toggle">
				<a id="menu_toggle"><i class="fa fa-bars"></i></a>
			</div>

			<ul class="nav navbar-nav navbar-right">

				<li></li>
				<li><a href="logout"> Log Out</a></li>
				<li class=""><a>Admin Type: <%=bean.getType() %> </a></li>
				<li class=""><a> <%=bean.getUsernme() %> </a></li>



			</ul>
		</nav>
	</div>

</div>
<!-- /top navigation -->

