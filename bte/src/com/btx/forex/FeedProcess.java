package com.btx.forex;

import net.forexfeed.ForexFeed; 

import java.util.*;

public class FeedProcess {
	
	  private static String access_key = "144695360152239";
	  private static String symbol = "EURUSD";
	  private static int interval = 1;
	  private static int periods = 1;
	  
	  
	  @SuppressWarnings("rawtypes")
	public static double getData() {
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

		      }

		    }
		    
		    return pricedata;
		
	}

}
