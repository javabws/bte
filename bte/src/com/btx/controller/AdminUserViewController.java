package com.btx.controller;

import java.util.LinkedList;

import com.btx.dao.AdminUserViewDao;
import com.btx.dto.AdminUserViewDto;



public class AdminUserViewController {
	
private AdminUserViewDao dao=null;
	
	public AdminUserViewController() {
		
		dao=new AdminUserViewDao();
	}
	
	public AdminUserViewDto getOperationsData(String email) {
		
		
		return dao.getUserDetails(email);
		
	}

}
