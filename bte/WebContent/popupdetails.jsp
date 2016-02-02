<%@page import="com.btx.Bean.UserBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.btx.Process.UTCTime"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8"%>
<root>
<%
UTCTime utc=new UTCTime();
String sym=(String)request.getParameter("sym");
UserBean u = null;
u = (UserBean) session.getAttribute("userBean");
String user=(String)u.getEmail();
PreparedStatement st=null;
Connection conn=DbDriver.getConnection();
ResultSet rs;
double amount=0.0,totalAmount=0.0,lost=0.0,prof=0.0;
int win=0,no_of_calls=0,no_of_puts=0;
st=conn.prepareStatement("select amount,type,gtype,earned,lost as amount,type,gtype,earned,lost from eurusd where year=? and month=? and date=? and hour=? and minute=? and status=? and user=? union all select amount,type,gtype,earned,lost as amount,type,gtype,earned,lost from usdjpy where year=? and month=? and date=? and hour=? and minute=? and status=? and user=? union all select amount,type,gtype,earned,lost as amount,type,gtype,earned,lost from gbpusd where year=? and month=? and date=? and hour=? and minute=? and status=? and user=? union all select amount,type,gtype,earned,lost as amount,type,gtype,earned,lost from eurjpy where year=? and month=? and date=? and hour=? and minute=? and status=? and user=? union all select amount,type,gtype,earned,lost as amount,type,gtype,earned,lost from usdchf where year=? and month=? and date=? and hour=? and minute=? and status=? and user=?");
st.setInt(1,utc.getYear());
st.setInt(2,utc.getCurrentTimeStamp().getMonth());
st.setInt(3,utc.getDate());
st.setInt(4, utc.getHour());
st.setInt(5, utc.getMinute()-1);
st.setString(6, "ACTIVE");
st.setString(7,user);
st.setInt(8,utc.getYear());
st.setInt(9,utc.getCurrentTimeStamp().getMonth());
st.setInt(10,utc.getDate());
st.setInt(11, utc.getHour());
st.setInt(12, utc.getMinute()-1);
st.setString(13, "ACTIVE");
st.setString(14,user);
st.setInt(15,utc.getYear());
st.setInt(16,utc.getCurrentTimeStamp().getMonth());
st.setInt(17,utc.getDate());
st.setInt(18, utc.getHour());
st.setInt(19, utc.getMinute()-1);
st.setString(20, "ACTIVE");
st.setString(21,user);
st.setInt(22,utc.getYear());
st.setInt(23,utc.getCurrentTimeStamp().getMonth());
st.setInt(24,utc.getDate());
st.setInt(25, utc.getHour());
st.setInt(26, utc.getMinute()-1);
st.setString(27, "ACTIVE");
st.setString(28,user);
st.setInt(29,utc.getYear());
st.setInt(30,utc.getCurrentTimeStamp().getMonth());
st.setInt(31,utc.getDate());
st.setInt(32, utc.getHour());
st.setInt(33, utc.getMinute()-1);
st.setString(34, "ACTIVE");
st.setString(35,user);
rs=st.executeQuery();
while(rs.next())
{
	amount+=Double.parseDouble(rs.getString("amount"));
	totalAmount+=Double.parseDouble(rs.getString("amount"));
	totalAmount-=Double.parseDouble(rs.getString("lost"));
	lost+=Double.parseDouble(rs.getString("lost"));
	totalAmount+=Double.parseDouble(rs.getString("earned"));
	prof+=Double.parseDouble(rs.getString("earned"));
	if(rs.getString("type").equals("call"))
		no_of_calls++;
	else
		no_of_puts++;
}
st=conn.prepareStatement("select amount,type,gtype,earned,lost as amount,type,gtype,earned,lost from eurusd where year=? and month=? and date=? and hour=? and (minute=? and second>56) and status=? and user=? union all select amount,type,gtype,earned,lost as amount,type,gtype,earned,lost from usdjpy where year=? and month=? and date=? and hour=? and (minute=? and second>56) and status=? and user=? union all select amount,type,gtype,earned,lost as amount,type,gtype,earned,lost from gbpusd where year=? and month=? and date=? and hour=? and (minute=? and second>56) and status=? and user=? union all select amount,type,gtype,earned,lost as amount,type,gtype,earned,lost from eurjpy where year=? and month=? and date=? and hour=? and (minute=? and second>56) and status=? and user=? union all select amount,type,gtype,earned,lost as amount,type,gtype,earned,lost from usdchf where year=? and month=? and date=? and hour=? and (minute=? and second>56) and status=? and user=?");
st.setInt(1,utc.getYear());
st.setInt(2,utc.getCurrentTimeStamp().getMonth());
st.setInt(3,utc.getDate());
st.setInt(4, utc.getHour());
st.setInt(5, utc.getMinute()-2);
st.setString(6, "ACTIVE");
st.setString(7,user);
st.setInt(8,utc.getYear());
st.setInt(9,utc.getCurrentTimeStamp().getMonth());
st.setInt(10,utc.getDate());
st.setInt(11, utc.getHour());
st.setInt(12, utc.getMinute()-2);
st.setString(13, "ACTIVE");
st.setString(14,user);
st.setInt(15,utc.getYear());
st.setInt(16,utc.getCurrentTimeStamp().getMonth());
st.setInt(17,utc.getDate());
st.setInt(18, utc.getHour());
st.setInt(19, utc.getMinute()-2);
st.setString(20, "ACTIVE");
st.setString(21,user);
st.setInt(22,utc.getYear());
st.setInt(23,utc.getCurrentTimeStamp().getMonth());
st.setInt(24,utc.getDate());
st.setInt(25, utc.getHour());
st.setInt(26, utc.getMinute()-2);
st.setString(27, "ACTIVE");
st.setString(28,user);
st.setInt(29,utc.getYear());
st.setInt(30,utc.getCurrentTimeStamp().getMonth());
st.setInt(31,utc.getDate());
st.setInt(32, utc.getHour());
st.setInt(33, utc.getMinute()-2);
st.setString(34, "ACTIVE");
st.setString(35,user);
rs=st.executeQuery();
while(rs.next())
{
	amount+=Double.parseDouble(rs.getString("amount"));
	totalAmount+=Double.parseDouble(rs.getString("amount"));
	lost+=Double.parseDouble(rs.getString("lost"));
	totalAmount-=Double.parseDouble(rs.getString("lost"));
	totalAmount+=Double.parseDouble(rs.getString("earned"));
	prof+=Double.parseDouble(rs.getString("earned"));
	if(rs.getString("type").equals("call"))
		no_of_calls++;
	else
		no_of_puts++;
}

if(totalAmount>amount)
	win=1;
%>
	<details>
	<amount>
	<%=amount%>
	</amount>
	<totalAmount>
	<%=totalAmount%>
	</totalAmount>
	<win>
	<%=win%>
	</win>
	<profit>
	<%=prof%>
	</profit>
	<lost>
	<%=lost%>
	</lost>
	<calls>
	<%=no_of_calls%>
	</calls>
	<puts>
	<%=no_of_puts%>
	</puts>
</details>
</root>