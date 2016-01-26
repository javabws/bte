<%@page import="com.btx.controller.ForgetPassword"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>

<!DOCTYPE html>
<html lang="en">

<head>
  
  <title>Reset Password</title>
  <jsp:include page="headu.jsp"></jsp:include>
  <link href="assets/css/coming-soon-404.css" rel="stylesheet">
  
  <script type="text/javascript">
  
  function cpw()
  {
	 var pw=document.getElementById("pw").value;
	 var cpw=document.getElementById("cpw").value;
	 if(pw.trim()==cpw.trim())
		 {
			document.getElementById('val').innerHTML="<font color=\"green\">Password Matched<font>"
				document.getElementById('sub').disabled=true;
		 }
	 else
	 {
		document.getElementById('val').innerHTML="<font color=\"red\">Password Not Matching<font>"
			document.getElementById('sub').disabled=false;
	 }
	 
  }
  
  </script>
</head>
<%
String r=(String)request.getParameter("r");
String submit=(String)request.getParameter("submit");
String msg="",code=null;

if(submit!=null)
{
	String pw=(String)request.getParameter("pw");
	String cpw=(String)request.getParameter("cpw");
	code=(String)request.getParameter("code");
	
	if(submit.equals("Reset Password"))
	{
		if(pw.equals(cpw))
		{
			
			ForgetPassword forgetPassword=new ForgetPassword();
			msg=forgetPassword.resetPassword(pw, code);
	}
		else
		{
			msg="Password Not matching";
		}
	}
}
%>
<body style="background:#F7F7F7;">
    
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>

        <div id="wrapper">
            <div id="login" class="animate form">
                <section class="login_content">
                    <form method="post" action="forget">
                        <h1>Reset Password</h1>
                         <div>
                        	<span id="val">
                        	<font color="red">
                            	<%
                            	
                            	
                            	if(msg!=null)
                            		out.print(msg);
                            	
                            	%>
                            </font>
                        	</span>
                        <div>
                            <input type="password" class="form-control" placeholder="Password" name="pw" id="pw" required="required">
                           
                            
                        </div>
                       
                        <div>
                            <input type="password" class="form-control" placeholder="Confirm Password" name="cpw" id="cpw" required="required" >
                        </div>
                        
                        </div> <input type="hidden"  name="code" id="code" value="<%
                        if(r!=null)
                        	out.print(r);
                        else if(code!=null)
                        	out.print(code);
                        %>">
                        <div>
                            <input type="submit" value="Reset Password" id="sub" name="submit" class="btn btn-default submit"  >
                            <a class="reset_pass" href="login_register">Login Page</a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
						
                           
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1>BinaryTradeExchnage</h1>

                                <p>©2015 All Rights Reserved.BinaryTradeExchnage. Privacy and Terms</p>
                            </div>
                        </div>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
            
    </div>
    </div>

</body>

</html>
