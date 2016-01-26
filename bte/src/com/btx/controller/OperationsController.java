package com.btx.controller;

import java.util.LinkedList;

import com.btx.dao.OperationsDao;
import com.btx.dto.OperationsDto;

public class OperationsController {
	
	private OperationsDao operationsDao=null;
	
	public OperationsController() {
		
		 operationsDao=new OperationsDao();
	}
	
	public LinkedList<OperationsDto> getOperationsData(String email,String range,String operation) {
		
		
		return operationsDao.getOperationsDetails(email, range, operation);
		
	}

}
