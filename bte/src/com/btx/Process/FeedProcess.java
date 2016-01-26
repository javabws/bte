package com.btx.Process;

import net.forexfeed.ForexFeed; 

import java.util.*;

//-----This class is used for processing the Live Feed from Forexfeed.net using their API----//
public class FeedProcess {
	
	  private static String access_key = "144695360152239";
	  private static String symbol = "EURUSD";
	  private static int interval = 1;
	  private static int periods = 1;
	  
	  //----method is used to get the price data---//
	  @SuppressWarnings("rawtypes")
	public static double getData() {
		  double pricedata=0.0;
		  ForexFeed fxfeed = new ForexFeed(access_key, symbol, interval, periods);
		  ArrayList quotes = fxfeed.getData();

		  //  System.out.println("-------- Quotes --------");
		    if (fxfeed.getStatus().equals("OK")) {

//		      System.out.println("Number of Quotes: " + fxfeed.getNumQuotes());
//		      System.out.println("Copyright: " + fxfeed.getCopyright());
//		      System.out.println("Website: " + fxfeed.getWebsite());
//		      System.out.println("License: " + fxfeed.getLicense());
//		      System.out.println("Redistribution: " + fxfeed.getRedistribution());
//		      System.out.println("AccessPeriod: " + fxfeed.getAccessPeriod());
//		      System.out.println("AccessPerPeriod: " + fxfeed.getAccessPerPeriod());
//		      System.out.println("AccessThisPeriod: " + fxfeed.getAccessThisPeriod());
//		      System.out.println("AccessRemainingThisPeriod: " + fxfeed.getAccessPeriodRemaining());
//		      System.out.println("AccessPeriodBegan: " + fxfeed.getAccessPeriodBegan());
//		      System.out.println("NextAccessPeriodStarts: " + fxfeed.getAccessPeriodStarts());

		      /*
		       * Get an Iterator object for the quotes ArrayList using iterator() method.
		       */
		      Iterator itr = quotes.iterator();

		      /*
		       * Iterate through the ArrayList iterator
		       */
//		      System.out.println("----------------------------------------");
//		      System.out.println("Iterating through Quotes...");
//		      System.out.println("----------------------------------------");
		      while (itr.hasNext()) {
		        HashMap quote = (HashMap) itr.next();

//		        System.out.println("Quote Symbol: " + quote.get("symbol"));
//		        System.out.println("Title: " + quote.get("title"));
//		        System.out.println("Time: " + quote.get("time"));

		        if (fxfeed.getInterval() == 1) {
		          if (fxfeed.getPrice().equals("bid,ask")) {
//		            System.out.println("Bid: " + quote.get("bid"));
//		            System.out.println("Ask: " + quote.get("ask"));
		          }
		          else {
//		            System.out.println(" Price: " + quote.get("price"));
		        	  pricedata=Double.parseDouble((String) quote.get("price")) ;
		          }
		        }
		        else {
//		          System.out.println("Open: " + quote.get("open"));
//		          System.out.println("High: " + quote.get("high"));
//		          System.out.println("Low: " + quote.get("low"));
//		          System.out.println("Close: " + quote.get("close"));
		        }
//		        System.out.println("");

		      }

		    }
		    else {
//		      System.out.println("Status: " + fxfeed.getStatus());
//		      System.out.println("ErrorCode: " + fxfeed.getErrorCode());
//		      System.out.println("ErrorMessage: " + fxfeed.getErrorMessage());
		    }
		    
		    return pricedata;
		
	}

}
