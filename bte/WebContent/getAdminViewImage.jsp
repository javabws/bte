<%@page import="com.btx.Bean.UserBean"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
Connection con = null;
PreparedStatement stmt = null;
ResultSet rs = null;
String id=(String)request.getParameter("id");
try {
    
    con = DbDriver.getConnection();
    
    stmt = con.prepareStatement("SELECT id_proof FROM user_details where email=?");
    stmt.setString(1, id);
    rs = stmt.executeQuery();
      OutputStream o = response.getOutputStream();
    if(rs.next())
    {
             Blob bl = rs.getBlob(1);
             byte[] pict = bl.getBytes(1,(int)bl.length());
             response.setHeader("expires", "0"); 
             response.setContentType("image/jpg");
             o.write(pict);
             o.flush();
             o.close();


    }
  

}
catch(Exception ex)
{
	ex.printStackTrace();
   } 


%>