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

public class GBPUSDCalculationQuartzJob implements Job {
	
//	Calculation gbpusd=new Calculation("GBPUSD");
	

	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {

		if(ExecuteBoolens.isGbpusd())
		{
			System.out.println("CalculationQuartzJob GBPUSD Start------------"+new Date().toString());
			Calculation gbpusd=AssetsStatic.getGbpusd();
//			Calculation gbpusd=new Calculation("GBPUSD");
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
			System.out.println("CalculationQuartzJob GBPUSD Stop------------"+new Date().toString());
			
		}
	}

}
