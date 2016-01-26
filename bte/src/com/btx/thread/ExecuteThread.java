package com.btx.thread;

public class ExecuteThread {
	
	static EURJPYThread eurjpyThread=null;
	static EURUSDThread eurusdThread=null;
	static GBPUSDThread gbpusdThread=null;
	static USDCHFThread usdchfThread=null;
	static USDJPYThread usdjpyThread=null;
	
	
	public static void startThread() {

		eurjpyThread=new EURJPYThread();
		eurjpyThread.threadStart(eurjpyThread);
		eurusdThread=new EURUSDThread();
		eurusdThread.threadStart(eurusdThread);
		gbpusdThread=new GBPUSDThread();
		gbpusdThread.threadStart(gbpusdThread);
		usdchfThread =new USDCHFThread();
		usdchfThread.threadStart(usdchfThread);
		usdjpyThread=new USDJPYThread();
		usdjpyThread.threadStart(usdjpyThread);
		System.out.println("------------------Threads Started-----------");

	}
	
	public static void stopThread() {
		
		    eurjpyThread.threadStop();
		    eurusdThread.threadStop();
		    gbpusdThread.threadStop();
		    usdchfThread.threadStop();
		    usdjpyThread.threadStop();
		    System.out.println("------------------Threads Stopped-----------");
	}

}
