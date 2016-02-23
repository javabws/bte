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

public class USDCHFCalculationQuartzJob implements Job {
	
//	Calculation usdchf=new Calculation("USDCHF");
	

	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {

		if(ExecuteBoolens.isUsdchf())
		{
			System.out.println("CalculationQuartzJob USDCHF Start------------"+new Date().toString());
			Calculation usdchf=AssetsStatic.getUsdchf();
//			Calculation usdchf=new Calculation("USDCHF");
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
			System.out.println("CalculationQuartzJob USDCHF Stop------------"+new Date().toString());
			
		}
	}

}
