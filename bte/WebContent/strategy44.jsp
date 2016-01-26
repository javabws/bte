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
	
	
	<h3>44. The Floor Trader Strategy - Retracement and Continuation</h3>
	<p>The core of the strategy is trend following and that makes it one of my favorites. For trend recognition we will use 2 Exponential Moving Averages with periods of 9 and 18. The angle and positioning of the 2 Moving Averages will determine the trend and then we will use a pattern formed during the retracement to enter the market. Here is the detailed explanation of the strategy and all the rules.</p>
	<h4>How to use the Floor Trader Strategy</h4>
	<p>First of all, I want to make sure that everybody knows what a retracement is (as used by this strategy). During an uptrend, a retracement is a minor decline in prices and during a downtrend, it consists of a minor rally (move up). Retracements are counter trend moves and once they are over, the trend usually resumes. These are very important for our strategy because the entry pattern occurs during the retracement. Our entry trigger in an uptrend is the first candle that rises above the high of the previous candle, marking the end of the retracement and the continuation of our uptrend. The opposite applies for a downtrend. Here is the picture:</p>
	<p><img src="images/strategy/stra44.jpg"></p>
	<p>The best entries are found after a retracement that contains 2-5 candles and speaking of entries, here are the rules. Yup, they will seem complicated, but be patient, everything will line up eventually.</p>
	<h4>ENTRIES</h4>
	<p>An Uptrend is identified by: </p>
	<p>1. Prices trading above both EMAs </p>
	<p>2. The 9-EMA line is above the 18-EMA line. </p>
	<p>3. The slope of both or at least one of the EMAs is upwards. </p>
	<p>(Exception: sometimes the 9 EMA will be under the 18, but curving upward and about to cross it. This is allowed.) </p>
	<p>Number 1 above is the primary identifier; prices must first TRADE above both EMA lines - subject to the two conditions below: </p>
	<p>1. Price is above the lines for at least 3 CANDLES , or </p>
	<p>2. Price is at a "significant" distance above the lines (before retracing to touch the EMA lines). </p>
	<p>There are three types of entry signals: Level 1 (L1), Level 2 (L2) and Level 3 (L3). L1 is the strongest signal, followed closely by L2. The weakest signal is L3 and should be traded very cautiously.</p>
	<h4>The LEVEL 1 Call (long) signal:</h4>
	<p>After determining that there is an uptrend and a decline retracement is identified, watch for: </p>
	<p>1. Price to come lower and enter the zone between the 9 and 18 EMA lines, and </p>
	<p>2. One or more candles touch the 18-EMA line (or penetrate slightly below it) </p>
	<p>3. Once the 18-EMA has been touched, look for a candle that breaks above the high of the preceding candle by one or more pips. (Trigger candle)</p>
	<h4>The LEVEL 2 Call (long) signal:</h4>
	<p>( similar to the L1 signal and may appear before it) </p>
	<p>After determining that there is an uptrend and a decline retracement is identified, watch for: </p>
	<p>1. Price to come lower and to enter the zone between the 9 and 18 EMA lines </p>
	<p>2. A Call signal Trigger CANDLE occurs before the 18-EMA is touched. The market begins to rally without touching the 18-EMA (which would normally trigger the L1 signal).</p>
	<h4>The LEVEL 3 Call (long) signal:</h4>
	<p>After determining that there is an uptrend and a decline retracement is identified, watch for: </p>
	<p>1. Price to come lower but it doesn't enter the zone between the 9 and 18 EMA lines, or price just touches the 9-EMA line. </p>
	<p>2. A Call signal Trigger candle occurs above the 9-EMA. The market begins to rally above both EMA lines (or just slightly touches the 9-EMA line) after a shallow retracement.</p>
	<p>Only take an L3 Call signal if it is the first one in a new uptrend.</p>
	<h4>Qualified L3 Call signals are not common</h4>
	<p>The best ones form when the market is trading at new highs in a "runaway" rally, or after a strong consolidation.</p>
	<h4>CONTINUATION Long Signals:</h4>
	<p>Closely monitor the first Call signal in a new uptrend, regardless of whether or not it is taken, if this trade stalls, or returns to breakeven, do not act on any additional long signals in the CURRENT uptrend. The developer of the strategy also advises us not to take additional long signals if they don't happen well above the first one. In general, the best trades are the first signals in a new trend. That is, the highest rate of success will be with a signal from the first retracement after an EMA crossover. For a Put signal, all the rules must be reversed.</p>
	<p>I know a lot of conditions to be met, but I promise you I won't give you any more rules, just some pictures to exemplify good setups:</p>
	<p><img src="images/strategy/stra444.jpg"></p>
	<p><img src="images/strategy/stra4444.jpg"></p>
	<h4>This strategy is based on one of the strongest principles of trading and that is "The trend is your friend". From my experience, it gives accurate signals and they occur with a pretty high frequency so even the guys that want to trade a lot are satisfied. Multiple trades can be taken during a trend and this maximizes the profits, giving the trader big gains if all the signals are taken</h4>
		
	
	<p><b>Please take note that most of these systems will only make money with BTX 60 seconds time frame which is a 90% payout. Trade among traders and eliminate the brokers</b></p>
	</div><!-- End primary page content -->
	<jsp:include page="footern.jsp"></jsp:include>
</body>
</html>