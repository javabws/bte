package com.btx.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class UTCTime {
	String dd,day,month,fullTime;
	int date,hour,minute,second,year;
	
	
	String datearr[]=new String[7];
	String timearr[]=new String[5];
	SimpleDateFormat dateFormatGmt = new SimpleDateFormat("yyyy-M-dd  HH:mm:ss");
	//Local time zone   
	SimpleDateFormat dateFormatLocal = new SimpleDateFormat("yyyy-M-dd  HH:mm:ss");
	public UTCTime() throws ParseException {
		// TODO Auto-generated constructor stub
		dateFormatGmt.setTimeZone(TimeZone.getTimeZone("GMT"));	
		dd=dateFormatLocal.parse( dateFormatGmt.format(new Date())).toString();
		datearr=dd.split(" ");
		timearr=getFullTime().split(":");
		
		}
	//Time in GMT
	public void calculateDate() throws ParseException {
		dateFormatGmt.setTimeZone(TimeZone.getTimeZone("GMT"));	
		dd=dateFormatLocal.parse( dateFormatGmt.format(new Date())).toString();
		datearr=dd.split(" ");
		timearr=getFullTime().split(":");
	}
	public java.util.Date getDateFull() throws ParseException {
		
		java.util.Date currDate=dateFormatLocal.parse( dateFormatGmt.format(new Date()));
		return currDate;
	}
	public void dateSplit() {
		
		datearr=dd.split(" ");
	}
	public String getDay() {
		day=datearr[0];
		return day;
	}
	public String getMonth() {
		month=datearr[1];
		return month;
	}
	public int getDate() {
		date=Integer.parseInt(datearr[2]);
		return date;
	}
	public String getFullTime() {
		fullTime=datearr[3];
		return fullTime;
	}
	public void timeSplit() {
		timearr=fullTime.split(":");
	}
	public int getHour() {
		hour=Integer.parseInt(timearr[0]);
		return hour;
	}
	public int getMinute() {
		minute=Integer.parseInt(timearr[1]);
		return minute;
	}
	public int getSecond() {
		second=Integer.parseInt(timearr[2]);
		return second;
	}
	public int getYear() {
		year=Integer.parseInt(datearr[5]);
		return year;
	}
	
}
