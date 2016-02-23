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

public class EURJPYCalculationQuartzJob implements Job {
	
//	Calculation eurjpy=new Calculation("EURJPY");
	

	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
		

		if(ExecuteBoolens.isEurjpy())
		{
			System.out.println("CalculationQuartzJob EURJPY Start------------"+new Date().toString());
			Calculation eurjpy=AssetsStatic.getEurjpy();
//			Calculation eurjpy=new Calculation("EURJPY");
			
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
			System.out.println("CalculationQuartzJob EURJPY Stop------------"+new Date().toString());
			
		}
	}

}
