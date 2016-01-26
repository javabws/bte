<%@page import="com.btx.Bean.UserBean"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="com.btx.Process.UTCTime" %>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
UTCTime utc=new UTCTime();
int date,hour,minute,second;
date=utc.getDate();
hour=utc.getHour();
minute=utc.getMinute();
second=utc.getSecond();

int rows1=0,rows2=0;
UserBean u = null;
u = (UserBean) session.getAttribute("userBean");
String user=(String)u.getEmail();
String sym=(String)request.getParameter("sym");
PreparedStatement st=null;
Connection conn=DbDriver.getConnection();
st=conn.prepareStatement("update "+sym.toLowerCase()+" set status='DELETED' where user=? and date=? and hour=? and (minute=? and second>30)");
if(second>30)
{
st.setString(1, user);
st.setInt(2, date);
st.setInt(3, hour);
st.setInt(4, minute);
}
else
{
	st.setString(1, user);
	st.setInt(2, date);
	st.setInt(3, hour);
	st.setInt(4, minute-1);
}
st.executeUpdate();
if(second<30)
{
st=conn.prepareStatement("update "+sym.toLowerCase()+" set status='DELETED' where user=? and date=? and hour=? and (minute=? and second<30)");
st.setString(1, user);
st.setInt(2, date);
st.setInt(3, hour);
st.setInt(4, minute);
st.executeUpdate();
}


%>