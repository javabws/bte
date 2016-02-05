<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript">
var forward1=<%=(String)request.getParameter("n")%>
if(forward1==1)
	{	
		 location.replace("home");
	}
</script>
	
	<title>Home | BinaryTradeExchange.com</title>
	<jsp:include page="headn.jsp"></jsp:include>
</head>
<body>
	<div class="container">
       <jsp:include page="menun.jsp"></jsp:include>
	<div class="row">
	<div class="banner">
		<!--img src="images/Binarytrade1.jpg" alt=""-->
		<!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="images/Binarytrade1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption1">
               <h1><li>90% Payout</li></h1>
              <h1><li>Peer To Peer Trade</li></h1>
              <h1><li>48 Hours Withdrawal</li></h1>
              <h1><li>Best Affiliate Payout</li></h1>
              <h1><li>Trade Till The Final Second</li></h1>
                           
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="images/Trade-Binary.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
             	<h1><li>Not A Broker</li></h1>
              	<h1><li>100% Safe Trade</li></h1>
              	<h1><li>Live Chat</li></h1>
              	<h1><li>100 Free Winning Strategies</li></h1>
            </div>
          </div>
        </div>
        
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	</div>
	</div>
	<div class="row">
		<div class="strategies col-xs-12">
			<img src="images/Picture4.png" width="" alt="" title="">
			<a href="100freestrategies.jsp" class="btn">Free Access</a>
		</div>
	</div>

	<div class="row">
		<div class="binary_cnt">
			<h2>Binary Trade Xchange<span>An Ultimate Solution In Binary Option</span></h2>
		</div>
	</div>
	<div class="row">
		<div class="youtube_row">
		
			<div class="youtube_cloum col-xs-12 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
			<iframe height="315" src="https://www.youtube.com/embed/4CkqjnAqEAk" frameborder="0" allowfullscreen></iframe>
			 
			</div>
			
		</div>
	</div>
	<div class="row trade_final_second">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<img alt="" src="images/Time122.png" width="">
			
		</div>
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<a href="tradetillthefinalsecond" class="btn">Read More </a>
		
	</div>
	<div class="row">
		<ul class="payout_row">
			<li class="col-xs-12 col-sm-6 col-md-4">
				<img src="images/Sample11.png" alt="">
				<a href="90payout.jsp" class="btn">Read More </a>
			</li>
			<li class="col-xs-12 col-sm-6 col-md-4">
				<img src="images/Sample-31.png" alt="">
				<a href="48hourswithdrawal.jsp" class="btn">Read More</a>
			</li>
			<li class="col-xs-12 col-sm-6 col-md-4">
				<img src="images/Sample-51.png" alt="">
				<a href="affiliateprogram.jsp" class="btn">Read More</a>
			</li>
			<li class="col-xs-12 col-sm-6 col-md-4">
				<img src="images/Sample-21.png" alt="">
				<a href="tradingexchange.jsp" class="btn">Read More</a>
			</li>
			<li class="col-xs-12 col-sm-6 col-md-4">
				<img src="images/Sample-62.png" alt="">
				<a href="100freestrategies.jsp" class="btn">Read More</a>
			</li>
			<li class="col-xs-12 col-sm-6 col-md-4">
				<img src="images/Sample-41.png" alt="">
				<a href="100safetrade.jsp" class="btn">Read More</a>
	
			</li>
			
		</ul>
	</div>
	</div><!-- End primary page content -->
 	 </div>
 	<jsp:include page="footern.jsp"></jsp:include>
	
</body>
</html>