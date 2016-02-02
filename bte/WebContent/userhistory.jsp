<%@page import="java.util.ArrayList"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8"%>
<root>
<%
UserBean u = null;
u = (UserBean) session.getAttribute("userBean");
String user=(String)u.getEmail();
PreparedStatement st=null;
Connection conn=DbDriver.getConnection();
ResultSet rs;
st=conn.prepareStatement("select userid as id,utime as utime,udate as udate,earned as earned,type as type,amount as amount,asset as asset,value as value,currenttime as currenttime from eurusd where user =? and status=? union all select userid as id,utime as utime,udate as udate,earned as earned,type as type,amount as amount,asset as asset,value as value,currenttime as currenttime from gbpusd where user =? and status=? union all select userid as id,utime as utime,udate as udate,earned as earned,type as type,amount as amount,asset as asset,value as value,currenttime as currenttime from usdjpy where user =? and status=? union all select userid as id,utime as utime,udate as udate,earned as earned,type as type,amount as amount,asset as asset,value as value,currenttime as currenttime from usdchf where user =? and status=? union all select userid as id,utime as utime,udate as udate,earned as earned,type as type,amount as amount,asset as asset,value as value,currenttime as currenttime from eurjpy where user =? and status=? order by id desc limit 20");
st.setString(1, user);
st.setString(2, "ACTIVE");
st.setString(3, user);
st.setString(4, "ACTIVE");
st.setString(5, user);
st.setString(6, "ACTIVE");
st.setString(7, user);
st.setString(8, "ACTIVE");
st.setString(9, user);
st.setString(10, "ACTIVE");
rs=st.executeQuery();
int i=0;
while(rs.next())
{
	i++;
	%>
	<details>
		<utime>
		<%=rs.getString(2)%>
		</utime>
		<udate>
		<%=rs.getString(3)%>
		</udate>
		<currency>
			<%=rs.getString("asset") %>
		</currency>
		<earned>
			<%=rs.getDouble("earned") %>
		</earned>
		<type>
			<%=rs.getString(5) %>
		</type>
		<amount>
			<%=rs.getInt("amount") %>
		</amount>
		<value>
			<%=rs.getDouble("value")%>
		</value>
	</details>
<%
}
%>
</root>