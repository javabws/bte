package com.btx.logic;

public class PlayerBean {

	private String userName;
	private String callOrPut;
	private String groupType;
	private Double amount;
	
	public PlayerBean(){
		
	}
	
	public PlayerBean(String usrName, String callOrPut, String groupType, Double amt) {
		this.userName = usrName;
		this.callOrPut = callOrPut;
		this.groupType = groupType;
		this.amount = amt;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCallOrPut() {
		return callOrPut;
	}
	public void setCallOrPut(String callOrPut) {
		this.callOrPut = callOrPut;
	}
	public String getGroupType() {
		return groupType;
	}
	public void setGroupType(String groupType) {
		this.groupType = groupType;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	
}
