<%@page import="com.btx.calculation.CalcBooleans"%>
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
if(u!=null)
{
String user=(String)u.getEmail();
PreparedStatement st=null;
Connection conn=DbDriver.getConnection();
ResultSet rs;
double amount=0.0,totalAmount=0.0,lost=0.0,prof=0.0,refund=0.0;
int win=0,no_of_calls=0,no_of_puts=0;
st=conn.prepareStatement("select amount,type,gtype,earned,lost from trading where status=? and user=? and session_id=?");
st.setString(1, "PENDING");
st.setString(2,user);
st.setString(3,session.getId());
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
	if(rs.getString("gtype").equals("REFUND"))
	{
		refund+=Double.parseDouble(rs.getString("amount"));
	}
	if(rs.getString("gtype").matches("Partial(.*)"))
	{
		refund+=Double.parseDouble(rs.getString("amount"))-Double.parseDouble(rs.getString("gtype").substring(8));
	}
		
}
if(totalAmount>amount)
	win=1;
%>
	<details>
	<boolean>
	<%=CalcBooleans.isTrue(sym)%>
	</boolean>
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
	<refund>
	<%=refund%>
	</refund>
</details>
</root>
<%
st=conn.prepareStatement("update trading set status=? where status=? and user=? and session_id=?");
st.setString(1, "COMPLETED");
st.setString(2, "PENDING");
st.setString(3, user);
st.setString(4,session.getId());
st.executeUpdate();
}
else
{
	System.out.println("-----------Popupdetails----Expired------");
}

%>