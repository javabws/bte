package com.btx.calculation;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class CalculationListener implements ServletContextListener {
	
	private CalculationQuartzScheduler scheduler=new CalculationQuartzScheduler();

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
		System.out.println("======Listener Destroy Method=========");
		
		scheduler.stopSheduler();
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {

		System.out.println("======Listener Init Method=========");
		
		scheduler.startShedule();;
		
	}

}
