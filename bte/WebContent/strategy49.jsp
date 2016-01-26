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
	
	<h3>49. Bollinger band and exponential moving averages strategy </h3>
	<p>This is trend strategy that uses the Bollinger band and exponential moving averages. This strategy is suitable for all assets, although the results of my testing on the currencies were the best.In this strategy, we will use Bollinger bands as the trend indicator, not the reversal. Everyone who has ever traded with the Bollinger bands knows that the most popular type of its usage is catching pivot points on limits, but few people use it to determine trends.</p>
	<p>When the price is between the upper and middle Bollinger band, we have an upward trend. If the price is between the middle and lower band, we have a downward trend.Knowing this feature, we should use a few other indicators, such as filters, to eliminate the possibility of false signals in the beginning of a new trend and to identify the trend's end. As the filter, I suggest using Moving Average Exponential. It's better to use exponential, rather than the Simple, because exponential is more responsive to the changing of the trend.</p>
	<p>Settings of the Binary options strategy Avalanche</p>
	<p>1.Let's take timeframe 1M </p>
	<p>2.Put Bollinger bands on the chart;</p>
	<p>3.Put Exponential moving averages on the chart;</p>
	<p>4.Put Exponential moving averages operation on the chart three times because we need three of these indicators with different periods.</p>
	<p>5.The first EMA (exponential moving average) is green with a period of 14;</p>
	<p>6.The second EMA is red (21);</p>
	<p>7.The third EMA is blue (50).</p>
	<p>We get the following picture:</p>
	<p><img src="images/strategy/stra49.jpg"></p>
	<p>Conditions to buy CALL option:</p>
	<p>1.Green EMA (14) is above the red EMA (21);</p>
	<p>2.Red EMA (21) must be located above the blue EMA (50);</p>
	<p>3.Blue EMA (50) shouldn't be outside the Bollinger Bands.</p>
	<p><img src="images/strategy/stra499.jpg"></p>
	<p>Conditions to buy PUT option:</p>
	<p>1.Green EMA (14) should be located below the red EMA (21);</p>
	<p>2.Red EMA (21) must be under blue EMA (50);</p>
	<p>3.Blue EMA (50)shouldn't be outside the Bollinger Bands.</p>
	<p><img src="images/strategy/stra4999.jpg"></p>
	<p>It's really a simple strategy for binary options if you do not become lost in the colors and lines. I note that the moment the trend is amplified or attenuated can be clearly seen in Bollinger bands. It's better to buy an option when bands expand since you have an additional indication of the strengthening trend.</p>
	
	
	
	<p><b>Please take note that most of these systems will only make money with BTX 60 seconds time frame which is a 90% payout. Trade among traders and eliminate the brokers</b></p>
	</div><!-- End primary page content -->
	<jsp:include page="footern.jsp"></jsp:include>
</body>
</html>