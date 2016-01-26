package com.btx.controller;

import com.btx.dao.PersonalInfoDao;
import com.btx.dto.UserProfileDto;

public class PersonalInfoController {
	
	
	private PersonalInfoDao personalInfoDao=null;
	
	public PersonalInfoController() {
		
		personalInfoDao=new PersonalInfoDao();
	}
	
	
	//---Get the user details for personal info page
	public UserProfileDto getUserdetails(String email) {
		
		return personalInfoDao.getPersonalInfo(email);
	}
	
	

}
