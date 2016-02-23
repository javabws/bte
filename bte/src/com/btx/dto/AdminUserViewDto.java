package com.btx.dto;

import java.sql.Timestamp;

import com.mysql.jdbc.Blob;

public class AdminUserViewDto {
	
	private String email="";
	private String firstname="";
	private String lastname="";
	private String password="";
	private String gender="";
	private String dob="";
	private String country="";
	private String city="";
	private int zip=0;
	private String address="";
	private String countrycode="";
	private long phoneno=0;
	private String currency="";
	private String timezone="";
	private String defaultlanguage="";
	private String referralcode="";
	private Timestamp time=null;
	private String status="";
	private Blob id_proof=null;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getZip() {
		return zip;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountrycode() {
		return countrycode;
	}
	public void setCountrycode(String countrycode) {
		this.countrycode = countrycode;
	}
	public long getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(long phoneno) {
		this.phoneno = phoneno;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getTimezone() {
		return timezone;
	}
	public void setTimezone(String timezone) {
		this.timezone = timezone;
	}
	public String getDefaultlanguage() {
		return defaultlanguage;
	}
	public void setDefaultlanguage(String defaultlanguage) {
		this.defaultlanguage = defaultlanguage;
	}
	public String getReferralcode() {
		return referralcode;
	}
	public void setReferralcode(String referralcode) {
		this.referralcode = referralcode;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Blob getId_proof() {
		return id_proof;
	}
	public void setId_proof(Blob id_proof) {
		this.id_proof = id_proof;
	}
	
	
	

}
