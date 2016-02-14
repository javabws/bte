package com.btx.calculation;

import java.sql.SQLException;
import java.text.ParseException;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.btx.calculation.ExecuteBoolens;

public class CalculationQuartzJob  implements Job{
	
	Calculation eurusd=new Calculation("EURUSD");
	Calculation eurjpy=new Calculation("EURJPY");
	Calculation usdjpy=new Calculation("USDJPY");
	Calculation usdchf=new Calculation("USDCHF");
	Calculation gbpusd=new Calculation("GBPUSD");
	

	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException 
	{
		if(ExecuteBoolens.isEurusd())
		{
			System.out.println("CalculationQuartzJob EURUSD Start------------");
			
			try 
			{
				
				eurusd.setPercentage(CalculateMethods.getPercent());
				eurusd.doGroup();
				eurusd.calculateWinner();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
		}
		if(ExecuteBoolens.isEurjpy())
		{
			System.out.println("CalculationQuartzJob EURJPY Start------------");
			
			try 
			{
				
				eurjpy.setPercentage(CalculateMethods.getPercent());
				eurjpy.doGroup();
				eurjpy.calculateWinner();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			
		}
		if(ExecuteBoolens.isUsdjpy())
		{
			System.out.println("CalculationQuartzJob USDJPY Start------------");
			
			try 
			{
				
				usdjpy.setPercentage(CalculateMethods.getPercent());
				usdjpy.doGroup();
				usdjpy.calculateWinner();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
		}
		if(ExecuteBoolens.isUsdchf())
		{
			System.out.println("CalculationQuartzJob USDCHF Start------------");
			
			try 
			{
				
				usdchf.setPercentage(CalculateMethods.getPercent());
				usdchf.doGroup();
				usdchf.calculateWinner();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}

			
		}
		if(ExecuteBoolens.isGbpusd())
		{
			System.out.println("CalculationQuartzJob GBPUSD Start------------");
			
			try 
			{
				
				gbpusd.setPercentage(CalculateMethods.getPercent());
				gbpusd.doGroup();
				gbpusd.calculateWinner();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
		}
	}

}
