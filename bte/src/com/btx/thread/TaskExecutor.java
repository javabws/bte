package com.btx.thread;

import java.text.ParseException;


public class TaskExecutor implements Runnable{

	private UTCTime utc;
	private Thread t;
	private boolean threadExe=true;
	private EURUSDThread eurusdThread=new EURUSDThread();
	private EURJPYThread eurjpyThread=new EURJPYThread();
	private GBPUSDThread gbpusdThread=new GBPUSDThread();
	private USDCHFThread usdchfThread=new USDCHFThread();
	private USDJPYThread usdjpyThread=new USDJPYThread();
	
	
	//--Start Task Executor
	public void startThread(TaskExecutor task) {
		t = new Thread(task);
		t.setName("Task Executor for Assets");
		t.start();
		
	}
	
	//--Stop Task Executor
	public void stopThread() {
		t.stop();
	}
	@Override
	public void run() {
		System.out.println("Task Executor Run Method");
		
		try {
			utc=new UTCTime();
			
			while(true)
			{
				utc.calculateDate();
			if(utc.getSecond()==52 && threadExe)
			{
				
				System.out.println("Task Executor 54 ------------");
				threadExe = false;
				
				if(ExecuteBoolens.isEurusd())
				{
					System.out.println("Task Executor EURUSD Start------------");
					
					eurusdThread.threadStart(eurusdThread);
				}
				if(ExecuteBoolens.isEurjpy())
				{
					System.out.println("Task Executor EURJPY Start------------");
					
					eurjpyThread.threadStart(eurjpyThread);
				}
				if(ExecuteBoolens.isUsdjpy())
				{
					System.out.println("Task Executor USDJPY Start------------");
					
					usdjpyThread.threadStart(usdjpyThread);
				}
				if(ExecuteBoolens.isUsdchf())
				{
					System.out.println("Task Executor USDCHF Start------------");
					
					usdchfThread.threadStart(usdchfThread);
				}
				if(ExecuteBoolens.isUsdchf())
				{
					System.out.println("Task Executor USDCHF Start------------");
					
					usdchfThread.threadStart(usdchfThread);
				}
				if(ExecuteBoolens.isGbpusd())
				{
					System.out.println("Task Executor GBPUSD Start------------");
					
					gbpusdThread.threadStart(gbpusdThread);
				}
			}
			if(utc.getSecond()==3 && !threadExe )
			{
				System.out.println("Task Executor 02 ------------");
				threadExe=true;
				if(eurusdThread.getStatus())
				{
					System.out.println("Task Executor EURUSD Stop------------");
					eurusdThread.threadStop();
				}
				if(eurjpyThread.getStatus())
				{
					System.out.println("Task Executor EURJPY Stop------------");
					eurjpyThread.threadStop();
				}
				if(usdjpyThread.getStatus())
				{
					System.out.println("Task Executor USDJPY Stop------------");
					usdjpyThread.threadStop();
				}
				if(usdchfThread.getStatus())
				{
					System.out.println("Task Executor USDCHF Stop------------");
					usdjpyThread.threadStop();
				}
				if(gbpusdThread.getStatus())
				{
					System.out.println("Task Executor GBPUSD Stop------------");
					gbpusdThread.threadStop();
				}
				ExecuteBoolens.setEurusd(false);
				ExecuteBoolens.setEurjpy(false);
				ExecuteBoolens.setUsdchf(false);
				ExecuteBoolens.setUsdjpy(false);
				ExecuteBoolens.setGbpusd(false);
				
			}
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	

}
