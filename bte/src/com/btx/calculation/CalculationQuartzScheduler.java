package com.btx.calculation;

import org.quartz.CronScheduleBuilder;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;

import com.btx.calculation.assetsjob.EURJPYCalculationQuartzJob;
import com.btx.calculation.assetsjob.EURUSDCalculationQuartzJob;
import com.btx.calculation.assetsjob.GBPUSDCalculationQuartzJob;
import com.btx.calculation.assetsjob.USDCHFCalculationQuartzJob;
import com.btx.calculation.assetsjob.USDJPYCalculationQuartzJob;

public class CalculationQuartzScheduler {

	private Scheduler scheduler;

	private String asset_type="";
	private String cron_pattern="0 0/1 * ? * MON,TUE,WED,THU,FRI";

	public String getAsset_type() {
		return asset_type;
	}

	public void setAsset_type(String asset_type) {
		this.asset_type = asset_type;
	}

	public void startShedule() {

		//Creating JOB for each assets
		JobDetail job_eurusd = JobBuilder.newJob(EURUSDCalculationQuartzJob.class)
				.withIdentity("EURUSDCalculationQuartzJob", "group1").build();
		JobDetail job_eurjpy = JobBuilder.newJob(EURJPYCalculationQuartzJob.class)
				.withIdentity("EURJPYCalculationQuartzJob", "group1").build();
		JobDetail job_gbpusd = JobBuilder.newJob(GBPUSDCalculationQuartzJob.class)
				.withIdentity("GBPUSDCalculationQuartzJob", "group1").build();
		JobDetail job_usdjpy = JobBuilder.newJob(USDJPYCalculationQuartzJob.class)
				.withIdentity("USDJPYCalculationQuartzJob", "group1").build();
		JobDetail job_usdchf = JobBuilder.newJob(USDCHFCalculationQuartzJob.class)
				.withIdentity("USDCHFCalculationQuartzJob", "group1").build();


		// Trigger the job to run on the next round minute
		Trigger trigger_eurjpy = TriggerBuilder
				.newTrigger()
				.withIdentity("TriggerCalculationEURJPY", "group1")
				.withSchedule(
						CronScheduleBuilder.cronSchedule(cron_pattern))
						.build();
		Trigger trigger_eurusd = TriggerBuilder
				.newTrigger()
				.withIdentity("TriggerCalculationEURUSD", "group1")
				.withSchedule(
						CronScheduleBuilder.cronSchedule(cron_pattern))
						.build();
		Trigger trigger_gbpusd = TriggerBuilder
				.newTrigger()
				.withIdentity("TriggerCalculationGBPUSD", "group1")
				.withSchedule(
						CronScheduleBuilder.cronSchedule(cron_pattern))
						.build();
		Trigger trigger_usdchf = TriggerBuilder
				.newTrigger()
				.withIdentity("TriggerCalculationUSDCHF", "group1")
				.withSchedule(
						CronScheduleBuilder.cronSchedule(cron_pattern))
						.build();
		Trigger trigger_usdjpy = TriggerBuilder
				.newTrigger()
				.withIdentity("TriggerCalculationUSDJPY", "group1")
				.withSchedule(
						CronScheduleBuilder.cronSchedule(cron_pattern))
						.build();
		
		// schedule it

		try {
			scheduler = new StdSchedulerFactory().getScheduler();
			scheduler.start();
			scheduler.scheduleJob(job_eurjpy, trigger_eurjpy);
			scheduler.scheduleJob(job_eurusd, trigger_eurusd);
			scheduler.scheduleJob(job_gbpusd, trigger_gbpusd);
			scheduler.scheduleJob(job_usdchf, trigger_usdchf);
			scheduler.scheduleJob(job_usdjpy, trigger_usdjpy);
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
