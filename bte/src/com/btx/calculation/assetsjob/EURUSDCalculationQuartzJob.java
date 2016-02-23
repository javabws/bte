package com.btx.calculation.assetsjob;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.Date;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.btx.calculation.CalculateMethods;
import com.btx.calculation.Calculation;
import com.btx.calculation.ExecuteBoolens;

public class EURUSDCalculationQuartzJob implements Job {
	
//	Calculation eurusd=new Calculation("EURUSD");
	
	
	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
		
		

		if(ExecuteBoolens.isEurusd())
		{
			System.out.println("CalculationQuartzJob EURUSD Start------------"+new Date().toString());
			Calculation eurusd=AssetsStatic.getEurusd();
//			Calculation eurusd=new Calculation("EURUSD");
			
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
			System.out.println("CalculationQuartzJob EURUSD Stop------------"+new Date().toString());
			
		}
	}

}
