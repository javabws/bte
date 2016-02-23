package com.btx.calculation.assetsjob;

import com.btx.calculation.Calculation;

public class AssetsStatic {
	
	private static Calculation eurusd=new Calculation("EURUSD");
	private static Calculation eurjpy=new Calculation("EURJPY");
	private static Calculation usdjpy=new Calculation("USDJPY");
	private static Calculation usdchf=new Calculation("USDCHF");
	private static Calculation gbpusd=new Calculation("GBPUSD");
	
	
	public static Calculation getEurusd() {
		return eurusd;
	}
	public static void setEurusd(Calculation eurusd) {
		AssetsStatic.eurusd = eurusd;
	}
	public static Calculation getEurjpy() {
		return eurjpy;
	}
	public static void setEurjpy(Calculation eurjpy) {
		AssetsStatic.eurjpy = eurjpy;
	}
	public static Calculation getUsdjpy() {
		return usdjpy;
	}
	public static void setUsdjpy(Calculation usdjpy) {
		AssetsStatic.usdjpy = usdjpy;
	}
	public static Calculation getUsdchf() {
		return usdchf;
	}
	public static void setUsdchf(Calculation usdchf) {
		AssetsStatic.usdchf = usdchf;
	}
	public static Calculation getGbpusd() {
		return gbpusd;
	}
	public static void setGbpusd(Calculation gbpusd) {
		AssetsStatic.gbpusd = gbpusd;
	}
	
	

}
