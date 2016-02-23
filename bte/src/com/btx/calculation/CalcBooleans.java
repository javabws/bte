package com.btx.calculation;

public class CalcBooleans {
   private static boolean eurusd=false,eurjpy=false,usdchf=false,usdjpy=false,gbpusd=false;

public static boolean isEurusd() {
	return eurusd;
}

public static void setEurusd(boolean eurusd) { 
	CalcBooleans.eurusd = eurusd;
}

public static boolean isEurjpy() {
	return eurjpy;
}

public static void setEurjpy(boolean eurjpy) {
	CalcBooleans.eurjpy = eurjpy;
}

public static boolean isUsdchf() {
	return usdchf;
}

public static void setUsdchf(boolean usdchf) {
	CalcBooleans.usdchf = usdchf;
}

public static boolean isUsdjpy() {
	return usdjpy;
}

public static void setUsdjpy(boolean usdjpy) {
	CalcBooleans.usdjpy = usdjpy;
}

public static boolean isGbpusd() {
	return gbpusd;
}

public static void setGbpusd(boolean gbpusd) {
	CalcBooleans.gbpusd = gbpusd;
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

public static void setSymbolFalse(String symbol) {
	
	
	if(symbol.equals("EURUSD"))
	{
		setEurusd(false);
	}
	else if(symbol.equals("EURJPY"))
	{
		setEurjpy(false);
	}
	else if(symbol.equals("USDJPY"))
	{
		setUsdjpy(false);
	}
	else if(symbol.equals("USDCHF"))
	{
		setUsdchf(false);
	}
	else if(symbol.equals("GBPUSD"))
	{
		setGbpusd(false);
	}
		
}


}
