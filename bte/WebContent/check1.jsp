<%@page import="java.sql.Statement"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection" errorPage="error"%>
<%	
	String un=(String)request.getParameter("un");
	String pw=(String)request.getParameter("pw");
	String result="";
	UserBean u=new UserBean();
	Connection con=DbDriver.getConnection();
	
	Statement Stmt = con.createStatement();

    String query = "select * from login_details where email='"+un+"' and password='"+pw+"'";

    ResultSet r = Stmt.executeQuery(query);
	if(r.next()){
		
			
			u.setFirstname(r.getString("first_name"));
			u.setLastname(r.getString("last_name"));
			u.setEmail(r.getString("email"));
			u.setPassword(r.getString("password"));
			session.setAttribute("userBean",u );
			
			System.out.println(r.getString("first_name"));
			result="SUCCESS";

		

		
		
	}else{
		result="ERROR";
	}


	
	out.print(result);
%>