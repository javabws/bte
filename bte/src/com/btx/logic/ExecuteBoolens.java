package com.btx.logic;

public class ExecuteBoolens {
	
	private static boolean eurusd=false,eurjpy=false,usdjpy=false,gbpusd=false,usdchf=false;

	public static boolean isEurusd() {
		return eurusd;
	}

	public static void setEurusd(boolean e) {
		eurusd = e;
	}

	public static boolean isEurjpy() {
		return eurjpy;
	}

	public static void setEurjpy(boolean e) {
		eurjpy = e;
	}

	public static boolean isUsdjpy() {
		return usdjpy;
	}

	public static void setUsdjpy(boolean e) {
		usdjpy = e;
	}

	public static boolean isGbpusd() {
		return gbpusd;
	}

	public static void setGbpusd(boolean e) {
		gbpusd = e;
	}

	public static boolean isUsdchf() {
		return usdchf;
	}

	public static void setUsdchf(boolean e) {
		usdchf = e;
	}
	
	public static boolean isTrue(String symbol) {
		
		boolean result=false;
		
		if(symbol.equals("EURUSD"))
		{
			result=isEurusd();
		}
		else if(symbol.equals("EURJPY"))
		{
			result=isEurjpy();
		}
		else if(symbol.equals("USDJPY"))
		{
			result=isUsdjpy();
		}
		else if(symbol.equals("USDCHF"))
		{
			result=isUsdchf();
		}
		else if(symbol.equals("GBPUSD"))
		{
			result=isGbpusd();
		}
		
		return result;
	}
	public static void setSymbolTrue(String symbol) {
		
		
		if(symbol.equals("EURUSD"))
		{
			setEurusd(true);
		}
		else if(symbol.equals("EURJPY"))
		{
			setEurjpy(true);
		}
		else if(symbol.equals("USDJPY"))
		{
			setUsdjpy(true);
		}
		else if(symbol.equals("USDCHF"))
		{
			setUsdchf(true);
		}
		else if(symbol.equals("GBPUSD"))
		{
			setGbpusd(true);
		}
			
	}
}
