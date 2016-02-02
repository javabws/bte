<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
	<%UserBean u = null;
	if (session.getAttribute("userBean") != null) {
		u = (UserBean) session.getAttribute("userBean");
	} else {
%>
<jsp:forward page="expire"></jsp:forward>
<%
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" >

<head >
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Binary Trade Exchange | Trade</title>

    <!-- Bootstrap core CSS -->
	<link href="css/elements.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="css/custom-trade.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/maps/jquery-jvectormap-2.0.1.css" />
    <link href="css/icheck/flat/green.css" rel="stylesheet" />
    <link href="css/floatexamples.css" rel="stylesheet" type="text/css" />
	<link href="css/styles.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery.min.js"></script>
    <!--script src="js/nprogress.js"></script-->
    
    <script type="text/javascript">
    var forward1=<%=(String)request.getParameter("n")%>
    if(forward1==1)
    	{	
    		 location.replace("usertrade");
    	}
        //NProgress.start();
		$(function(){
			//$(".nav-tabs a").click(function(){
			//$("body").removeClass("nav-sm");
			//$("body").addClass("nav-md");
			//});
			//$(".nav-md").find(".tab-content").css({"display":"block"});
			//$(".nav-sm").find(".tab-content").css({"display":"none"});
		});
    </script>
      <script src="sweetalert/sweetalert-dev.js"></script>
 	 <link rel="stylesheet" href="sweetalert/sweetalert.css">
    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
<!--         <script src="chart/highcharts.js"></script> -->
<!-- 	<script src="chart/modules/exporting.js"></script> -->
<!-- 	<script src="chart/customChart.js"></script> -->

  <script src="stock/highstock.js"></script>
	<script src="stock/modules/exporting.js"></script>
	<script src="stock/customStock.js"></script>
	
</head>


<body class="nav-md right-colum">

<input type="hidden" id="email" value="<%=u.getEmail() %>">
    <div class="container body">


        <div class="main_container">

     <div class="col-md-3 left_col">
                <div class="left_col scroll-view">

                    <div class="navbar nav_title" style="border: 0;">
                        <a href="home" class="site_title"><img class="img-responsive"
				src="assets/images/logo/logo-user.png" alt="BTX"></a>
                    </div>
                    <div class="clearfix"></div>
					
					<div class="left-colum">
					
					<div id="openDeals">
					
					<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color='#E65C00' size=3px><i class='fa fa-user'>&nbsp;&nbsp;Open Deals&nbsp;&nbsp;<span id="counter"></span></i></font></div>
					</div>
					<div id="openDealsList" class="tab-content1">
					<p class="no_result">No Open Deals</p>
					</div>
					
					
					
                    <!-- sidebar menu -->
                    
                   
                   <br>
                  <ul class="nav nav-tabs">
				  <li class="active"><a data-toggle="tab" href="#Deals"><i class="fa fa-user"></i><span>Closed Deals</span></a></li>
				  <li><a data-toggle="tab" href="#Assets"><i class="fa fa-user"></i><span>Assets</span></a></li>
				</ul>
				
				

				<div class="tab-content">
				  <div id="Deals" class="tab-pane fade in active">
				  
					<ul class="deals-list">
					
					<div id="deal" class="closed-scroll" ></div>
					</ul>
				  </div>
				  <div id="Assets" class="tab-pane fade">
					<ul class="assets-list">
						<li>
							<a href="javascript:void(0);" onclick="loadChart('EURUSD')">
								<span class="assets-loca">EUR/USD</span>
								<span class="point">90%</span>
							</a>
						</li>
						<li>
							<a href="javascript:void(0);" onclick="loadChart('USDJPY')">
								<span class="assets-loca">USD/JPY</span>
								<span class="point">90%</span>
							</a>
						</li>
						<li>
							<a href="javascript:void(0);" onclick="loadChart('GBPUSD')">
								<span class="assets-loca">GBP/USD</span>
								<span class="point">90%</span>
							</a>
						</li>
						<li>
							<a href="javascript:void(0);" onclick="loadChart('EURJPY')">
								<span class="assets-loca">EUR/JPY</span>
								<span class="point">90%</span>
							</a>
						</li>
						<li>
							<a href="javascript:void(0);" onclick="loadChart('USDCHF')">
								<span class="assets-loca">USD/CHF</span>
								<span class="point">90%</span>
							</a>
						</li>
					</ul>
					
					
					
				  </div>
				</div>
				</div>
                    <!-- /sidebar menu -->


                </div>
            </div>
      <!-- top navigation -->
            <div class="top_nav">

                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <!-- <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div> -->

                        <ul class="nav navbar-nav navbar-right">
                        <li>
					<div class="tile_stats_count">
					<%
				double amount = 0.0;
				Connection c = DbDriver.getConnection();
				PreparedStatement p = c
						.prepareStatement("select amount from wallets where email=?");
				p.setString(1, u.getEmail());
				ResultSet r = p.executeQuery();
				if (r.next()) {
					amount = r.getDouble("amount");
				}
				amount=(int)Math.round(amount * 100)/(double)100;
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
						<div class="count green" id="balance" >
						<input type="hidden" id="balanceAmount" value="<%=amount %>" >
							$<%=amount %>
						
						</div>
					</div>
				</li>
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                  <%=fname + " " + lname%>
                                    <span class=" fa fa-angle-down"></span>
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
					</ul>
                            </li>
                            
							
                        </ul>
                    </nav>
                </div>

            </div>
            
            
            
            <!-- /top navigation -->
            
            

      
            
          <!-- page content -->
          
            <div class="right_col" role="main">
               
               
              
              	
              		<div id="container"></div>
              	
              	
              
              
              
              </div>
               
			<div class="right-content">
			<div class="row">
              	<div class="col-md-2">
					<div class="field fo-bd">
						<h4>Amount</h4>
						<input type="text" id="userAmount" name="amount" required="required" class="right-input dollaricon" onkeypress="return isNumber(event)" onkeyup="calculateProfit()">
							
<!-- 						<input type="text" value="125" class="right-input dollaricon" id="userAmount"> -->
					</div>
					<div class="field fo-bd">
						<h4>Fixed Profit</h4>
						<div class="profit-up">90%</div>
					</div>
					<div class="field fo-bd">
						<h4>Profit</h4>
						<div class="main-profit"><i class="fa fa-dollar"></i>&nbsp;<span id="prof"></span></div>
					</div>
					<div class="field fo-bd">
						<button id="call" class="call-btn" onclick="callFun()">Call</button>
						<button id="put" class="put-btn" onclick="putFun()">Put</button>
						<div id="displayTime"></div>
						 
				</div>
					</div>
					
              	</div>
              
              </div>
			</div>
			
                <!-- footer content -->
                <footer>
                    <div class="">
                        <p class="pull-right">Designed by <a href="http://www.bluewhalesolutions.com">BlueWhale solutions Inc.</a> |
                            <span class="lead"> <i class="fa fa-refresh"></i> Binary Trade Exchange</span>
                        </p>
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->
                
                
            </div>
            <!-- /page content -->
        </div>

   

   <div id="custom_notifications" class="custom-notifications dsp_none">
        <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
        </ul>
        <div class="clearfix"></div>
        <div id="notif-group" class="tabbed_notifications"></div>
    </div>

    <script src="js/bootstrap.min.js"></script>

    <!-- bootstrap progress js -->
    <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
   

    <script src="js/custom.js"></script>
    
     <!-- PNotify -->
    <script type="text/javascript" src="js/notify/pnotify.core.js"></script>
    <script type="text/javascript" src="js/notify/pnotify.buttons.js"></script>
    <script type="text/javascript" src="js/notify/pnotify.nonblock.js"></script>
<div id="abc">
<!-- Popup Div Starts Here -->
<div id="popupContact">
<!-- Contact Us Form -->
<form action="#" id="form" method="post" name="form" class="result_text">
<span class="popup_closetext" id="close" onclick ="div_hide()">x</span>
<p class="resut_para">The position is closed</p>
<!-- <h2 class="result_show">PROFIT</h2> -->
<!-- <h2 class="result_content"><i class="fa fa-dollar"></i></h2> -->
<span id="pop-det"></span>
</form>
</div>
<!-- Popup Div Ends Here -->
</div>

   

</body>

</html>
