package com.btx.logic;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;

public class ThreadHandler implements ThreadFactory{

	private String name;
	private Thread curThread;
	
	private List<String> stats;
	
	private BlockingQueue<String> playerLst = new LinkedBlockingQueue<String>();
		
	public ThreadHandler(String name) {
		this.name = name;
		stats = new ArrayList<String>();
	}

	@Override
	public Thread newThread(Runnable runnable) {
		curThread = new Thread(runnable, this.name + "-Thread");
		stats.add(String.format("Created Thread id %d with the name %s on %s",curThread.getId(), curThread.getName(), Calendar.getInstance().getTime()));
		System.out.println("Thread Name:"+curThread.getName());
		return curThread;
	}
	
	public String getStats() {
		StringBuffer strBuf = new StringBuffer();
		for(String str : stats){
			strBuf.append(str);
		}
		return strBuf.toString();
	}
	
	public void addPlayer(String strName){
		playerLst.add(strName);
		System.out.println(""+curThread.getName()+" total no of players:"+playerLst.size());
	}
	
	public Thread getThreadByName(String name) {
		if(curThread != null && curThread.getName().equals(name+"-Thread"))
			return curThread;
		return null;
	}
	
}
