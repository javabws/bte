package com.btx.calculation;

import org.quartz.CronScheduleBuilder;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;

public class CalculationQuartzScheduler {
	
private Scheduler scheduler;
	
	public void startShedule() {
		

				JobDetail job = JobBuilder.newJob(CalculationQuartzJob.class)
					.withIdentity("CalculationJob", "group1").build();


				// Trigger the job to run on the next round minute
				Trigger trigger = TriggerBuilder
					.newTrigger()
					.withIdentity("TriggerCalculation", "group1")
					.withSchedule(
							CronScheduleBuilder.cronSchedule("0 0/1 * ? * SUN,MON,TUE,WED,THU,FRI"))
					.build();

				// schedule it
				
				try {
					scheduler = new StdSchedulerFactory().getScheduler();
					scheduler.start();
					scheduler.scheduleJob(job, trigger);
					System.out.println("--------Sheduler Started-------");
				} catch (SchedulerException e) {
					e.printStackTrace();
				}
				
	}
	
	public void stopSheduler() {
		
		try {
			scheduler.shutdown();
			System.out.println("--------Sheduler Shudown-------");
		} catch (SchedulerException e) {
			e.printStackTrace();
		}
	}

}
