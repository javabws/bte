<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>Binaryexchangetrade</title>
	<jsp:include page="headn.jsp"></jsp:include>
</head>
<body>
	<div class="container">
	<jsp:include page="menun.jsp"></jsp:include>
	<div class="row">
	<div class="banner">
		<!--img src="images/Binarytrade1.jpg" alt=""-->

	</div>
	</div>
	
	<h3>59. Simple strategy with one indicator</h3>
	<p>This is a strategy for a 60 second options. This strategy is easy, convenient, and most importantly, profitable. Trading this system requires patience because just a few deals are made per day, but the deals made are "very accurate."<br>
This strategy uses only one indicator: Bollinger Bands set for the period 20 and the deviation 3.<br>
This strategy works on all time frames.<br>
We need the candle to close outside the upper or lower Bollinger bands.<br>
If the bullish candle closes outside the upper limit of the indicated Bollinger bands, we will enter the market with the option PUT because the next candle will be bearish.<br>
If the bearish candle closes outside the lower limit of the indicated Bollinger bands, we will enter the market with the option CALL because the next candle will be bullish.<br>
Please note that when  the candle is completely closed outside the Bollinger band, both corners of the candle should be outside of the Bollinger Bands.<br>
</p>
<img src="images/strategy/str123.jpg">
<p><b> Please take note that most of these systems will only make money with BTX 60 seconds time frame which is a 90% payout. Trade among traders and eliminate the brokers</b></p>
	</div><!-- End primary page content -->
	<jsp:include page="footern.jsp"></jsp:include>
</body>
</html>