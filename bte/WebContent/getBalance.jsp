<%@page import="com.btx.Bean.UserBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@ page language="java" contentType="text/xml; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<root>
<%
UserBean u = null;
u = (UserBean) session.getAttribute("userBean");
double amount = 0;
Connection c = DbDriver.getConnection();
PreparedStatement p = c
		.prepareStatement("select amount from wallets where email=?");
p.setString(1, u.getEmail());
ResultSet r = p.executeQuery();
if (r.next()) {
	amount = r.getDouble("amount");
}
%>
<balance><bamount><%=amount%></bamount>
</balance>
</root>