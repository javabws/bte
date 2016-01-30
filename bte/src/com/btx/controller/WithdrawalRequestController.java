package com.btx.controller;

import java.util.LinkedList;

import com.btx.Bean.WithdrawalRequest;
import com.btx.dao.WithdrawalRequestDao;

public class WithdrawalRequestController {
	
private WithdrawalRequestDao withdrawalRequestDao=null;
	
	public WithdrawalRequestController() {
		
		withdrawalRequestDao=new WithdrawalRequestDao();
	}
	
	public LinkedList<WithdrawalRequest> getRequestData(String email) {
		
		
		return withdrawalRequestDao.getWithdrawalRequests(email);
		
	}

}
