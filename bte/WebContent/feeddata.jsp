<%@page import="java.util.HashMap"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="net.forexfeed.ForexFeed"%>
<%@page import="com.btx.Process.FeedProcess"%>
<%@ page language="java" contentType="text/xml; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    					<% 
    					String access_key = "144695360152239";
    					   String symbol = "EURUSD";
    					  int interval = 1;
    					   int periods = 1;
    					   
    						  double pricedata=0.0;
    						  ForexFeed fxfeed = new ForexFeed(access_key, symbol, interval, periods);
    						  ArrayList quotes = fxfeed.getData();

    						    if (fxfeed.getStatus().equals("OK")) {

    						      Iterator itr = quotes.iterator();

    						      while (itr.hasNext()) {
    						        HashMap quote = (HashMap) itr.next();


    						        if (fxfeed.getInterval() == 1) {
    						          if (fxfeed.getPrice().equals("bid,ask")) {
    						          }
    						          else {
    						        	  pricedata=Double.parseDouble((String) quote.get("price")) ;
    						          }
    						        }
    						        else {
    						        }

    						      }

    						    }
    						    else {
//    						      
    						    }
    						    
					%>
					<root>
					<fvalue>
					<yvalue>
								<%=pricedata %>
								</yvalue>
								</fvalue></root>