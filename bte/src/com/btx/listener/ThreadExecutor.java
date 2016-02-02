package com.btx.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.btx.thread.ExecuteThread;
import com.btx.thread.TaskExecutor;

public class ThreadExecutor implements ServletContextListener{

	
	private TaskExecutor executor=null;
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		ExecuteThread.stopExecutor();
//		executor.stopThread();
//		System.out.println("--------------Exucutor Stopped-----------");

	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		

		ExecuteThread.startExecutr();
//		executor=new TaskExecutor();
//		executor.startThread(executor);
//		System.out.println("--------------Exucutor Started-----------");
	}

}
