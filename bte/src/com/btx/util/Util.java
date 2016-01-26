package com.btx.util;

import java.text.ParseException;

import org.apache.commons.lang3.RandomStringUtils;

public class Util {
	public static java.sql.Date getCurrentDatetime() {
		java.util.Date today = new java.util.Date();
		return new java.sql.Date(today.getTime());
	}
	
	public static java.sql.Timestamp getCurrentTimeStamp() throws ParseException{
		java.util.Date currentTime = new java.util.Date();
		return new java.sql.Timestamp(currentTime.getTime());
	}
	
	public static String randomString()
	  {
	    String vco = RandomStringUtils.random(20, true, true);
	    return vco;
	  }

}
