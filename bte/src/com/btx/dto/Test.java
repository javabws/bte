package com.btx.dto;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;


public class Test
{
	
	ArrayList<String> a=new ArrayList<String>();
	
	public void add() {
		
		 a.add("a");
		  a.add("b");
		  a.add("c");
		
	}
	
	public void get() {
		  for (int i = 0; i < a.size(); i++) {
			  
			  System.out.println(a.get(i));
			
		}
		
	}
	
  public static void main(String[] args)
  {
//    System.out.println("sending.....");
//    
//    ClientResponse res=EmailProcess.SendVerificationCode(RandomStringUtils.random(20, true, true), "sangeethjune@gmail.com", "http://google.com");
//    System.out.println("--------------Codes-----------------");
//    System.out.println("Status code: "+res.getClientResponseStatus().getStatusCode());
//    System.out.println("Status INT: "+res.getStatus());
//    System.out.println("status Info code: "+res.getStatusInfo().getStatusCode());
//    System.out.println("status Info ReasonPhrase: "+res.getStatusInfo().getReasonPhrase());
//    System.out.println("status Info String: "+res.getStatusInfo().toString());
//    
//    System.out.println("--------------Codes-----------------");
//    
//    System.out.println("Finished");
	  
	  System.out.println("Started");
	  
	  File f=new File("D:\\a.txt");
	  try {
		f.createNewFile();
		
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	
   }
}
