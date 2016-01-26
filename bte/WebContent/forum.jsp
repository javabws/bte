<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.Process.WalletProcess"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>

<script type="text/javascript">
var forward1=<%=(String)request.getParameter("n")%>
if(forward1==1)
	{	
		 location.replace("userforum");
	}
</script>
 <script src="sweetalert/sweetalert-dev.js"></script>
 	 <link rel="stylesheet" href="sweetalert/sweetalert.css">
	<%
	String msg="";
	if(request.getParameter("msg")!=null)
	{
		msg=(String)request.getParameter("msg");
	}
	%>
	<title>Binaryexchangetrade</title>
	<jsp:include page="headn.jsp"></jsp:include>
	
</head>
<body>
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
					
                                            <h2>DISCUSSIONS</h2>                      
                                    <div><a href="userforum_1"> <h4>General</h4></a>
                                    <p>Say hello and general discussion</p></div> <br>
                                       
                                        <div><a href="userforum_2"><i ></i><h4>Beginners Questions</h4></a>
                                        <p>Binary options beginner? Ask your (possibly) naive question here and our community will attempt to help you.
</p></div><br>
                                        
                                        <div><a href="userforum_3"><i ></i><h4>Brokers</h4></a>
                                        <p>Information, experiences, questions and such</p><br>
                                        </div>
                                        
                                       <div><a href="userforum_4"><i ></i><h4>Signals/Robots</h4> </a>
                                        <p>Discussion of all those products out there for those of you who do not want to learn how to trade yourselves</p><br>
                                        </div>
                                        <div><a href="userforum_5"><i ></i><h4>Complaints</h4></a>
                                        <p>Complaints about brokers or signal services should be posted here</p><br>
                                        </div>
                                        <div><a href="userforum_6"><h4>Binary Options Strategy</h4></a><br>
                                        <p>General discussion about different binary options strategies and other binary options trading advice</p><br>
                                        </div>
                                        
                                        <div><a href="userforum_7"><h4>Binary Options Trading Examples</h4></a>
                                        <p>Educational/informational examples of trading binary options</p><br>
                                        </div>
                                        <div><a href="userforum_8"><h4>Scams</h4></a>
                                        <p>Know the most effective ways to avoid binary options scams from other traders online. Share your experiences here at our forum and learn how to be vigilant!</p><br>
                                        </div>
                                        <div><a href="userforum_9"><h4>Affiliates</h4></a>
                                        <p>Any discussions about affiliate programmes offered by BTX</p><br>
                                        </div>
                                        
                                        <div><a href="userforum_10"><h4>Others</h4></a> </div>
                                        <p>Discuss any other topic which is not listed above</p><br>
                                       
                                        
                                        

                                    
                                
                                      
					
					
				</ul>
			</div>
			
		</div>
	</div><!-- End primary page content -->
  	<jsp:include page="footern.jsp"></jsp:include>
	<script type="text/javascript">
	function alertt()
	{
		
		var msg="<%=msg%>";
		if(msg!="")
		{
			//alert(msg);
			console.log(msg);
			swal(msg);
			
		}
	}
	alertt();
	</script>
</body>
</html>
