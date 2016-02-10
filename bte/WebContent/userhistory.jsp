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
st=conn.prepareStatement("select utime as utime,udate as udate,earned as earned,type as type,amount as amount,asset as asset,value as value,currenttime as c from eurusd where user =? and status=? union all select utime as utime,udate as udate,earned as earned,type as type,amount as amount,asset as asset,value as value,currenttime as c from eurjpy where user =? and status=? union all select utime as utime,udate as udate,earned as earned,type as type,amount as amount,asset as asset,value as value,currenttime as c from usdjpy where user =? and status=? union all select utime as utime,udate as udate,earned as earned,type as type,amount as amount,asset as asset,value as value,currenttime as c from usdchf where user =? and status=? union all select utime as utime,udate as udate,earned as earned,type as type,amount as amount,asset as asset,value as value,currenttime as c from gbpusd where user =? and status=? order by c desc limit 20");
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
		<%=rs.getString(1)%>
		</utime>
		<udate>
		<%=rs.getString(2)%>
		</udate>
		<currency>
			<%=rs.getString("asset") %>
		</currency>
		<earned>
			<%=rs.getDouble("earned") %>
		</earned>
		<type>
			<%=rs.getString(4) %>
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