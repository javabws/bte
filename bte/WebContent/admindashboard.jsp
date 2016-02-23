 <%@page import="com.btx.Process.RegisterProcess"%>
<%@page import="com.btx.Bean.RegisterBean"%>
<%@page import="com.btx.Bean.AdminBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error" %>
    <%
    
    AdminBean a=null;
    if(session.getAttribute("adminBean")!=null)
    {
    	 a=(AdminBean)session.getAttribute("adminBean");
    }
    else
    {
    	%>
    	<jsp:forward page="adminexpire"></jsp:forward>
    	<%
    }
    
    if(a.getType().equals("Slave"))
    {
    	%>
    	<jsp:forward page="unauthorized"></jsp:forward>
    	<%
    }
    
   
if(request.getParameter("submit")!=null)
{
	Connection c=DbDriver.getConnection();
    PreparedStatement p=c.prepareStatement("update admintype set atype=? where sno=?");
   
	p.setString(1, (String)request.getParameter("submit1"));
	 p.setInt(2, 1);
	int i=p.executeUpdate();
   
	
}

%>
<!DOCTYPE html>
<html lang="en">

<head>
    
    <title>BinaryTradeXchange | Admin Dashboard</title>

   <jsp:include page="headu.jsp"></jsp:include> 
    <link href="css/datatables/tools/css/dataTables.tableTools.css" rel="stylesheet">

    <script src="js/jquery.min.js"></script>

    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
<link href="css/floatexamples.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function automanual()
	{
		var un="<%=a.getUsernme() %>";
		var pw="<%=a.getPassword() %>";
		
		var uni=document.getElementById("un").value;
		var pwi=document.getElementById("pw").value;
		if(un!=uni && pw!=pwi)
			{
				document.getElementById("aer").innerHTML="<font color=\"red\">Incorrect Username or Password<font>";
				return false;
			}
		return true;
		
	}
	
	function setAtype()
	{
		var atype=document.getElementById("bu").value;
		document.getElementById("hid").innerHTML="<input type='hidden' name='submit1' value='"+atype+"' readonly='readonly'>"
	}
	function setMtype()
	{
		var atype=document.getElementById("buu").value;
		document.getElementById("hid").innerHTML="<input type='hidden' name='submit1' value='"+atype+"' readonly='readonly'>"
	}
</script>
</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">

            

           <jsp:include page="menua.jsp"></jsp:include>
            <%
            String tsql="select amount,type from trading";
            String psql="select amount,type,time from company_wallet_history";
            
            String reportsubmit="";
            reportsubmit=(String)request.getParameter("reportsubmit");
            if(reportsubmit!=null)
            {
            	String reportrange=(String)request.getParameter("reportRange");
            	String timerange=(String)request.getParameter("timerange");
            	if(reportsubmit.equals("Range"))
            	{
            		if(timerange.equals(""))
            		{
            			String[] re=reportrange.split(" to ");
                		tsql="select amount,type from trading where currenttime between '"+re[0]+" 00:00:00' and '"+re[1]+" 23:59:59'";
                		psql="select amount,type,time from company_wallet_history where time between '"+re[0]+" 00:00:00' and '"+re[1]+" 23:59:59'";
                		//System.out.println(tsql);
            			
            		}
            		else if(timerange.equals("1M"))
            		{
            			java.sql.Timestamp tm=RegisterProcess.getCurrentTimeStamp();
            			String dat=tm.toString().substring(0, 10);//getYear()+"-"+tm.getMonth()+"-"+tm.getDate();
            			String tim=tm.getHours()+":"+tm.getMinutes()+":"+tm.getSeconds();
            			int i=1;
            			if(tm.getMinutes()==0)
            				i=-59;
            			String tim1=tm.getHours()+":"+(tm.getMinutes()-i)+":"+tm.getSeconds();
            			//System.out.println(dat+" "+tim1);
                		//System.out.println(dat+" "+tim);
            			tsql="select amount,type from trading where currenttime between '"+dat+" "+tim1+"' and '"+dat+" "+tim+"'";
                		psql="select amount,type,time from company_wallet_history where time between '"+dat+" "+tim1+"' and '"+dat+" "+tim+"'";
            		}
            		else if(timerange.equals("1H"))
            		{
            			java.sql.Timestamp tm=RegisterProcess.getCurrentTimeStamp();
            			String dat=tm.toString().substring(0, 10);//getYear()+"-"+tm.getMonth()+"-"+tm.getDate();
            			String tim=tm.getHours()+":"+tm.getMinutes()+":"+tm.getSeconds();
            			int i=1;
            			if(tm.getHours()==0)
            				i=-23;
            			String tim1=(tm.getHours()-i)+":"+(tm.getMinutes())+":"+tm.getSeconds();
            			//System.out.println(dat+" "+tim1);
                		//System.out.println(dat+" "+tim);
                		tsql="select amount,type from trading where currenttime between '"+dat+" "+tim1+"' and '"+dat+" "+tim+"'";
                		psql="select amount,type,time from company_wallet_history where time between '"+dat+" "+tim1+"' and '"+dat+" "+tim+"'";
            		
            		}
            		
            	}
            }
            
            %>

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="">
                <div class="row">
                        <div class="col-md-12">

                            <!-- form date pickers -->
                            <div class="x_panel" style="">
                            	  <div class="x_content">
                            	  <div class="title_left">
                            <h3>
                    Dash Board
                </h3>
                        </div>
                        <form action="admindashboard" method="post">
									  <div class="well" style="overflow: auto">
									  <div class="col-md-3">
                                            <h4 >Select Time:</h4>
                                        </div>
                                        <div class="col-md-3">
                                            <select data-parsley-id="0497" id="heard" class="form-control"  name="timerange">
                                                    <option value="">Select Minute/Hour</option>
                                                    <option value="1M">Last One Minute</option>
                                                    <option value="1H">Last One Hour</option>
                                                    
                                                   
                                                </select>
                                        </div>
                                        
                                        <div class="col-md-5">
                                            <div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                                                <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                                                <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
                                                <input type="hidden" name="reportRange" value="">
                                            </div>
                                            
                                        </div>
                                        <div class="col-md-1">
                                            <button type="submit" class="btn btn-success" name="reportsubmit" value="Range">Submit</button>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>

                                    </form>
                                   
								</div>
								 </div>
                       </div>
                       </div>
                     <div class="row">
                        <div class="col-md-12">

                            <!-- form date pickers -->
                            <div class="x_panel" style="">
                            	  <div class="x_content">
                    <div class="page-title">
                   
                          	  
                		<div class="clearfix"></div>
                		
                       <%
                       
                       Connection c=DbDriver.getConnection();
                       PreparedStatement p=c.prepareStatement("select email from user_details");
                            		ResultSet rs=p.executeQuery();
                            		long totalusers=0;
                            		while(rs.next())
                            		{
                            			totalusers=totalusers+1;
                            		}
                       
                       %>
                       
                         <!-- top tiles -->
                <div class="row tile_count">
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Total Users</span>
                            <div class="count" data-toggle="tooltip" data-placement="top" title="<%=totalusers%>">
                            	<%
                            	if(totalusers>=10000)
                            	{
                            		out.print(totalusers/1000+"k");
                            	}
                            	else
                            	{
                            		out.print(totalusers);
                            	}
                            	%>
                            </div>
                            <span class="count_bottom"></span>
                        </div>
                    </div>
                    <%
                    p=c.prepareStatement(tsql);
            		rs=p.executeQuery();
            		long totalamount=0;
            		long totalcall=0;
            		long totalput=0;
            		while(rs.next())
            		{
            			totalamount=totalamount+rs.getInt("amount");
            			if(rs.getString("type").equals("call"))
            			{
            				totalcall=totalcall+rs.getInt("amount");
            			}
            			else if(rs.getString("type").equals("put"))
            			{
            				totalput=totalput+rs.getInt("amount");
            			}
            		}
                    
                    %>
                    
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-clock-o"></i> Total Amount</span>
                            <div class="count green"  data-toggle="tooltip" data-placement="top" title="<%=totalamount%>">
                            
                            <%
                            	if(totalamount>=10000)
                            	{
                            		out.print(totalamount/1000+"k");
                            	}
                            	else
                            	{
                            		out.print(totalamount);
                            	}
                            	%>
                            </div>
                            <span class="count_bottom"></span>
                        </div>
                    </div>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i>Call Amount</span>
                            <div class="count" data-toggle="tooltip" data-placement="top" title="<%=totalcall%>">
								<%
                            	if(totalcall>=10000)
                            	{
                            		out.print(totalcall/1000+"k");
                            	}
                            	else
                            	{
                            		out.print(totalcall);
                            	}
                            	%>
								
							</div>
                            <span class="count_bottom"></span>
                        </div>
                    </div>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Put Amount</span>
                            <div class="count" data-toggle="tooltip" data-placement="top" title="<%=totalput%>">
                            <%
                            	if(totalput>=10000)
                            	{
                            		out.print(totalput/1000+"k");
                            	}
                            	else
                            	{
                            		out.print(totalput);
                            	}
                            	%>
                            
                            </div>
                            <span class="count_bottom"></span>
                        </div>
                    </div>
                    <%
                    String data1="[";
                    String data2="[";
                     p=c.prepareStatement(psql);
            		rs=p.executeQuery();
            		double totalprofit=0;
            		double callprofit=0;
            		double putprofit=0;
            		double call_10=0;
            		double put_10=0;
            		while(rs.next())
            		{
            			totalprofit=totalprofit+(long)rs.getDouble("amount");
            			if(rs.getString("type").trim().equals("call>"))
            			{
            				callprofit=callprofit+(long)rs.getDouble("amount");
            				
            				data1+="[gd("+rs.getDate("time").toString().substring(0, 4)+", "+rs.getDate("time").toString().substring(5, 7)+", "+rs.getDate("time").toString().substring(8)+"), "+rs.getDouble("amount")+"],";
            			}
            			else if(rs.getString("type").trim().equals("put>"))
            			{
            				putprofit=putprofit+(long)rs.getDouble("amount");
            				data2+="[gd("+rs.getDate("time").toString().substring(0, 4)+", "+rs.getDate("time").toString().substring(5, 7)+", "+rs.getDate("time").toString().substring(8)+"), "+rs.getDouble("amount")+"],";
            			}
            			if(rs.getString("type").trim().equals("call"))
            			{
            				call_10=call_10+(long)rs.getDouble("amount");
            				
            			}
            			else if(rs.getString("type").trim().equals("put"))
            			{
            				put_10=put_10+(long)rs.getDouble("amount");
            			}
            		}
            		data1=data1.substring(0, data1.length()-1);
            		data2=data2.substring(0, data2.length()-1);
            		data1+="]";
            		data2+="]";
                    System.out.println(data1);
                    System.out.println(data2);
                    %>
                   
                    </div>
                    <div class="row tile_count">
                     <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Call Profit</span>
                            <div class="count" data-toggle="tooltip" data-placement="top" title="<%=callprofit%>">
                            	<%
                            	if(callprofit>=10000)
                            	{
                            		out.print(callprofit/1000+"k");
                            	}
                            	else
                            	{
                            		out.print(callprofit);
                            	}
                            	
                            	%>
                            </div>
                            <span class="count_bottom"></span>
                        </div>
                    </div>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Put Profit</span>
                            <div class="count" data-toggle="tooltip" data-placement="top" title="<%=putprofit%>">
                            
                            <%
                            	if(putprofit>=10000)
                            	{
                            		out.print(putprofit/1000+"k");
                            	}
                            	else
                            	{
                            		out.print(putprofit);
                            	}
                            	%>
                            </div>
                            <span class="count_bottom"></span>
                        </div>
                    </div>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                    <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Call 10% Profit</span>
                            <div class="count" data-toggle="tooltip" data-placement="top" title="<%=call_10%>">
                            
                            <%
                            	if(call_10>=10000)
                            	{
                            		out.print(call_10/1000+"k");
                            	}
                            	else
                            	{
                            		out.print(call_10);
                            	}
                            	%>
                            </div>
                            <span class="count_bottom"></span>
                        </div>
                    </div>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Put 10% Profit</span>
                            <div class="count" data-toggle="tooltip" data-placement="top" title="<%=put_10%>">
                            
                            <%
                            	if(put_10>=10000)
                            	{
                            		out.print(put_10/1000+"k");
                            	}
                            	else
                            	{
                            		out.print(put_10);
                            	}
                            	%>
                            </div>
                            <span class="count_bottom"></span>
                        </div>
                    </div>

                </div>
                
                <!-- /top tiles -->  
                       
                    </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="dashboard_graph">

                            <div class="row x_title">
                                <div class="col-md-6">
                                    <h3>Activities</h3>
                                </div>
                               
                            </div>

                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <div id="placeholder33" style="height: 260px; display: none" class="demo-placeholder"></div>
                                <div style="width: 100%;">
                                    <div id="canvas_dahs" class="demo-placeholder" style="width: 100%; height: 270px; padding: 0px; position: relative;"><canvas height="270" width="542" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 542px; height: 270px;" class="flot-base"></canvas><div style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);" class="flot-text"><div style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;" class="flot-x-axis flot-x1-axis xAxis x1Axis"><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 67px; top: 252px; left: 27px; text-align: center;">Jan 01</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 67px; top: 252px; left: 111px; text-align: center;">Jan 02</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 67px; top: 252px; left: 194px; text-align: center;">Jan 03</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 67px; top: 252px; left: 278px; text-align: center;">Jan 04</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 67px; top: 252px; left: 361px; text-align: center;">Jan 05</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 67px; top: 252px; left: 445px; text-align: center;">Jan 06</div></div><div style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;" class="flot-y-axis flot-y1-axis yAxis y1Axis"><div class="flot-tick-label tickLabel" style="position: absolute; top: 239px; left: 13px; text-align: right;">0</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 220px; left: 7px; text-align: right;">10</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 202px; left: 7px; text-align: right;">20</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 184px; left: 7px; text-align: right;">30</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 165px; left: 7px; text-align: right;">40</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 147px; left: 7px; text-align: right;">50</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 129px; left: 7px; text-align: right;">60</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 110px; left: 7px; text-align: right;">70</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 92px; left: 7px; text-align: right;">80</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 74px; left: 7px; text-align: right;">90</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 55px; left: 1px; text-align: right;">100</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 37px; left: 2px; text-align: right;">110</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 19px; left: 1px; text-align: right;">120</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 1px; left: 1px; text-align: right;">130</div></div></div><canvas height="270" width="542" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 542px; height: 270px;" class="flot-overlay"></canvas></div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-12 bg-white">
                                <div class="x_title">
                                    
                                    <div class="clearfix"></div>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-6">
                                    <div>
                                        <p>Call Amount</p>
                                        <div class="">
                                         <div class="widget_summary">
                                    <div class="w_left w_25">
                                        <span>1k</span>
                                    </div>
                                    <div class="w_center w_55">
                                        <div class="progress">
                                            <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 66%;">
                                                <span class="sr-only">60% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w_left w_25">
                                        <span>123k</span>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                        </div>
                                    </div>
                                    <div>
                                        <p>Put Amount</p>
                                        <div class="">
                                            <div class="widget_summary">
                                    <div class="w_left w_25">
                                        <span>1k</span>
                                    </div>
                                    <div class="w_center w_55">
                                        <div class="progress">
                                            <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                                <span class="sr-only">60% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w_left w_25">
                                        <span>53k</span>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-6">
                                    <div>
                                        <p>Call Profit</p>
                                        <div class="">
                                            <div class="widget_summary">
                                    <div class="w_left w_25">
                                        <span>1k</span>
                                    </div>
                                    <div class="w_center w_55">
                                        <div class="progress">
                                            <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">
                                                <span class="sr-only">60% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w_left w_25">
                                        <span>23k</span>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                        </div>
                                    </div>
                                    <div>
                                        <p>Put Profit</p>
                                        <div class="">
                                           <div class="widget_summary">
                                    <div class="w_left w_25">
                                        <span>1k</span>
                                    </div>
                                    <div class="w_center w_55">
                                        <div class="progress">
                                            <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 5%;">
                                                <span class="sr-only">60% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w_left w_25">
                                        <span>3k</span>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="clearfix"></div>
                        </div>
                        
                    </div>
                    
                       
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    
                                 
                                    
                                    
                                    
                                </div>
                            </div>
                        </div>

                        <br />
                        <br />
                        <br />

                    </div>
                </div>
                    <!-- footer content -->
                    <div class="">
                <jsp:include page="footeru.jsp"></jsp:include>
                <div class="clearfix"></div>
                <!-- /footer content -->
                    
                </div>
               
                <!-- /page content -->
            </div>

        </div>
</div>
       

<%--           <jsp:include page="footJs.jsp"></jsp:include> --%>


        <script src="js/bootstrap.min.js"></script>

    <!-- chart js -->
    <script src="js/chartjs/chart.min.js"></script>
    
    <!-- bootstrap progress js -->
    <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
    <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
    <!-- icheck -->
    <script src="js/icheck/icheck.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- daterangepicker -->
    <script type="text/javascript" src="js/moment.min2.js"></script>
    <script type="text/javascript" src="js/datepicker/daterangepicker.js"></script>
    <!-- input mask -->
    <script src="js/input_mask/jquery.inputmask.js"></script>
    <!-- knob -->
    <script src="js/knob/jquery.knob.min.js"></script>
    <!-- range slider -->
    <script src="js/ion_range/ion.rangeSlider.min.js"></script>
    <!-- color picker -->
    <script src="js/colorpicker/bootstrap-colorpicker.js"></script>
    <script src="js/colorpicker/docs.js"></script>

    <!-- image cropping -->
    <script src="js/cropping/cropper.min.js"></script>
    <script src="js/cropping/main2.js"></script>
        <!-- Datatables -->
        <script src="js/datatables/js/jquery.dataTables.js"></script>
        <script src="js/datatables/tools/js/dataTables.tableTools.js"></script>
        <script>
            $(document).ready(function () {
                $('input.tableflat').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });
            });

            var asInitVals = new Array();
            $(document).ready(function () {
                var oTable = $('#example').dataTable({
                    "oLanguage": {
                        "sSearch": "Search all columns:"
                    },
                    "aoColumnDefs": [
                        {
                            'bSortable': false,
                            'aTargets': [0]
                        } //disables sorting for column one
            ],
                    'iDisplayLength': 12,
                    "sPaginationType": "full_numbers",
                    "dom": 'T<"clear">lfrtip',
                    "tableTools": {
                        "sSwfPath": "<?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?>"
                    }
                });
                $("tfoot input").keyup(function () {
                    /* Filter on the column based on the index of this element's parent <th> */
                    oTable.fnFilter(this.value, $("tfoot th").index($(this).parent()));
                });
                $("tfoot input").each(function (i) {
                    asInitVals[i] = this.value;
                });
                $("tfoot input").focus(function () {
                    if (this.className == "search_init") {
                        this.className = "";
                        this.value = "";
                    }
                });
                $("tfoot input").blur(function (i) {
                    if (this.value == "") {
                        this.className = "search_init";
                        this.value = asInitVals[$("tfoot input").index(this)];
                    }
                });
            });
        </script>
          <script type="text/javascript" src="js/flot/jquery.flot.js"></script>
    <script type="text/javascript" src="js/flot/jquery.flot.pie.js"></script>
    <script type="text/javascript" src="js/flot/jquery.flot.orderBars.js"></script>
    <script type="text/javascript" src="js/flot/jquery.flot.time.min.js"></script>
    <script type="text/javascript" src="js/flot/date.js"></script>
    <script type="text/javascript" src="js/flot/jquery.flot.spline.js"></script>
    <script type="text/javascript" src="js/flot/jquery.flot.stack.js"></script>
    <script type="text/javascript" src="js/flot/curvedLines.js"></script>
    <script type="text/javascript" src="js/flot/jquery.flot.resize.js"></script>
    <script>
        $(document).ready(function () {
            // [17, 74, 6, 39, 20, 85, 7]
            //[82, 23, 66, 9, 99, 6, 2]
            var data1 = <%=data1%>;

            var data2 =<%=data2%>;
            $("#canvas_dahs").length && $.plot($("#canvas_dahs"), [
                data1, data2
            ], {
                series: {
                    lines: {
                        show: false,
                        fill: true
                    },
                    splines: {
                        show: true,
                        tension: 0.4,
                        lineWidth: 1,
                        fill: 0.4
                    },
                    points: {
                        radius: 0,
                        show: true
                    },
                    shadowSize: 2
                },
                grid: {
                    verticalLines: true,
                    hoverable: true,
                    clickable: true,
                    tickColor: "#d5d5d5",
                    borderWidth: 1,
                    color: '#fff'
                },
                colors: ["rgba(38, 185, 154, 0.38)", "rgba(3, 88, 106, 0.38)"],
                xaxis: {
                    tickColor: "rgba(51, 51, 51, 0.06)",
                    mode: "time",
                    tickSize: [1, "day"],
                    //tickLength: 10,
                    axisLabel: "Date",
                    axisLabelUseCanvas: true,
                    axisLabelFontSizePixels: 12,
                    axisLabelFontFamily: 'Verdana, Arial',
                    axisLabelPadding: 10
                        //mode: "time", timeformat: "%m/%d/%y", minTickSize: [1, "day"]
                },
                yaxis: {
                    ticks: 8,
                    tickColor: "rgba(51, 51, 51, 0.06)",
                },
                tooltip: false
            });

            function gd(year, month, day) {
                return new Date(year, month - 1, day).getTime();
            }
        });
    </script>
             <!-- datepicker -->
    <script type="text/javascript">
        $(document).ready(function () {

            var cb = function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange_right span').html(start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
                $('#reportrange_right input').val(start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
                //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
            }

            var optionSet1 = {
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2012',
                maxDate: '12/31/2015',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'right',
                buttonClasses: ['btn btn-default'],
                applyClass: 'btn-small btn-primary',
                cancelClass: 'btn-small',
                format: 'MM/DD/YYYY',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Clear',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            };

            $('#reportrange_right span').html(moment().subtract(29, 'days').format('YYYY-MM-DD') + ' to ' + moment().format('YYYY-MM-DD'));
            $('#reportrange_right input').val(moment().subtract(29, 'days').format('YYYY-MM-DD') + ' to ' + moment().format('YYYY-MM-DD'));

            $('#reportrange_right').daterangepicker(optionSet1, cb);

            $('#reportrange_right').on('show.daterangepicker', function () {
                console.log("show event fired");
            });
            $('#reportrange_right').on('hide.daterangepicker', function () {
                console.log("hide event fired");
            });
            $('#reportrange_right').on('apply.daterangepicker', function (ev, picker) {
                console.log("apply event fired, start/end dates are " + picker.startDate.format('YYYY-MM-DD') + " to " + picker.endDate.format('YYYY-MM-DD'));
            });
            $('#reportrange_right').on('cancel.daterangepicker', function (ev, picker) {
                console.log("cancel event fired");
            });

            $('#options1').click(function () {
                $('#reportrange_right').data('daterangepicker').setOptions(optionSet1, cb);
            });

            $('#options2').click(function () {
                $('#reportrange_right').data('daterangepicker').setOptions(optionSet2, cb);
            });

            $('#destroy').click(function () {
                $('#reportrange_right').data('daterangepicker').remove();
            });

        });
    </script>
    <!-- datepicker -->
    <script type="text/javascript">
        $(document).ready(function () {

            var cb = function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange span').html(start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
                $('#reportrange input').val(start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
                //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
            }

            var optionSet1 = {
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2012',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'left',
                buttonClasses: ['btn btn-default'],
                applyClass: 'btn-small btn-primary',
                cancelClass: 'btn-small',
                format: 'MM/DD/YYYY',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Clear',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            };
            $('#reportrange span').html(moment().subtract(29, 'days').format('YYYY-MM-DD') + ' to ' + moment().format('YYYY-MM-DD'));
            $('#reportrange input').val(moment().subtract(29, 'days').format('YYYY-MM-DD') + ' to ' + moment().format('YYYY-MM-DD'));
            $('#reportrange').daterangepicker(optionSet1, cb);
            $('#reportrange').on('show.daterangepicker', function () {
                console.log("show event fired");
            });
            $('#reportrange').on('hide.daterangepicker', function () {
                console.log("hide event fired");
            });
            $('#reportrange').on('apply.daterangepicker', function (ev, picker) {
                console.log("apply event fired, start/end dates are " + picker.startDate.format('YYYY-MM-DD') + " to " + picker.endDate.format('YYYY-MM-DD'));
            });
            $('#reportrange').on('cancel.daterangepicker', function (ev, picker) {
                console.log("cancel event fired");
            });
            $('#options1').click(function () {
                $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
            });
            $('#options2').click(function () {
                $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
            });
            $('#destroy').click(function () {
                $('#reportrange').data('daterangepicker').remove();
            });
        });
    </script>
    <!-- /datepicker -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#single_cal1').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_1"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
            $('#single_cal2').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_2"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
            $('#single_cal3').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_3"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
            $('#single_cal4').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_4"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#reservation').daterangepicker(null, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
        });
    </script>
    <!-- /datepicker -->
        
</body>

</html>