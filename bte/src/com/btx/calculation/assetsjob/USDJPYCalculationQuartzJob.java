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

public class USDJPYCalculationQuartzJob implements Job {
	
//	Calculation usdjpy=new Calculation("USDJPY");
	

	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {

		if(ExecuteBoolens.isUsdjpy())
		{
			System.out.println("CalculationQuartzJob USDJPY Start------------"+new Date().toString());
			Calculation usdjpy=AssetsStatic.getUsdjpy();
//			Calculation usdjpy=new Calculation("USDJPY");
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
			System.out.println("CalculationQuartzJob USDJPY Stop------------"+new Date().toString());
		}
	}

}
