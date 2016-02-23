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
st=conn.prepareStatement("select utime ,udate ,earned ,type ,amount ,asset ,value ,userid from trading where user =? order by userid desc limit 20");
st.setString(1, user);
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