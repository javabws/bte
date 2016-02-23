
<%@page import="com.btx.calculation.ExecuteBoolens"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.util.Date"%>
<%@page import="com.btx.Process.UTCTime"%>
<%@ page import="java.io.*,java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%

UTCTime utc=new UTCTime();
UserBean u = null;
u = (UserBean) session.getAttribute("userBean");
if(u!=null){
String user=(String)u.getEmail();
String sym=(String)request.getParameter("sym");
String amount=(String)request.getParameter("amount");
String type=(String)request.getParameter("type");
Integer ut=Integer.parseInt(request.getParameter("uhour"));

//set true in ExecuteBoolens class  if any user plays in particular assets
if(!ExecuteBoolens.isTrue(sym))
{
	ExecuteBoolens.setSymbolTrue(sym);
// 	GameSchedulerFactory.startAssets(sym);
	System.out.println("Storedata Page: "+ExecuteBoolens.isTrue(sym));
}

String udate="",utime="";
if(ut<10)
	utime="0"+ut.toString();
else
	utime=ut.toString();
utime+=":";
ut=Integer.parseInt(request.getParameter("uminute"));
if(ut<10)
	utime+="0"+ut.toString();
else
	utime+=ut.toString();
ut=Integer.parseInt(request.getParameter("udate"));
if(ut<10)
	udate="0"+ut.toString();
else
	udate=ut.toString();
udate+="-";
ut=Integer.parseInt(request.getParameter("umonth"));
if(ut<10)
	udate+="0"+ut.toString();
else
	udate+=ut.toString();
udate+="-"+(String)request.getParameter("uyear");
double value=Double.parseDouble(request.getParameter("value"));
PreparedStatement st=null;
Connection conn=DbDriver.getConnection();
System.out.println(sym);
st=conn.prepareStatement("Insert into trading (user,amount,type,earned,gtype,value,expiryvalue,currenttime,utime,udate,lost,asset,session_id,status) value(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
Date d=new Date();
st.setString(1, user);
st.setInt(2, Integer.parseInt(amount));
st.setString(3, type);
st.setDouble(4, 0.0);
st.setString(5, "N");
st.setDouble(6, value);
st.setDouble(7, 0.0);
st.setTimestamp(8, utc.getCurrentTimeStamp());
st.setString(9, utime);
st.setString(10, udate);
st.setDouble(11, 0.0);
st.setString(12, sym);
st.setString(13, session.getId());
st.setString(14, "PENDING");
st.executeUpdate();
st=conn.prepareStatement("update wallets set amount=amount-? where email=?");
st.setDouble(1, Double.parseDouble(amount));
st.setString(2, user);
st.executeUpdate();

}
else
{
	System.out.println("--------------Session Expired-----"+new Date().toGMTString());
}
%>