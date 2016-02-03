<%@page import="com.btx.logic.GameSchedulerFactory"%>
<%@page import="com.btx.logic.ExecuteBoolens"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.util.Date"%>
<%@page import="com.btx.Process.UTCTime" %>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
 
<%

UTCTime utc=new UTCTime();
UserBean u = null;
u = (UserBean) session.getAttribute("userBean");
String user=(String)u.getEmail();
String sym=(String)request.getParameter("sym");
String amount=(String)request.getParameter("amount");
String type=(String)request.getParameter("type");
Integer ut=Integer.parseInt(request.getParameter("uhour"));

//set true in ExecuteBoolens class  if any user plays in particular assets
if(!ExecuteBoolens.isTrue(sym))
{
// 	ExecuteBoolens.setSymbolTrue(sym);
	GameSchedulerFactory.startAssets(sym);
	System.out.println("Storedata Page: "+ExecuteBoolens.isTrue(sym));
}

String udate="",utime="";
if(ut>11)
	ut-=12;
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
st=conn.prepareStatement("Insert into "+sym.toLowerCase()+"(user,amount,type,year,month,date,day,hour,minute,second,status,earned,gtype,value,expiryvalue,currenttime,utime,udate,lost,asset) value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
Date d=new Date();
st.setString(1, user);
st.setInt(2, Integer.parseInt(amount));
st.setString(3, type);
st.setInt(4, utc.getYear());
st.setInt(5, utc.getCurrentTimeStamp().getMonth());
st.setInt(6, utc.getDate());
st.setString(7, utc.getDay());
st.setInt(8, utc.getHour());
st.setInt(9, utc.getMinute());
st.setInt(10, utc.getSecond());
st.setString(11, "ACTIVE");
st.setDouble(12, 0.0);
st.setString(13, "N");
st.setDouble(14, value);
st.setDouble(15, 0.0);
st.setTimestamp(16, utc.getCurrentTimeStamp());
st.setString(17, utime);
st.setString(18, udate);
st.setDouble(19, 0.0);
st.setString(20, sym);

st.executeUpdate();



%>