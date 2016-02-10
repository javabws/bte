package com.btx.controller;

import com.btx.dao.WithdrawalRejectDao;

public class WithdrawalRejectController {

	private WithdrawalRejectDao rejectDao=null;

	public WithdrawalRejectController() {
		rejectDao=new WithdrawalRejectDao();
	}

	public String rejectRequest(String id) {
		
		
		return rejectDao.withdrawalRejectUpdate(Integer.parseInt(id));
		
	}
}
