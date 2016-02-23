package com.btx.calculation;

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

import com.btx.calculation.CalculateBean;
import com.btx.calculation.CalculateMethods;

public class Calculation {
	
	private String asset_type="";
	
	
	public String getAsset_type() {
		return asset_type;
	}


	public void setAsset_type(String asset_type) {
		this.asset_type = asset_type;
	}


	public Calculation(String a) {
		
		setAsset_type(a);
		try {
			conn=DbDriver.getConnection();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	
	//////////////////////////////////////////////////////////////////
	
	private UTCTime utc;
	private PreparedStatement st = null;
	private Connection conn = null;
	private ResultSet rs;
	private CalculateBean ca;
	private int ccount = 0;
	private int percentage=0;
	private int gcsize = 0, gpsize = 0;
	private Double value = 0.0, expiryValue = 0.0, earned = 0.0,company=0.0;


	private ArrayList<CalculateBean> ulist = new ArrayList<CalculateBean>();
	
	///////////////////////////////////////////////////////////
	
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
			
			private Iterator itr1,itr3;

			public void doGroup() throws SQLException, ParseException {
				gcall = new ArrayList<CalculateBean>();
				gput = new ArrayList<CalculateBean>();
				fcall = new ArrayList<CalculateBean>();
				fput = new ArrayList<CalculateBean>();
				st = conn
						.prepareStatement("select userid,amount,user,type,value from trading where gtype=? and asset=?");
				st.setString(1, "N");
				st.setString(2, asset_type);
				rs = st.executeQuery();
				while (rs.next()) {
//					System.out.println("-----------Entered While Loop------------"+getAsset_type());
					ccount = ccount + 1;
					ca = new CalculateBean();
					ca.setUserid(rs.getLong("userid"));
					ca.setAmount(rs.getInt("amount"));
					ca.setUser(rs.getString("user"));
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
//					System.out.println("Value: "+value);
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
					
					sumcall=0.0;
					sumput=0.0;
					
					gcsize = gcall.size();
					gpsize = gput.size();

//					System.out.println("Before:callgroup = " + gcall.size()
//							+ " putgroup =" + gput.size());
					if(gcall!=null)
					gcall.clear();
					if(gput!=null)
					gput.clear();
					// uvalue.clear();
					
//					System.out.println("After:callgroup = " + gcall.size()
//							+ " putgroup =" + gput.size());
				}

			}

			//---getting expiry value in 60 th second
			public double getExpiryValue() {
				
				String url = "http://localhost:8080/feed/get"+asset_type+".jsp";
				double yvalue=0.0;
		        try {
		            String genreJson = IOUtils.toString(new URL(url));
		            JSONObject genreJsonObject = (JSONObject) JSONValue.parseWithException(genreJson);
		            JSONObject _source=(JSONObject)genreJsonObject.get("_source");
		            yvalue=Double.parseDouble((String)_source.get("yvalue"));
		            System.out.println("Expiry Value: "+yvalue);
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
			
			
			public void calculateWinner() throws SQLException {
				
				System.out.println("Calculate method invoked");
//				gcall = new ArrayList<CalculateBean>();
//				gput = new ArrayList<CalculateBean>();
//				
				expiryValue =getExpiryValue();
//				itr1 = fcall.iterator();
//				itr2 = fput.iterator();
				itr3= uvalue.iterator();
				
				
				System.out.println("Before:Finallcallsize = " + finalcall.size()
						+ "Finalputsize = " + finalput.size());		
				
				
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
					
					
						updateExpiryValue(expiryValue,fpItr);
						updateExpiryValue(expiryValue,fcItr);
						updateRefundAmount();
					
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
				
				
				if(fcall!=null)
				fcall.clear();
				if(fput!=null)
				fput.clear();
				;
//				System.out.println("After:Finallcallsize = " + finalcall.size()
//						+ "Finalputsize = " + finalput.size());
				ExecuteBoolens.setSymbolFalse(getAsset_type());
			}

			
			
			
		public  void updateExpiryValue(Double expiryValue2, Iterator fcItr2) throws SQLException {
				
				
				while (fcItr2.hasNext())
				{
					ca = (CalculateBean) fcItr2.next();
					st = conn
							.prepareStatement("update trading set expiryvalue=? where userid=?");
					st.setDouble(1, expiryValue2);
					st.setLong(2, ca.getUserid());
					st.executeUpdate();
//					System.out.println("===========update Expiry value========="+ca.getUserid());
					
				}
				
				
			}
			
			
			
			double lost=0.0,bal=0.0,refer_amount=0.0;
			Double total=0.0;
			final String wtype="won",ltype="lost",ctype="Gaming";
			String refer="";
			private double winIteration(Double to,@SuppressWarnings("rawtypes") Iterator itr,String type) throws SQLException
			{
//				System.out.println("Win Iteration Method");
				total=to;
				
				while (itr.hasNext() && total!=0.0) 
				{
//					System.out.println("Total:"+total);
					ca=(CalculateBean)itr.next();
					if(total==ca.getAmount())
					{
						earned=(((double)ca.getAmount()/100)*90);
						company=(((double)ca.getAmount()/100)*10);
						total=(total-ca.getAmount());
						
						updateEarned(ca.getUserid(),earned,wtype);
						//updateLost(ca.getUserid(),lost);
						CalculateMethods.updateWallet(wtype, ca.getAmount(), earned, ca.getUser());
						CalculateMethods.updateCompanyWallet(type, company, ca.getUser());
//						System.out.println("Total==Amount");
					}
					else if(total>ca.getAmount())
					{
						earned=(((double)ca.getAmount()/100)*90);
						company=(((double)ca.getAmount()/100)*10);
						total=(total-ca.getAmount());
						updateEarned(ca.getUserid(),earned,wtype);
						//updateLost(ca.getUserid(),lost);
						CalculateMethods.updateWallet(wtype, ca.getAmount(), earned, ca.getUser());
						CalculateMethods.updateCompanyWallet(type, company, ca.getUser());
//						System.out.println("Total>Amount");
					}
					else if(total<ca.getAmount())
					{
						earned=(((double)total/100)*90);
						company=(((double)total/100)*10);
						
						updateEarned(ca.getUserid(),earned,"Partial-"+total);
						//updateLost(ca.getUserid(),lost);
						CalculateMethods.updateWallet(wtype, ca.getAmount(), earned, ca.getUser());
						CalculateMethods.updateCompanyWallet(type, company, ca.getUser());
//						System.out.println("Total<Amount");
						total=(total-total);
					}
					
					refer=CalculateMethods.getReferrer(ca.getUser());
//					System.out.println("Referrer: "+refer);
					if(!refer.equals(""))
					{
						refer_amount=((double)ca.getAmount()/100);
//						System.out.println("Refer Amount: "+(-refer_amount));
						CalculateMethods.updateCompanyWallet("Referral", (-refer_amount), ca.getUser());
						CalculateMethods.updateWallet("refer", 0.0, refer_amount, refer);
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
//						System.out.println("Balance: "+total);
						
						
							
							updateLost(ca.getUserid(), ca.getAmount());
//							CalculateMethods.updateWallet(ltype, ca.getAmount(), ca.getUser());
//							System.out.println("Total==0");
						
							refer=CalculateMethods.getReferrer(ca.getUser());
//							System.out.println("Referrer: "+refer);
							if(!refer.equals(""))
							{
								refer_amount=((double)ca.getAmount()/100);
//								System.out.println("Refer Amount: "+(-refer_amount));
								CalculateMethods.updateCompanyWallet("Referral", (-refer_amount), ca.getUser());
								CalculateMethods.updateWallet("refer", 0.0, refer_amount, refer);
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
			
			public int getPercentage() {
				return percentage;
			}


			public void setPercentage(int percentage) {
				this.percentage = percentage;
			}

			synchronized public  void updateLost(long userid, double lost) throws SQLException {
				st = conn
						.prepareStatement("update trading set lost=?,gtype=? where userid=?");
				st.setDouble(1, lost);
				st.setString(2, ltype);
				st.setLong(3, userid);
				st.executeUpdate();
			}

			
			
			
			synchronized public  void updateEarned(long userid, double earned,String type) throws SQLException {
				st = conn
						.prepareStatement("update trading set earned=?,gtype=? where userid=?");
				st.setDouble(1, earned);
				st.setString(2, type);
				st.setLong(3, userid);
				int m=st.executeUpdate();

			}

			synchronized public void updateExpiryValue(long userid,double expiry) throws SQLException
			{
				st = conn
						.prepareStatement("update trading set expiryvalue=? where userid=?");
				st.setDouble(1, expiry);
				st.setLong(2, userid);
				st.executeUpdate();
			}
			synchronized public void updateRefundAmount() throws SQLException
			{
				st = conn
						.prepareStatement("select * from trading where gtype='N' and asset=?");
				st.setString(1, asset_type);
				rs=st.executeQuery();
				while(rs.next())
				{
					st = conn
							.prepareStatement("update trading set gtype='REFUND' where userid=?");
					st.setLong(1, rs.getLong("userid"));
					st.executeUpdate();
					CalculateMethods.updateWallet(wtype, (double)rs.getInt("amount"), 0.0, rs.getString("user"));
				}
			}


}
