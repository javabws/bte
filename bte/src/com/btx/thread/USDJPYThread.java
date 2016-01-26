package com.btx.thread;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;

import org.apache.commons.collections.map.MultiValueMap;
import org.apache.commons.io.IOUtils;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import com.btx.thread.CalculateBean;
import com.btx.thread.UTCTime;
import com.btx.thread.DbDriver;

public class USDJPYThread implements Runnable {
	
	public boolean getStatus() {
		boolean status=true;
		try
		{
		
		if(t.isAlive())
		{
			status=true;
		}
		else if(!t.isAlive())
		{
			status=false;
		}
		
		}
		catch(NullPointerException e)
		{
			System.out.println("NULL");
			
			status=false;
		}

		return status;
		
		
	}
	
	@SuppressWarnings("deprecation")
	public void threadStop() {
		t.stop();
		
	}
	
	private UTCTime utc;
	private Thread t;
	private PreparedStatement st = null;
	private Connection conn = null;
	private ResultSet rs;
	private CalculateBean ca, ca1;
	private int ccount = 0;
	private boolean threadExe = true, cal = true;
	private int percentage=0;
	
	
	private int gcsize = 0, gpsize = 0;
	private Double value = 0.0, expiryValue = 0.0, earned = 0.0,company=0.0;


	private ArrayList<CalculateBean> ulist = new ArrayList<CalculateBean>();
	private String type = "";
	
	public void threadStart(USDJPYThread c) {
		t = new Thread(c);
		t.setName("TradeLogic");
		t.start();
	}

	@Override
	public void run() {
		System.out.println("-----USDJPY----");
		
		try {
			utc=new UTCTime();
		} catch (ParseException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}

		try {

			conn = DbDriver.getConnection();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		while (true) {

			try {
				utc.calculateDate();
			} catch (ParseException e1) {
				e1.printStackTrace();
			}
			if (utc.getSecond() == 58 && threadExe) {
				try {
					
					doGroup();
					threadExe=false;
				
				}catch (ParseException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (utc.getSecond() == 57) {
				threadExe = true;
				cal = true;
			}

			if (utc.getSecond() == 01 && cal == true ) {
				try {
					percentage=CalculateMethods.getPercent();
					System.out.println("-----USDJPY 01----");
					System.out.println("Calculate winner method calling");
					calculateWinner();
					cal = false;
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
	
	// ------Grouping Method------//
	
		private HashMap<Double, Double> totalcall = new HashMap<Double, Double>();
		private HashMap<Double, Double> totalput = new HashMap<Double, Double>();
		
		private MultiValueMap finalcall=new MultiValueMap();
		private MultiValueMap finalput=new MultiValueMap();
		
		private static ArrayList<CalculateBean> gcall = null;
		private static ArrayList<CalculateBean> gput = null;
		
		private static ArrayList<CalculateBean> fcall = null;
		private static ArrayList<CalculateBean> fput = null;
		
		private LinkedHashSet<Double> uvalue = new LinkedHashSet<Double>();
		
		private Iterator itr2, itr1,itr3,itr4;

		private void doGroup() throws SQLException, ParseException {
			gcall = new ArrayList<CalculateBean>();
			gput = new ArrayList<CalculateBean>();
			fcall = new ArrayList<CalculateBean>();
			fput = new ArrayList<CalculateBean>();
			st = conn
					.prepareStatement("select userid,amount,user,type,hour,minute,second,value from usdjpy where year=? and month=? and date=? and hour=? and (minute=? and second>56) and status=?");
			st.setInt(1, utc.getYear());
			st.setInt(2, utc.getCurrentTimeStamp().getMonth());
			st.setInt(3, utc.getDate());
			st.setInt(4, utc.getHour());
			st.setInt(5, utc.getMinute() - 1);
			st.setString(6, "ACTIVE");
			rs = st.executeQuery();
			while (rs.next()) {
				System.out.println("Entered 1");
				ccount = ccount + 1;
				ca = new CalculateBean();
				ca.setUserid(rs.getLong("userid"));
				ca.setAmount(rs.getInt("amount"));
				ca.setUser(rs.getString("user"));
				ca.setType("call");
				ca.setHour(rs.getInt("hour"));
				ca.setMinute(rs.getInt("minute"));
				;
				ca.setSecond(rs.getInt("second"));
				ca.setType(rs.getString("type"));
				ca.setValue(rs.getDouble("value"));
				ulist.add(ca);
				uvalue.add(rs.getDouble("value"));
			}
			st = conn
					.prepareStatement("select userid,amount,user,type,hour,minute,second,value from usdjpy where year=? and month=? and date=? and hour=? and minute=? and status=?");
			st.setInt(1, utc.getYear());
			st.setInt(2, utc.getCurrentTimeStamp().getMonth());
			st.setInt(3, utc.getDate());
			st.setInt(4, utc.getHour());
			st.setInt(5, utc.getMinute());
			st.setString(6, "ACTIVE");
			rs = st.executeQuery();
			System.out.println("Minute= " + utc.getMinute());
			while (rs.next()) {
				System.out.println("Entered 2");
				ccount = ccount + 1;
				ca = new CalculateBean();
				ca.setUserid(rs.getLong("userid"));
				ca.setAmount(rs.getInt("amount"));
				ca.setUser(rs.getString("user"));
				ca.setHour(rs.getInt("hour"));
				ca.setMinute(rs.getInt("minute"));
				;
				ca.setSecond(rs.getInt("second"));
				ca.setType(rs.getString("type"));
				ca.setValue(rs.getDouble("value"));
				ulist.add(ca);
				uvalue.add(rs.getDouble("value"));
			}
			itr1 = uvalue.iterator();
			Double sumcall = 0.0;
			Double sumput = 0.0;
			while (itr1.hasNext()) {
				value = (Double) itr1.next();
				System.out.println("Value: "+value);
				for (CalculateBean t : ulist) {
					if (value == t.getValue()) {
						if (t.getType().equals("call")) {
							
							gcall.add(t);
							sumcall = sumcall + t.getAmount();
							finalcall.put(value,t );
							fcall.add(t);
							
						} else if (t.getType().equals("put")) {
							
							gput.add(t);
							sumput = sumput + t.getAmount();
							finalput.put(value, t);
							fput.add(t);
							
						}
					}
				}

				totalcall.put(value, sumcall);
				totalput.put(value, sumput);
				
				System.out.println("Before:  Total call: "+sumcall+" Put: "+sumput);
				sumcall=0.0;
				sumput=0.0;
				System.out.println("After:  Total call: "+sumcall+" Put: "+sumput);
				
				gcsize = gcall.size();
				gpsize = gput.size();

				System.out.println("Before:callgroup = " + gcall.size()
						+ " putgroup =" + gput.size());
				if(gcall!=null)
				gcall.clear();
				if(gput!=null)
				gput.clear();
				// uvalue.clear();
				
				System.out.println("After:callgroup = " + gcall.size()
						+ " putgroup =" + gput.size());
			}

		}

		
		//---getting expiry value in 60 th second
		public double getExpiryValue() {
			
			String url = "http://binarytradexchange.com:8080/feed/getUSDJPY.jsp";
			double yvalue=0.0;
	        try {
	            String genreJson = IOUtils.toString(new URL(url));
	            JSONObject genreJsonObject = (JSONObject) JSONValue.parseWithException(genreJson);
	            JSONObject _source=(JSONObject)genreJsonObject.get("_source");
	            yvalue=Double.parseDouble((String)_source.get("yvalue"));
	            System.out.println(yvalue);
	        } catch (IOException e) {
	            e.printStackTrace();
	        } catch (org.json.simple.parser.ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	        return yvalue;
		}
		
//-----------Calculating Winner----//
		private Double totalc=0.0,totalp=0.0,fv=0.0;
		private String win="";
		private Iterator fcItr,fpItr;
		
		
		private void calculateWinner() throws SQLException {
			
			System.out.println("Calculate method invoked");
//			gcall = new ArrayList<CalculateBean>();
//			gput = new ArrayList<CalculateBean>();
//			
			expiryValue = getExpiryValue();
//			itr1 = fcall.iterator();
//			itr2 = fput.iterator();
			itr3= uvalue.iterator();
			
			
			
			while (itr3.hasNext()) {
				fv=(Double) itr3.next();
				totalc=totalcall.get(fv);
				totalp=totalput.get(fv);
				
				fcItr=finalcall.iterator(fv);
				fpItr=finalput.iterator(fv);
				
				
				//-----Call wins
				if(fv<expiryValue)
				{
					win="call";
					totalp=winIteration(totalp, fcItr,win);//--getting the amount from put users and transfered to call users
					
					if(totalp==0.0) //---total put amount is 0 then update the user wallet
					{
						lostIteration(totalp, fpItr);
					}
					else  //-- Remaining amount is transfered to company wallet
					{
						lostIteration(totalp, fpItr);
						CalculateMethods.updateCompanyWallet("put>", totalp, "___");
					}
					
					
				}
				//-----Put wins
				else if(fv>expiryValue)
				{
					win="put";
					totalc=winIteration(totalc, fpItr,win);//--getting the amount from call users and transfered to put users
					
					if(totalc==0.0) //---total call amount is 0 then update the user wallet
					{
						lostIteration(totalc, fcItr);
					}
					else  //-- Remaining amount is transfered to company wallet
					{
						lostIteration(totalc, fcItr);
						CalculateMethods.updateCompanyWallet("call>", totalc, "___");
					}
					
				}
				totalc=0.0;
				totalp=0.0;
				
				
			}
			if(uvalue!=null)
			uvalue.clear();
			if(finalcall!=null)
			finalcall.clear();
			if(finalput!=null)
			finalput.clear();
			if(totalcall!=null)
			totalcall.clear();
			if(totalput!=null)
			totalput.clear();
			if(ulist!=null)
			ulist.clear();
			
			System.out.println("Before:Finallcallsize = " + finalcall.size()
					+ "Finalputsize = " + finalput.size());
			if(fcall!=null)
			fcall.clear();
			if(fput!=null)
			fput.clear();
			;
			System.out.println("After:Finallcallsize = " + finalcall.size()
					+ "Finalputsize = " + finalput.size());
		}

		
		
		double lost=0.0,bal=0.0,refer_amount=0.0;
		Double total=0.0;
		final String wtype="won",ltype="lost",ctype="Gaming";
		String refer="";
		private double winIteration(Double to,@SuppressWarnings("rawtypes") Iterator itr,String type) throws SQLException
		{
			System.out.println("Win Iteration Method");
			total=to;
			
			while (itr.hasNext() && total!=0.0) 
			{
				System.out.println("Total:"+total);
				ca=(CalculateBean)itr.next();
				if(total==ca.getAmount())
				{
					earned=(((double)ca.getAmount()/100)*90);
					company=(((double)ca.getAmount()/100)*10);
					total=(total-ca.getAmount());
					
					updateEarned(ca.getUserid(),earned);
					//updateLost(ca.getUserid(),lost);
					CalculateMethods.updateWallet(wtype, earned, ca.getUser());
					CalculateMethods.updateCompanyWallet(type, company, ca.getUser());
					System.out.println("Total==Amount");
				}
				else if(total>ca.getAmount())
				{
					earned=(((double)ca.getAmount()/100)*90);
					company=(((double)ca.getAmount()/100)*10);
					total=(total-ca.getAmount());
					
					updateEarned(ca.getUserid(),earned);
					//updateLost(ca.getUserid(),lost);
					CalculateMethods.updateWallet(wtype, earned, ca.getUser());
					CalculateMethods.updateCompanyWallet(type, company, ca.getUser());
					System.out.println("Total>Amount");
				}
				else if(total<ca.getAmount())
				{
					earned=(((double)total/100)*90);
					company=(((double)total/100)*10);
					total=(total-total);
					
					updateEarned(ca1.getUserid(),earned);
					//updateLost(ca.getUserid(),lost);
					CalculateMethods.updateWallet(wtype, earned, ca.getUser());
					CalculateMethods.updateCompanyWallet(type, company, ca.getUser());
					System.out.println("Total<Amount");
				}
				
				refer=CalculateMethods.getReferrer(ca.getUser());
				System.out.println("Referrer: "+refer);
				if(!refer.equals(""))
				{
					refer_amount=((double)ca.getAmount()/100);
					System.out.println("Refer Amount: "+(-refer_amount));
					CalculateMethods.updateCompanyWallet("Referral", (-refer_amount), ca.getUser());
					CalculateMethods.updateWallet("refer", refer_amount, refer);
				}
				
				//inserting expiry value
				updateExpiryValue(ca.getUserid(),expiryValue);
				
				earned=0.0;
				lost=0.0;
				company=0.0;
				
				refer_amount=0.0;
				refer="";
			}
			
			System.out.println("Win Iteration Ended");
			
			return total;
			
		}
		
		
		
		private LinkedList<CalculateBean> los=new LinkedList<CalculateBean>();
		private Iterator lositr;
		private double lostIteration(Double to,@SuppressWarnings("rawtypes") Iterator itr) throws SQLException
		{
			System.out.println("Lost Iteration Method");
			total=to;
			earned=0.0;
			lost=0.0;
			bal=0.0;
			
			while(itr.hasNext())
			{
				ca=(CalculateBean) itr.next();
				los.add(ca);
			}
			
			Collections.reverse(los);
			
			lositr=los.iterator();
			
			
				while(lositr.hasNext())
				{
					ca=(CalculateBean)lositr.next();
					System.out.println("Balance: "+total);
					
					
						
						updateLost(ca.getUserid(), ca.getAmount());
						CalculateMethods.updateWallet(ltype, ca.getAmount(), ca.getUser());
						System.out.println("Total==0");
					
						refer=CalculateMethods.getReferrer(ca.getUser());
						System.out.println("Referrer: "+refer);
						if(!refer.equals(""))
						{
							refer_amount=((double)ca.getAmount()/100);
							System.out.println("Refer Amount: "+(-refer_amount));
							CalculateMethods.updateCompanyWallet("Referral", (-refer_amount), ca.getUser());
							CalculateMethods.updateWallet("refer", refer_amount, refer);
						}
					
						
						//inserting expiry value
						updateExpiryValue(ca.getUserid(),expiryValue);
						
					earned=0.0;
					lost=0.0;
					company=0.0;
					bal=0.0;
					
					refer_amount=0.0;
					refer="";
				
				}
				if(los!=null)
				los.clear();
				System.out.println("Lost Iteration Ended");
				
			return total;
		}

		synchronized public  void updateLost(long userid, double lost) throws SQLException {
			st = conn
					.prepareStatement("update usdjpy set lost=?,gtype='lost' where userid=?");
			st.setDouble(1, lost);
			st.setLong(2, userid);
			st.executeUpdate();
		}

		
		
		
		synchronized public  void updateEarned(long userid, double earned) throws SQLException {
			st = conn
					.prepareStatement("update usdjpy set earned=?,gtype='won' where userid=?");
			st.setDouble(1, earned);
			st.setLong(2, userid);
			st.executeUpdate();
		}
		
		synchronized public void updateExpiryValue(long userid,double expiry) throws SQLException
		{
			st = conn
					.prepareStatement("update usdjpy set expiryvalue=? where userid=?");
			st.setDouble(1, expiry);
			st.setLong(2, userid);
			st.executeUpdate();
		}
		
}
