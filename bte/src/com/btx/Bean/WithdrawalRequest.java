package com.btx.Bean;

public class WithdrawalRequest {
	
	private int id=0;
	private String okpay_id="";
	private String requested_amouunt="";
	private String status="";
	private String requested_time="";
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOkpay_id() {
		return okpay_id;
	}
	public void setOkpay_id(String okpay_id) {
		this.okpay_id = okpay_id;
	}
	public String getRequested_amouunt() {
		return requested_amouunt;
	}
	public void setRequested_amouunt(String requested_amouunt) {
		this.requested_amouunt = requested_amouunt;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRequested_time() {
		return requested_time;
	}
	public void setRequested_time(String requested_time) {
		this.requested_time = requested_time;
	}
	

}
