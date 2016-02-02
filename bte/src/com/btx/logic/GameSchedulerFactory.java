package com.btx.logic;

import com.btx.logic.BTEConstants;
import com.btx.logic.GameHandler;


public class GameSchedulerFactory {

	
	///////////////////////////////////////////////////////////////////
	public static void startEURUSD() {
		
		if(!ExecuteBoolens.isEurusd())
		{
			ExecuteBoolens.setEurusd(true);
		}
		GameHandler eurusdHanlder = new GameHandler(BTEConstants.EURUSD);
		eurusdHanlder.getPlayerHandler(BTEConstants.EURUSD).setAsset_type(BTEConstants.EURUSD);
		eurusdHanlder.execute();

	}
	public static void startEURJPY() {
		
		if(!ExecuteBoolens.isEurjpy())
		{
			ExecuteBoolens.setEurjpy(true);
		}
		GameHandler eurjpyHanlder = new GameHandler(BTEConstants.EURJPY);
		eurjpyHanlder.getPlayerHandler(BTEConstants.EURJPY).setAsset_type(BTEConstants.EURJPY);
		eurjpyHanlder.execute();

	}
	public static void startUSDJPY() {
		
		if (!ExecuteBoolens.isUsdjpy()) 
		{
			ExecuteBoolens.setUsdjpy(true);
		}
		GameHandler usdjpyHanlder = new GameHandler(BTEConstants.USDJPY);
		usdjpyHanlder.getPlayerHandler(BTEConstants.USDJPY).setAsset_type(BTEConstants.USDJPY);
		usdjpyHanlder.execute();

	}
	public static void startUSDCHF() {
		if(!ExecuteBoolens.isUsdchf())
		{
			ExecuteBoolens.setUsdchf(true);
		}
		GameHandler usdchfHanlder = new GameHandler(BTEConstants.USDCHF);
		usdchfHanlder.getPlayerHandler(BTEConstants.USDCHF).setAsset_type(BTEConstants.USDCHF);
		usdchfHanlder.execute();
		

	}
	public static void startGBPUSD() {
		if(!ExecuteBoolens.isGbpusd())
		{
			ExecuteBoolens.setGbpusd(true);
		}
		GameHandler gbpusdHanlder = new GameHandler(BTEConstants.GBPUSD);
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