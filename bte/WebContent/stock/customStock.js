var value=0.0;
var vall;
var user;
var userName;
var usr;
var d,d1;
var sec,sec1,sec2,sec3;
var min,min1;
var optionButton=false,counter=false,blink=true;
var xmlhttp;
var userEnable=false;
var remainingSec,sec1;
var y=0,pr=0.0,totalProfit=0.0;
var yvalue;
var uamount;
var hasPlotLine=true;
var c;
var least=0.0,highest=0.0,temp=0.0;
var chart;
var historyArr=[],arr=[];;
var sym;
var chartEnable=false,openDeal=false,deal=true;
var lastValue=0.0,leastValue=0.0,highestValue=0.0;
var yAxisValue=0.0;
var clr;
var no_of_opendeals=0,totalAmount=0;
function updateWallet()		// Updating user wallet
{
	var balanceAmount=0.0;
	balanceAmount=document.getElementById('balanceAmount').value;
	var userAmount=0.0;
	userAmount=document.getElementById('userAmount').value;
	balanceAmount=parseFloat(balanceAmount-userAmount).toFixed(2);
	document.getElementById('balance').innerHTML="<input type='hidden' id='balanceAmount' value='"+balanceAmount+"' >"+"$"+balanceAmount;
}
function getBalanceAmount()		// Getting amount from user wallet
{
	var balAmount=0.0;
	var urls = "getBalance.jsp";
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4) {
			var xmldoc = xmlhttp.responseXML;
			balAmount = parseFloat(xmldoc.getElementsByTagName("bamount")[0].childNodes[0].nodeValue).toFixed(2);
			document.getElementById('balance').innerHTML="<input type='hidden' id='balanceAmount' value='"+balAmount+"' >"+"$"+balAmount;
		}
	}
	xmlhttp.open("POST", urls, false);
	xmlhttp.send();
}	
function isNumber(evt) {		//checking whether the input is number or not
	evt = (evt) ? evt : window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57)) {
		return false;
	}
	return true;
}
function getPopupDetails()		//Getting user's profit/lose details from database
{
	var user=document.getElementById('email').value;
	var urls = "popupdetails.jsp?sym="+sym;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4) {
			var i;
			var profValue=0.0;
			var xmldoc = xmlhttp.responseXML;
			var amount = parseInt(xmldoc.getElementsByTagName("amount")[0].childNodes[0].nodeValue);
			var totalAmount = xmldoc.getElementsByTagName("totalAmount")[0].childNodes[0].nodeValue;
			totalAmount=parseFloat(totalAmount).toFixed(2);
			var profit = xmldoc.getElementsByTagName("profit")[0].childNodes[0].nodeValue;
			profit=parseFloat(profit).toFixed(2);
			var lost = xmldoc.getElementsByTagName("lost")[0].childNodes[0].nodeValue;
			lost=parseFloat(lost).toFixed(2);
			var calls=xmldoc.getElementsByTagName("calls")[0].childNodes[0].nodeValue;
			var puts=xmldoc.getElementsByTagName("puts")[0].childNodes[0].nodeValue;
			var refund=xmldoc.getElementsByTagName("refund")[0].childNodes[0].nodeValue;
//			var win = parseInt((xmldoc.getElementsByTagName("win")[0].childNodes[0].nodeValue).trim());
//			if(win==1)
//				document.getElementById('pop-det').innerHTML="<h2 class='result_show'>PROFIT</h2><h2 class='result_content'><i class='fa fa-dollar'></i>"+totalAmount+"</h2>";
//			else
//				document.getElementById('pop-det').innerHTML="<h2 class='result_show1'>PROFIT</h2><h2 class='result_content1'><i class='fa fa-dollar'></i>"+totalAmount+"</h2>";
			document.getElementById('pop-det').innerHTML="<h2 class='result_show'><table><tr><td>Call/Put</td><td>&nbsp;&nbsp;&nbsp;-</td><td>"+calls+"/"+puts+"</td></tr><tr><td>Amount</td><td>&nbsp;&nbsp;&nbsp;-&nbsp;</td><td><i class='fa fa-dollar'></i>&nbsp;"+amount+"</td></tr><tr><td>Profit</td><td>&nbsp;&nbsp;&nbsp;-&nbsp;</td><td><i class='fa fa-dollar'></i>&nbsp;"+profit+"</td></tr><tr><td>Loss</td><td>&nbsp;&nbsp;&nbsp;-&nbsp;</td><td><i class='fa fa-dollar'></i>&nbsp;"+lost+"</td></tr><tr><td>Refund</td><td>&nbsp;&nbsp;&nbsp;-&nbsp;</td><td><i class='fa fa-dollar'></i>"+refund+"</td></tr></table></h2>";
			div_show();
		}
	}
	xmlhttp.open("POST", urls, false);
	xmlhttp.send();
}
function calculateProfit()		//Calculating profit amount entered in amount text box
{
	uamount=document.getElementById('userAmount').value;
	pr=parseFloat(uamount);
	pr=parseFloat(pr+((uamount/100)*90)).toFixed(2);
	if(pr>=1)
	{
		document.getElementById('prof').innerHTML=pr;
	}
	else
	{
		pr=0.0
		document.getElementById('prof').innerHTML=pr;
	}
}
function displayDeals()			//Displaying user previous details in top left
{
	var user=document.getElementById('email').value;
	var urls = "userhistory.jsp";
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4) {
			var i;
			var xmldoc = xmlhttp.responseXML;
			var details_nodes = xmldoc.getElementsByTagName("details"); 
			var n_details = details_nodes.length;
			var userinfo="";
			document.getElementById('deal').innerHTML=" ";
			for (i = 0; i < n_details; i++) {
				var utime = xmldoc.getElementsByTagName("utime")[i].childNodes[0].nodeValue;
				var udate = xmldoc.getElementsByTagName("udate")[i].childNodes[0].nodeValue;
				var currency="";
				currency = xmldoc.getElementsByTagName("currency")[i].childNodes[0].nodeValue;
				currency=currency.trim();
				var earned = parseFloat(xmldoc.getElementsByTagName("earned")[i].childNodes[0].nodeValue);
				var val = parseFloat(xmldoc.getElementsByTagName("value")[i].childNodes[0].nodeValue);
				earned=earned.toFixed(2);
				var clr;
				if(earned>0)
					clr="#2cac40";
				else
					clr="#E65C00";
				var type= xmldoc.getElementsByTagName("type")[i].childNodes[0].nodeValue;
				var amount = xmldoc.getElementsByTagName("amount")[i].childNodes[0].nodeValue;
//				document.getElementById('deal').innerHTML+="<table><tbody>";
//				document.getElementById('deal').innerHTML+="<tr><td>"+utime+"</td><td></td></tr></tbody></table>"
//				document.getElementById('deal').innerHTML+="<tr><td>"+udate+"</td><td><font color='white'>"+val+"</font></td></tr>";		
//				document.getElementById('deal').innerHTML+="<tr><td><font color='white'>"+currency.substring(0,3)+"/"+currency.substring(3,7)+"</font></td><td><font color='"+clr+"'><b><i class='fa fa-dollar'></i>"+earned+"</b></font></td></tr>";
//				document.getElementById('deal').innerHTML+="<tr><td>"+type+"</td><td><i class='fa fa-dollar'>"+amount+"</i></td></tr>";
//				document.getElementById('deal').innerHTML+="</tbody></table>";
				document.getElementById('deal').innerHTML+="<li>";
				document.getElementById('deal').innerHTML+="<div>";
				document.getElementById('deal').innerHTML+="<div><font color='white'>"+utime+"</font></div>"
				document.getElementById('deal').innerHTML+="<div>"+udate+"<font color='white'>&emsp;&emsp;&emsp;&emsp;&emsp;"+val+"</font></div>";		
				document.getElementById('deal').innerHTML+="<div><font color='white'>"+currency.substring(0,3)+"/"+currency.substring(3,7)+"</font>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<i class='fa fa-dollar'>"+amount+"</i></div>";
				document.getElementById('deal').innerHTML+="<div>"+type+"</font>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;<font color='"+clr+"'><b><i class='fa fa-dollar'></i>&nbsp;"+earned+"</b></font></div>";
				document.getElementById('deal').innerHTML+="</div></li>";			
			}
		}
	}
	xmlhttp.open("POST", urls, false);
	xmlhttp.send();
}
var xmlhttp;
if (this.window.XMLHttpRequest) {
	xmlhttp = new XMLHttpRequest();
} else {
	xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
}


function returnValue(charthandle,x,symb){		//Getting current feed value to plot chart 
//	var urls = "http://binarytradexchange.com:9200/"+symb+"/data/1";
	$.ajax({
	    type: "POST",
        dataType:"json",
	    url: "/feed/get"+symb+".jsp",
	    success: function(data, status, xhr) {
			yvalue=data._source.yvalue;
			yAxisValue=yvalue.trim();
			charthandle.series[0].addPoint([x,parseFloat(yAxisValue)],true,true);
			y=parseFloat(yAxisValue);
			lastValue=historyArr[0];
			historyArr.shift();
			historyArr.push(y);

			if(y<least||y>highest||lastValue==leastValue||lastValue==highestValue)
			{
				arr=historyArr.slice(0,300);
				arr.sort();
				leastValue=arr[0];
				highestValue=arr[299];
				temp=parseFloat((arr[299]-arr[0])/50);
				least=arr[0]-temp;
				highest=arr[299]+temp;
			}

			charthandle.yAxis[0].update({
				ceiling:highest,
				floor:least
			});
			if(y!=0)
			{
				if(hasPlotLine)
				{
					charthandle.yAxis[0].removePlotLine('plot-line-1');
				}
				charthandle.yAxis[0].addPlotLine({		// Creating verting line in chart  
					value:y,	
					color: '#A6A694',
					width: 1,
					id: 'plot-line-1',
					label: {
						text: y,
						align: 'right',
						style: {
							color: '#A6A694',
							fontWeight: 'bold',
							backgroundColor:'#A6A694',
							borderWidth: 2
						},
						y: -5,
						x: 50
					}
				});
			}
			return yAxisValue;
		},
    error: function(xhr, status, error) {
    	 console.log("Error");
    	 charthandle.series[0].addPoint([x,parseFloat(yAxisValue)],true,true);
    }
});
}
function clearOpenDeals()		// Clearing the deals displaying in top left
{
	document.getElementById('openDeals').innerHTML="";
	document.getElementById('openDealsList').innerHTML="";
}
function disableOptionButton()		// Clearing the clear button and timer in top left
{
	document.getElementById('counter').innerHTML="";
}
function clearData()		// Deleting the current deals of  user
{
	userName=document.getElementById('email').value;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.open("POST", "deletedata.jsp", true);
	xmlhttp.setRequestHeader("Content-type",
	"application/x-www-form-urlencoded");
	xmlhttp.send("sym="+sym);
	openDeal=false;
	optionButton=false;
	userEnable=false;
	user=false;
	counter=false;
	disableOptionButton();
	getBalanceAmount();
	document.getElementById('openDealsList').innerHTML="<p class='no_result'>No Open Deals</p>";
}
function disableButton() {		//Enabling and disabling the call and put button
	if ((sec>=57)&&(user==true)&&(min==ServerDate.getUTCMinutes())) {
		document.getElementById('call').disabled = true;
		document.getElementById('put').disabled = true;
	} else
	{
		document.getElementById('call').disabled = false;
		document.getElementById('put').disabled = false;
	}
	if(sec==56&&userEnable==true){
		user=true;
	}
	setTimeout(disableButton, 1000);
}
function displayTime()		//Displaying timer in top left
{
	sec = ServerDate.getUTCSeconds();
	sec3=59-sec;
	if(counter&&sec==0&&min1==ServerDate.getUTCMinutes()){
		document.getElementById('counter').innerHTML="";
		counter=false;}
//	if(sec==30)
//		disableOptionButton();
	if(counter)
	{
			if(sec3<10)
			{
				document.getElementById('counter').innerHTML="<span class='main-profitg'>"+"  "+"<i class='fa fa-clock-o'></i> 00:0"+sec3+"</span>";
			}
			else{
				document.getElementById('counter').innerHTML="<span class='main-profitg'>"+"  "+"<i class='fa fa-clock-o'></i> 00:"+sec3+"</span>";
			}
	}
	if(sec==2&&ServerDate.getUTCMinutes()==min1)
	{
		openDeal=false;
		document.getElementById('openDealsList').innerHTML="<p class='no_result'>No Open Deals</p>";
		getBalanceAmount();
		chart.yAxis[0].removePlotLine('dealLine');
		totalAmount=parseInt(0);
		totalProfit=parseFloat(0);
		no_of_opendeals=parseInt(0);
		deal=true;
		optionButton=false;
		if(userEnable==true)
			getPopupDetails();
		displayDeals();
	}
//	setTimeout(displayTime, 1000);
}
function digitalClock()		//Displaying timer in bottom right
{
	sec2 = sec;
	sec1=59-sec2;
	if(blink)				//Blinking timer
	{
		if(sec1<=10)
		{
			if(sec1==10)
				document.getElementById('displayTime').innerHTML="<div class='main-profit'>"+"  "+"<i class='fa fa-clock-o'></i> 00:"+sec1+"</div>";
			else
				document.getElementById('displayTime').innerHTML="<div class='main-profit'>"+"  "+"<i class='fa fa-clock-o'></i> 00:0"+sec1+"</div>";
			blink=false;
		}
		else{
			document.getElementById('displayTime').innerHTML="<div class='main-profit'>"+"  "+"<i class='fa fa-clock-o'></i> 00:"+sec1+"</div>";
		}
	}
	else
	{
		document.getElementById('displayTime').innerHTML="";
		blink=true;
	}

	setTimeout(digitalClock, 500);
}
function callFun() {
	var cuaa =0;
	cuaa= parseFloat(document.getElementById('userAmount').value);
	var cba=0;
	cba = parseFloat(document.getElementById('balanceAmount').value);
	if(cba==0 || cba<cuaa)
	{
		//alert("Sorry.. Insufficient Balance");
		swal("Sorry.. \nInsufficient Balance");
	}
	else
	{
		vall = "call";
		saveData();
	}
	
}
function putFun() {
	var puaa=0;
	puaa = parseFloat(document.getElementById('userAmount').value);
	var pba=0;
	pba = parseFloat(document.getElementById('balanceAmount').value);
	if(pba==0 || pba<puaa)
	{
		//alert("Sorry.. Insufficient Balance");
		swal("Sorry.. \nInsufficient Balance");
	}
	else
	{
		vall = "put";
		saveData();
		
	}
}
function saveData() {		//Storing the deal details in database
	var amount=document.getElementById('userAmount').value;
	if(amount>0){
		updateWallet();
		userName = document.getElementById('email').value;
		var type = vall;
		userEnable=true;
		counter=true;
		d = new Date();
		if(optionButton==true&&deal==true)
			{
			deal=false;
			var t=document.getElementById('sam');
			t.style.height="121px";
			}
		if(optionButton==false)
		{
//			document.getElementById("clear-btn").innerHTML="<a id='clearButton' class='lean-btn' onclick=clearData()>Clear</a>";
			optionButton=true;
			deal=true;
			openDeal=true;
			min=ServerDate.getUTCMinutes();
			sec = ServerDate.getUTCSeconds();
//			min1=min+1;
			if(sec>56)
			{
				user=false;
				min+=1;
				min1=min+1;
			}
			else
			{
				min1=min+1;
				
				user=true;
			}
			disableButton();
			document.getElementById('openDealsList').innerHTML="";
			document.getElementById('openDealsList').innerHTML="<div id='sam' style='width:100%;height:60px;overflow:auto;'>";
		}
		
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.open("POST", "storedata.jsp", true);
		xmlhttp.setRequestHeader("Content-type",
		"application/x-www-form-urlencoded");
		xmlhttp.send("amount=" + amount +  "&type=" + type+"&value="+y+"&uminute="+d.getMinutes()+"&uhour="+d.getHours()+"&udate="+d.getDate()+"&umonth="+(d.getMonth()+1)+"&uyear="+d.getFullYear()+"&sym="+sym);
		no_of_opendeals++;
		amount=parseInt(amount);
		pr=parseFloat(pr);
		totalAmount=parseInt(totalAmount);
		totalProfit=parseFloat(totalProfit);
		totalAmount=parseInt(totalAmount+amount);
		totalProfit=parseFloat(totalProfit+pr).toFixed(2);
//		document.getElementById('openDealsList').innerHTML="";
//		document.getElementById('openDealsList').innerHTML+="<div><font color='white'>Now</font><br>";
//		document.getElementById('openDealsList').innerHTML+="<font color='white'>"+sym.substring(0,3)+"/"+sym.substring(3,7)+"</font>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<font color='#2CAB1E'><b><i class='fa fa-dollar'></i>"+totalProfit+"</b></font><br>";
//		document.getElementById('openDealsList').innerHTML+=no_of_opendeals+"&nbsp;Deals&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<i class='fa fa-dollar'>"+totalAmount+"</i>";
//		document.getElementById('openDealsList').innerHTML+="</div><br>";
		
		
		document.getElementById('sam').innerHTML+="<div><font color='white'>Now</font>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;<font color='white'>"+y+"</font><br>";
		document.getElementById('sam').innerHTML+="<font color='white'>"+sym.substring(0,3)+"/"+sym.substring(3,7)+"</font>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b><i class='fa fa-dollar'></i>&nbsp;"+amount+"</b><br>";
		document.getElementById('sam').innerHTML+=type+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<font color='#2cac40'><i class='fa fa-dollar'></i>&nbsp;"+pr+"</font>";
		document.getElementById('sam').innerHTML+="</div></div><br>";

		
		
		if(type=="call")
			clr="#2CAB1E";
		else if(type=="put")
			clr="#E65C00";
			chart.yAxis[0].addPlotLine({		// Creating verting line in chart  
				value:y,	
				color: clr,
				width: 1.5,
				id: 'dealLine',
				label: {
					text: y+"/$"+amount,
					align: 'left',
					style: {
						color: clr,
						fontWeight: 'bold',
						backgroundColor:'#A6A694',
						borderWidth: 2
					},
					y: -4,
					x: 0
				}
			});
	}
	else{
		//alert("Invalid amount");
		swal("Invalid amount.");
	}
}
loadChart("EURUSD");
//Chart function starts here

function loadChart(symbol)
{
	if(openDeal==false)
	{
		$(function () {
//				$.getJSON('http://binarytradexchange:9200/history/'+symbol+'/1', function (data) {		// Getting previous 300 values from api
			$.getJSON('/feed/gethistory.jsp?r='+symbol, function (data) {		// Getting previous 300 values from api
				sym=symbol;
				var prevData=[];
				var yhistory=[];
				var m=0;
				var i=-300;
				var time = (new Date()).getTime();
				arr=[];
				historyArr=[];
				yhistory=data._source.yhistory;
				for(m=0;m<yhistory.length;m++){
					arr.push(parseFloat(yhistory[m]));

					prevData.push([
					               time + i * 1000,
					               parseFloat(yhistory[m])
					               ]);
					i++;
				}
				historyArr=arr.slice(0,300);

				arr.sort();
				temp=parseFloat((arr[299]-arr[0])/50);
				least=arr[0]-temp;
				highest=arr[299]+temp;

				Highcharts.setOptions({
					global : {
						useUTC : false
					}
				});
				// Create the chart
				globalchartHandle=$('#container').highcharts('StockChart', {
					chart : {
						plotShadow: true,
						backgroundColor: '#191e23',
						borderColor: '#2e323d',
						borderWidth: 7,
						animation:false,
						marginRight: 50,
						type: 'area',
						height:600,
						events : {
							load : function () {
								// set up the updating of the chart each second
								var series = this.series[0];
								chart = $('#container').highcharts();
								var i=0;
								chart.addAxis({ // Secondary yAxis
									id: 'value',
									title: {
										text: ''
									},
									lineWidth: 2,
									lineColor: '#A6A694',
									opposite: true
								});
								var hasPlotLine =true;
								if(chartEnable==false){
									chartEnable=true;
									displayDeals();
									displayTime();
									digitalClock();
									setInterval(function () {
										displayTime();
										var x = (new Date()).getTime();
										returnValue(chart,x,sym);
										
									}, 1000);
								}
							}
						}
					},

					plotOptions: {
						series: {
							fillOpacity:0.5,
							fillColor:
							{
								linearGradient: [0,0,0,300],
								stops: [
								        [0, '#FFA319'],
								        [1, 'rgba(255, 153, 51,0.3)']
								        ]},
								        lineWidth: 2,
								        color: '#FFCC00',
								        lineColor: '#FF6600'
						},
					},
					rangeSelector: {
						enabled: false
					},

					title : {
						text : sym.substring(0,3)+"/"+sym.substring(3,7),
						style: {
							color:'white'
						}
					},

					exporting: {
						enabled: false
					},
					xAxis: {
						gridLineColor: '#38382B',
						gridLineWidth:1
					},
					yAxis:[{
						gridLineDashStyle: 'longdash',
						gridLineColor: '#38382B'
					}],
					navigator: {
						enabled: true,
						outlineColor: '#FFA319',
						maskFill:'rgba(255, 153, 51,0.3)'
					},
					scrollbar: {
						enabled: false
					},
					series : [{
						name : 'Price',
						data : prevData
					}]
				});
				chart.yAxis[0].update({
					ceiling:highest,
					floor:least
				});
			});
		});
	}
	else
	{
		swal("Deal is open in other asset");
	}
}
//Chart function ends here
//Function to display popup
function div_show() {
	document.getElementById('abc').style.display = "block";
}
//Function to Hide Popup
function div_hide(){
	document.getElementById('abc').style.display = "none";
}