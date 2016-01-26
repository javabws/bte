
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.btx.Process.WalletProcess"%>
<%@page import="com.btx.Bean.UserBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>Binaryexchangetrade</title>
	<jsp:include page="headn.jsp"></jsp:include>
</head>
<body>
  <%
      UserBean u=null;
  if(session.getAttribute("userBean")!=null)
  {
	  u=(UserBean)session.getAttribute("userBean");
  }
  else
  {
	  %>
	  <jsp:forward page="expire"></jsp:forward>
	  <%
  }
			
 		%>
	<div class="container">
	
	<!-- Static navbar -->
	
   
    
       <jsp:include page="menun.jsp"></jsp:include>
       <div class="row">
       <div class="banner">
       
       </div>
       
       </div>
                                           
   	<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 col-lg-offset-1">
				<ul >
				<li class="user_comment_list-head">
				<h4>General Discussions</h4>
				</li>
				
					
					<%
 String month[]={"January","February","March","April","May","June","July","August","September","October","November","December"};                 
                                Connection c=DbDriver.getConnection();
                                PreparedStatement p=c.prepareStatement("select * from forum_posts where status='proceed' AND discussion_id='1'");
                                ResultSet r=p.executeQuery();
                               int count=1;
                                %>
					
					<%while(r.next()) {%>
					<li class="user_comment_list">
						<p class="msg"><%=r.getString("posts") %></p>
						
						
						<div class="poestdate_colum"> Posted by 
							<a href="javascript:void(0);" class="comment_username"><%=r.getString("firstname") %></a>on 
							<span class="datetime"><%String s=r.getTimestamp("post_time").toString();
							String m=s.substring(5, 7);
							String d=s.substring(8, 11);
							String y=s.substring(0, 4);
							int i=Integer.parseInt(m);
						out.print(month[i-1]);
						out.print(" "+d);
						out.print(" , "+y);	
							%></span>
						</div>
						</li>
						<%count++;}%>
						
						 <li class="user_comment_list-comment">
                        	<form action="forumrequest" method="post" >     
								<div class="form-group">
									<div class="col-md-6 col-sm-6 col-xs-6">
                                    	<label  for="Comment"><br>Post your Comment <span class="required">*<h6>(your comment will be shown here after the approval of admin)</h6></span> </label><br/>
                                        <textarea rows="5" cols="100" name="post" id="post" required="required" class="form-control col-md-5 col-xs-8"></textarea>
                                        <input type="hidden" name="user" id="user" value="<%=u.getEmail() %>" required="required" >
                                        <input type="hidden" name="id" id="id" value="1" required="required" >
                                        <input type="hidden" name="firstname" id="user" value="<%=u.getFirstname() %>" required="required" >
                                        <input type="submit" Value="Post" class="btn btn-success md-btn" />
									</div>
								</div>
							</form>
						</li>	
					
				</ul>
			</div>
			
		</div>
	</div><!-- End primary page content -->
  	<jsp:include page="footern.jsp"></jsp:include>
	
</body>
</html>
