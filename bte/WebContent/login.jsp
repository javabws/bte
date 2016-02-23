<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<%

if(session.getAttribute("userBean")!=null)
{
	%>
	<jsp:forward page="usertrade">
	<jsp:param value="1" name="n"/>
	</jsp:forward>
	<%
}

String referral_code="";

Cookie cookie = null;
Cookie[] cookies = null;
// Get an array of Cookies associated with this domain
cookies = request.getCookies();
if( cookies != null ){
   for (int i = 0; i < cookies.length; i++){
      cookie = cookies[i];
      if (cookie.getName().equals("refferalCode")) {
         referral_code=(String)cookie.getValue();
      }
   }
}
else{
   System.out.println("<h2>No cookies founds</h2>");
}


%>
<!DOCTYPE html>
<html lang="en">

<head>
  
  <title>Login/Register</title>
  <jsp:include page="headu.jsp"></jsp:include>
  <link href="assets/css/coming-soon-404.css" rel="stylesheet">
 <script>  

 var forward1=<%=(String)request.getParameter("n")%>;
 if(forward1==1)
 	{	
 		 location.replace("login_register");
 	}
 
var request;  
function emailCheck()  
{  
	var inputEmail = document.getElementById("inputEmail").value;
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
	document.getElementById('sub').disabled=true;
	document.getElementById('eval').innerHTML="<font color=\"red\">Not available<font>"
	
}else if(val.trim()=="ERROR"){
	document.getElementById('sub').disabled=false;
	document.getElementById('eval').innerHTML="<font color=\"green\">Available<font>"
}
}  
}  
  
function sendInfo()  
{  
	var username = document.getElementById("username").value;
	var password = document.getElementById("pword").value;
var url="check.jsp?un=" + username + "&pw=" +password ;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo1;  
request.open("POST",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo1(){  
if(request.readyState==4){  
var val=request.responseText; 
if(val.trim()=="SUCCESS"){
	document.getElementById('val').innerHTML="<font color=\"green\">Login successful...<font>"
	window.location="usertrade";
}else if(val.trim()=="ERROR"){
	document.getElementById('val').innerHTML="<font color=\"red\">Incorrect Username or Password<font>"
}
else if(val.trim()=="LOGEDIN"){
	document.getElementById('val').innerHTML="<font color=\"red\">Logout existing account to login<font>"
}
}  
}  
</script> 
      
</head>

<body style="background:#F7F7F7;">
    
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>

        <div id="wrapper">
            <div id="login" class="animate form">
                <section class="login_content">
                    <form method="post" action="loginprocess">
                        <h1>Login Form</h1>
                        <div>
                            <input type="text" class="form-control" placeholder="Email" name="un" id="username" required="required" autofocus="autofocus">
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="Password" name="pw" id="pword" required="required">
                            <input type="hidden"  name="r" id="r" value="<%=(String)request.getParameter("r")%>">
                            <input type="hidden"  name="st" id="st" value="<%=(String)request.getParameter("st")%>">
                        </div>
                        <div>
                        	<span id="val">
                        	<font color="red">
                            	<%
                            	String msg="";
                            	msg=request.getParameter("msg");
                            	if(msg!=null)
                            		out.print(msg);
                            	
                            	%>
                            </font>
                        	</span>
                        </div>
                        <div>
                            <input type="submit" value="Login" class="btn btn-success submit"  >
                           <a class="reset_pass" href="forgetpassword">Lost your password?</a>
                           
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
						
                            <p class="change_link">
                                <a href="#toregister" class="to_register btn-orange"> Create Account </a>
                            </p>
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1>BinaryTradeExchange</h1>

                                <p>&copy;2015 All Rights Reserved.BinaryTradeExchange. Privacy and Terms</p>
                            </div>
                        </div>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
            <div id="register" class="animate form">
                <section class="login_content">
                    <form method="post" action="register">
                        <h1>Create Account</h1>
                        <div>
                        	<input type="text" class="form-control" placeholder="First Name" required="" name="firstname">
                        </div>
                        <div>
                        	<input type="text" class="form-control" placeholder="Last Name" required="" name="lastname">
                        </div>
                        <div>
                        	 <input type="password" class="form-control" placeholder="Password" required="" name="password">
                        </div>
                        <div>
                        	<input type="password" class="form-control" placeholder="Confirm Password" required="" name="cpassword">
                        	<span id="eval"></span>
                        </div>
                        <div>
                        	 <input type="email" autocomplete="off" class="form-control" pattern="[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})" id="inputEmail" placeholder="Email" required="" name="email" onkeyup="emailCheck()" >
                        	 
                        </div>
                        <div>
                        	<input type="text" class="form-control" placeholder="Referral Code (Optional)" name="referralcode" value="<%=referral_code%>">
                        </div>
                        <div class="checkbxcol">
                        <input type="checkbox" class="checkbx" required="required"/> I Accept <a href="tch" class="term-cond">Terms and Condition</a>
                        </div>
                        <div>
                            <input disabled type="submit" value="Submit" id="sub" class="btn btn-success submit"  >
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">

                            <p class="change_link">Already a member ?
                                <a href="#tologin" class="to_register"> Log in </a>
                            </p>
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1>BinaryTradeExchange</h1>

                                <p>&copy;2015 All Rights Reserved. BinaryTradeExchange. Privacy and Terms</p>
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
