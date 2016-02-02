<%@page import="com.btx.controller.ForgetPassword"%>
<%@page import="com.btx.Process.EmailProcess"%>
<%@page import="org.apache.commons.lang3.RandomStringUtils"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>

<!DOCTYPE html>
<html lang="en">

<head>
  
  <title>Forget password</title>
  <jsp:include page="headu.jsp"></jsp:include>
  <link href="assets/css/coming-soon-404.css" rel="stylesheet">
 <script>  
var request;  
var status=false;
function emailCheck()  
{  
	var inputEmail = document.getElementById("username").value;
var url="emailcheck.jsp?un=" + inputEmail ;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("POST",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText; 
if(val.trim()=="SUCCESS"){
	status=true;
	document.getElementById('eval').innerHTML="<font color=\"green\">Correct Email<font>"
		document.getElementById('submit').disabled=false;
	
}else if(val.trim()=="ERROR"){
	status=false;
	document.getElementById('eval').innerHTML="<font color=\"red\">Incorrect Email<font>"
		document.getElementById('submit').disabled=true;
}
}  
}  
  
function subm()
{
	return status;
	}
</script> 
      
</head>
    <%

String submit=(String)request.getParameter("submit");;
String msg="",code="";
int i=0;

if(submit!=null)
{
	
	String un=(String)request.getParameter("un");
	
	if(submit.equals("Submit"))
	{
		
		String path = request.getScheme() + "://"
				+ request.getServerName() + ""
				+ request.getContextPath() + "/forget";
		ForgetPassword forgetPassword=new ForgetPassword();
		msg=forgetPassword.sendForgetLink(un, path);
		

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
                    <form method="post" action="forgetpassword" onsubmit="return subm()">
                        <h1>Forget Password</h1>
                         <div>
                        	<span id="eval">
                        	<font color="red">
                            	<%
                            	
                            	
                            	if(msg!=null)
                            		out.print(msg);
                            	
                            	%>
                            </font>
                        	</span>
                        </div>
                        <div>
                            <input autocomplete="off" pattern="[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})" type="text" class="form-control" placeholder="Email" name="un" id="username" required="required" onkeyup="emailCheck()" >
                        </div>
                       
                        <div>
                            <input type="submit" value="Submit" id="submit" name="submit" class="btn btn-success submit"  >
                            <a class="reset_pass" href="login_register">Login Page</a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
						
                            
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1>BinaryTradeExchnage</h1>

                                <p>&copy;2015 All Rights Reserved.BinaryTradeExchnage. Privacy and Terms</p>
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
