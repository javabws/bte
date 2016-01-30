
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error"%>
<%
	UserBean u = null;
	if (session.getAttribute("userBean") != null) {
		u = (UserBean) session.getAttribute("userBean");
	} else {
%>
<jsp:forward page="expire"></jsp:forward>
<%
	}
%>
<div class="col-md-3 left_col">
	<div class="left_col scroll-view">

		<div class="navbar nav_title" style="border: 0;">
			<a href="#" class="site_title"><img class="img-responsive"
				src="assets/images/logo/logo-user.png" alt="BTX"></a>
		</div>
		<div class="clearfix"></div>



		<br />

		<!-- sidebar menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

			<div class="menu_section">
				<div class="profile">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="usertrade"><button type="button"
							class="btn btn-warning btn-lg">
							<i class="fa fa-line-chart"></i>&nbsp;Trade
						</button></a>
				</div>
				<ul class="nav side-menu">
					<li class="active"><a><i class="fa fa-user"></i> Personal
							Wardrobe <span class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="userdeposit"><i class="fa fa-plus"></i>Deposit</a>
							</li>
							<li><a href="userwithdrawal"><i class="fa fa-usd"></i>Withdrawals</a>
							</li>
							<li><a href="useroperations"><i class="fa fa-repeat"></i>Chronicle
									Operations</a></li>
							<li><a href="usertrading"><i class="fa fa-refresh"></i>Chronicle
									Trading</a></li>
							<li><a href="userpersonalinfo"><i
									class="fa fa-pencil-square-o"></i>Personnal Info</a></li>
							<li><a href="userforum"><i class="fa fa-list-ul"></i>Forum</a></li>
							<li><a href="usercontactsupport"><i
									class="fa fa-envelope-o"></i>Contact Us</a></li>
						</ul></li>
					<li><a><i class="fa fa-group"></i> Referral Stats <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="registereduser"><i class="fa fa-user"></i>Registered Users</a></li>

							<li><a href="commission"><i class="fa fa-money"></i>Commissions</a></li>
						</ul></li>
					<li><a href="usereducation"><i class="fa fa-book"></i>
							Education </a></li>
					<li><a href="userrefer"><i class="fa fa-bullhorn"></i>
							Refer a Friend </a></li>
					<li><a href="userfaq"><i class="fa fa-question-circle"></i>FAQ
					</a></li>

					<li><a><i class="fa fa-info-circle"></i> About <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="userabout"><i class="fa fa-info-circle"></i>About
									Us</a></li>

							<li><a href="userkyc"><i class="fa fa-comment"></i>KYC</a></li>
						</ul></li>
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
			<%
				int amount = 0;
				Connection c = DbDriver.getConnection();
				PreparedStatement p = c
						.prepareStatement("select amount from wallets where email=?");
				p.setString(1, u.getEmail());
				ResultSet r = p.executeQuery();
				if (r.next()) {
					amount = r.getInt("amount");
				}
				String fname="";
				String lname="";
				p = c
						.prepareStatement("select firstname,lastname from user_details where email=?");
				p.setString(1, u.getEmail());
				r = p.executeQuery();
				if (r.next()) {
					fname=r.getString("firstname");
					lname=r.getString("lastname");
				}
			%>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<div class="tile_stats_count">
						<div class="count green">
							$
							<%=amount%>
						</div>
					</div>
				</li>

				<li class=""><a href="javascript:;"
					class="user-profile dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"> <%=fname + " " + lname%> <span
						class=" fa fa-angle-down"></span>
				</a>
					<ul
						class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
						<li><a href="userpersonalinfo"><i
								class="fa fa-pencil-square-o">&nbsp;&nbsp;</i>Personnal Info</a></li>
						<li><a href="userdeposit"><i class="fa fa-plus"></i>&nbsp;&nbsp;Deposit</a>
						</li>
						<li><a href="userwithdrawal"><i class="fa fa-usd"></i>&nbsp;&nbsp;Withdrawals</a>
						</li>
						<li><a href="useroperations"><i class="fa fa-repeat"></i>&nbsp;&nbsp;Chronicle
								Operations</a></li>
						<li><a href="usertrading"><i class="fa fa-refresh"></i>&nbsp;&nbsp;Chronicle
								Trading</a></li>
						<li><a href="userforum"><i class="fa fa-refresh"></i>&nbsp;&nbsp;Forum</a></li>

						<li><a href="logout"><i class="fa fa-sign-out pull-right"></i>
								Log Out</a></li>
					</ul></li>




			</ul>
		</nav>
	</div>

</div>
<!-- /top navigation -->

