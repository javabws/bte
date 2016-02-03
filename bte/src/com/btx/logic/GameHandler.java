package com.btx.logic;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public class GameHandler {

	private String groupType;
	private Map<String, PlayerHandler> assetGame = new HashMap<String, PlayerHandler>();
	private ExecutorService executor;
	private UTCTime utcTime=null;
	
	public GameHandler(String groupType) {
		System.out.println("-------GameHandler-------");
		this.groupType = groupType;
		createPlayerHandler(groupType);
		executor = Executors.newCachedThreadPool(getThread());
	}

	private void createPlayerHandler(String key) {
		if(!assetGame.containsKey(key)) {
			PlayerHandler ph = new PlayerHandler();
			assetGame.put(key, ph);
		}
		System.out.println("-------createPlayerHandler Method------");
	}
	
	public PlayerHandler getPlayerHandler(String key) {
		return assetGame.get(key);
	}
	
	public ThreadHandler getThread(){
		System.out.println("-----getthread");
		return new ThreadHandler(groupType);
	}
	
	public void execute(){
		executor.execute(getPlayerHandler(groupType));
		try {
			utcTime=new UTCTime();
			
			executor.awaitTermination((60-utcTime.getSecond()), TimeUnit.SECONDS);
			ExecuteBoolens.setSymbolFalse(groupType);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("--------------Execute Method");
		
	}
	
	public void submit(){
		Future<?> futureRes = executor.submit(getPlayerHandler(groupType));
		try {
			utcTime=new UTCTime();
			
			executor.awaitTermination((60-utcTime.getSecond()), TimeUnit.SECONDS);
			ExecuteBoolens.setSymbolFalse(groupType);
			if(futureRes.get()==null){
				System.out.println("Executed successfully...");
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println("-------------Submit method");
	}

}
