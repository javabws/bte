package com.btx.dto;

import net.forexfeed.ForexFeed; 
import java.util.*;

public class ForexTest {

  /* ------------------------------------------
   * EDIT THE FOLLOWING VARIABLES
   */

  private static String access_key = "144695360152239";
  private static String symbol = "EURUSD";
  private static int interval = 60;
  private static int periods = 60;

  /* END VARIABLES
   * ------------------------------------------
   */

  /* main method
   */
  public static void main(String[] args) {

    // Create the ForexFeed Object
    ForexFeed fxfeed = new ForexFeed(access_key, symbol, interval, periods);

    // Display the Quotes
    printData(fxfeed);
  }

  /**
   * Get the data and print it to System.out
   */
  private static void printData(ForexFeed fxfeed) {

    /*
     * Fetch the Data
     */
    ArrayList quotes = fxfeed.getData();

    System.out.println("-------- Quotes --------");
    if (fxfeed.getStatus().equals("OK")) {

      System.out.println("Number of Quotes: " + fxfeed.getNumQuotes());
      System.out.println("Copyright: " + fxfeed.getCopyright());
      System.out.println("Website: " + fxfeed.getWebsite());
      System.out.println("License: " + fxfeed.getLicense());
      System.out.println("Redistribution: " + fxfeed.getRedistribution());
      System.out.println("AccessPeriod: " + fxfeed.getAccessPeriod());
      System.out.println("AccessPerPeriod: " + fxfeed.getAccessPerPeriod());
      System.out.println("AccessThisPeriod: " + fxfeed.getAccessThisPeriod());
      System.out.println("AccessRemainingThisPeriod: " + fxfeed.getAccessPeriodRemaining());
      System.out.println("AccessPeriodBegan: " + fxfeed.getAccessPeriodBegan());
      System.out.println("NextAccessPeriodStarts: " + fxfeed.getAccessPeriodStarts());

      /*
       * Get an Iterator object for the quotes ArrayList using iterator() method.
       */
      Iterator itr = quotes.iterator();

      /*
       * Iterate through the ArrayList iterator
       */
      System.out.println("----------------------------------------");
      System.out.println("Iterating through Quotes...");
      System.out.println("----------------------------------------");
      while (itr.hasNext()) {
        HashMap quote = (HashMap) itr.next();

        System.out.println("Quote Symbol: " + quote.get("symbol"));
        System.out.println("Title: " + quote.get("title"));
        System.out.println("Time: " + quote.get("time"));

        if (fxfeed.getInterval() == 1) {
          if (fxfeed.getPrice().equals("bid,ask")) {
            System.out.println("Bid: " + quote.get("bid"));
            System.out.println("Ask: " + quote.get("ask"));
          }
          else {
            System.out.println(" Price: " + quote.get("price"));
          }
        }
        else {
          System.out.println("Open: " + quote.get("open"));
          System.out.println("High: " + quote.get("high"));
          System.out.println("Low: " + quote.get("low"));
          System.out.println("Close: " + quote.get("close"));
        }
        System.out.println("");

      }

    }
    else {
      System.out.println("Status: " + fxfeed.getStatus());
      System.out.println("ErrorCode: " + fxfeed.getErrorCode());
      System.out.println("ErrorMessage: " + fxfeed.getErrorMessage());
    }

  }

} 