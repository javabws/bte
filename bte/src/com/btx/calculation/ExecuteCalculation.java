package com.btx.calculation;

import java.util.Date;

import com.mysql.fabric.xmlrpc.base.Data;

public class ExecuteCalculation {
	
	private static Calculation eurusd=new Calculation("EURUSD");
	private static int min_eurusd=0;
	public static void startCalculation(String s) {
		
		if(s.equals("EURUSD"))
		{
			if(min_eurusd!=new Date().getMinutes())
			{
//			eurusd.doCalculation();
			min_eurusd=new Date().getMinutes();
			}
			else
			{
				ExecuteBoolens.setSymbolFalse(s);
			}
			
		}
		else if(s.equals("EURJPY"))
		{
		}
		else if(s.equals("USDJPY"))
		{
		}
		else if(s.equals("USDCHF"))
		{
		}
		else if(s.equals("GBPUSD"))
		{
		}
		
	}

}
