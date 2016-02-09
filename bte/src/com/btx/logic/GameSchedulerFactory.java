package com.btx.logic;

import com.btx.logic.BTEConstants;
import com.btx.logic.GameHandler;


public class GameSchedulerFactory {

	
	static GameHandler eurusdHanlder = new GameHandler(BTEConstants.EURUSD);
	static GameHandler eurjpyHanlder = new GameHandler(BTEConstants.EURJPY);
	static GameHandler usdjpyHanlder = new GameHandler(BTEConstants.USDJPY);
	static GameHandler usdchfHanlder = new GameHandler(BTEConstants.USDCHF);
	static GameHandler gbpusdHanlder = new GameHandler(BTEConstants.GBPUSD);
	
	///////////////////////////////////////////////////////////////////
	public static void startEURUSD() {
		
		System.out.println("--------EURUSD GameHandler---------");
		if(!ExecuteBoolens.isEurusd())
		{
			ExecuteBoolens.setEurusd(true);
		}
		
		eurusdHanlder.getPlayerHandler(BTEConstants.EURUSD).setAsset_type(BTEConstants.EURUSD);
		eurusdHanlder.execute();

	}
	public static void startEURJPY() {
		
		System.out.println("--------EURJPY GameHandler---------");
		if(!ExecuteBoolens.isEurjpy())
		{
			ExecuteBoolens.setEurjpy(true);
		}
		
		eurjpyHanlder.getPlayerHandler(BTEConstants.EURJPY).setAsset_type(BTEConstants.EURJPY);
		eurjpyHanlder.execute();

	}
	public static void startUSDJPY() {
		
		System.out.println("--------USDJPY GameHandler---------");
		if (!ExecuteBoolens.isUsdjpy()) 
		{
			ExecuteBoolens.setUsdjpy(true);
		}
		
		usdjpyHanlder.getPlayerHandler(BTEConstants.USDJPY).setAsset_type(BTEConstants.USDJPY);
		usdjpyHanlder.execute();

	}
	public static void startUSDCHF() {
		
		System.out.println("--------USDCHF GameHandler---------");
		if(!ExecuteBoolens.isUsdchf())
		{
			ExecuteBoolens.setUsdchf(true);
		}
		
		usdchfHanlder.getPlayerHandler(BTEConstants.USDCHF).setAsset_type(BTEConstants.USDCHF);
		usdchfHanlder.execute();
		

	}
	public static void startGBPUSD() {
		
		System.out.println("--------GBPUSD GameHandler---------");
		if(!ExecuteBoolens.isGbpusd())
		{
			ExecuteBoolens.setGbpusd(true);
		}
		
		gbpusdHanlder.getPlayerHandler(BTEConstants.GBPUSD).setAsset_type(BTEConstants.GBPUSD);
		gbpusdHanlder.execute();

	}
	
	public static void startAssets(String symbol) {


		if(symbol.equals("EURUSD"))
		{
			startEURUSD();
		}
		else if(symbol.equals("EURJPY"))
		{
			startEURJPY();
		}
		else if(symbol.equals("USDJPY"))
		{
			startUSDJPY();
		}
		else if(symbol.equals("USDCHF"))
		{
			startUSDCHF();
		}
		else if(symbol.equals("GBPUSD"))
		{
			startGBPUSD();
		}

	}
}