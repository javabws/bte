package com.btx.controller;

import com.btx.dao.ForgetPasswordDao;



public class ForgetPassword {
	
	private ForgetPasswordDao forgetPasswordDao=null;
	
	public ForgetPassword() {
		forgetPasswordDao=new ForgetPasswordDao();
		
	}
	
	//--Send forget password link
	public String sendForgetLink(String un,String path)
	{
		
		String msg="";
		if(forgetPasswordDao.sendForgetLink(un, path))
		{
			msg="Reset Link sent to your mail";
		}
		else{
			msg="Sorry something went wrong";
		}
		return msg;
		
	}
	
	//---Reset password
	public String resetPassword(String pw,String code) {
		
		String msg="";
		String[] details=forgetPasswordDao.isCodeExpired(code);
		if(details!=null)
		{
			if(forgetPasswordDao.resetPassword(pw, code,details[1]));
			{
				if(forgetPasswordDao.changeStatus(Integer.parseInt(details[0])))
				{
					msg="Password Changed";
				}
				else
				{
					msg="Sorry something went wrong";
				}
			}
		}
		else
		{
			msg="This Link is Expired";
		}
		return msg;
	}

}
