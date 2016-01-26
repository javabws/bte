<%@page import="com.btx.driver.DbSeession"%>
<%@page import="com.btx.Process.ByteArrayConvert"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    
    UserBean u=new UserBean();
    String btx_sess=request.getParameter("i");
    Connection c=DbSeession.getSessionConnection();
    PreparedStatement p=c.prepareStatement("select session_data from sessions where session_id=?");
    p.setString(1, btx_sess);
    ResultSet r=p.executeQuery();
    if(r.next()){
    	//Object o=ByteArrayConvert.getObject(r.getBlob("session_data").getBinaryStream());
    	u=ByteArrayConvert.getJavaObject((byte[])r.getObject("session_data"));
    	session.setAttribute("userBean", u);
    	

    	
    	p=c.prepareStatement("delete from sessions where session_id=?");
    	p.setString(1, btx_sess);
    	p.execute();
    	
    	byte[] data=ByteArrayConvert.getByteArrayObject(u);
    	p=c.prepareStatement("insert into sessions (session_id,session_data) values(?,?)");
    	p.setString(1, session.getId());
    	p.setObject(2, data);
    	p.execute();
    }
    
    %>
<jsp:forward page="usertrade"></jsp:forward>