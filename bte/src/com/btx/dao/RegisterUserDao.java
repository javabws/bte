package com.btx.dao;

/***
 * Partially refactored by S.K.Venkat on 20-Dec-2015 
 ***/

import com.btx.dao.UserOperationsDao;
import com.btx.dto.RegisterBean;
import com.btx.util.Util;
import com.sun.jersey.api.client.ClientHandlerException;

public class RegisterUserDao
{
	private UserOperationsDao usrOperations;

	public RegisterUserDao()
	{
		usrOperations = new UserOperationsDao();	 
	}


	@SuppressWarnings("unused")
	public boolean registerUser(RegisterBean r, String serverpath,boolean isReferral,String referrerid,String refereeid)
	{
		boolean isRegistered = false;
		String stat = "Inactive";

		String vcode = Util.randomString();

		if (usrOperations.createProfileTxn(r, vcode, isReferral, referrerid, refereeid, 0.0)) {
			try{
				EmailDao.SendVerificationCode(vcode, r.getEmail(),serverpath);
				isRegistered = true;
			}
			catch(ClientHandlerException e){
				System.out.print("User Registration Failed.");
			}
		}
		return isRegistered;
	}

}
