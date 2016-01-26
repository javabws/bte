<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<!--===============================================================-->
                    
      
        <div class="menu-top menu-top-inverse">
          <div class="container">
            <div class="row">
              <div class="col-sm-5 hidden-xs">
                <a class="title-menu-top display-inline-block" href="mailto:support@btx.com">support@btx.com</a>
              </div>
              <div class="col-sm-7 col-xs-12">
                
                <div class="pull-right">
                  <div class="dropdown dropdown-login pull-left">
                    <button class="btn-menu-top" id="reg" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-signal"></i> Register</button>
                    <div class="dropdown-menu dropdown-menu-right stop-prop" role="menu" aria-labelledby="reg">
                      <div class="wrapper-form-box">
                        <h3>Register</h3>
                        <form id="registerForm" action="register" method="post">
                <div class="form-group">
                  <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-user"></i>
                    </span>
                    <input type="text" class="form-control" placeholder="First Name" required="" name="firstname">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-user"></i>
                    </span>
                    <input type="text" class="form-control" placeholder="Last Name" required="" name="lastname">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-lock"></i>
                    </span>
                    <input type="password" class="form-control" placeholder="Password" required="" name="password">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-unlock"></i>
                    </span>
                    <input type="password" class="form-control" placeholder="Confirm Password" required="" name="cpassword">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-envelope"></i>
                    </span>
                    <input type="email" class="form-control" id="inputEmail" placeholder="Email" required="" name="email" onkeyup="emailCheck()" >
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    
                  	<span id="eval"></span>
                  	
                  </div>
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" required=""> I read <a href="tc">Terms & Conditions</a></label>
                </div>
                <button type="submit" class="btn btn-primary text-theme-xs btn-block">Submit</button>
              </form>
                        
                      </div>
                    </div>
                  </div>
                  
                </div>
                 <script>  
var request;  
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
request.onreadystatechange=getInfo;  
request.open("POST",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
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
                <div class="pull-right">
                
                  <div class="dropdown dropdown-login pull-left">
                    <button class="btn-menu-top" id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i> Log in</button>
                    <div class="dropdown-menu dropdown-menu-right stop-prop" role="menu" aria-labelledby="dLabel">
                      <div class="wrapper-form-box">
                        <h3>Log In</h3>
                        <form>
                          <div class="form-group">
                            <div class="input-group">
                              <span class="input-group-addon"><i class="fa fa-user"></i></span>
                              <input type="text" class="form-control" placeholder="Email" name="username" id="username" required="">
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="input-group">
                              <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                              <input type="password" class="form-control" placeholder="Password" name="pword" id="pword" required="">
                            </div>
                          </div>
                          <div class="form-group">
                  				<div class="input-group">
                     				<div id="msgbox"></div>
                 				</div>
                		</div>
                		<div class="form-group">
                  	<span id="val"></span>
                  	
                  </div>
                          <input type="button" class="btn btn-primary text-theme-xs btn-block" name="login" id="login" value="Login" onclick="sendInfo()" />
                          <a href="#" class="text-theme-xs pull-right a-black">Forgot your password ?</a>
                          </form>
                        
                      </div>
                    </div>
                  </div>
                  
                </div>
               
     
                
                <div class="list-inline social-icons-menu-top pull-right">
                  <a href="#" class="social-hover-v1 a-facebook"></a>
                  <a href="#" class="social-hover-v1 a-google"></a>
                  <a href="#" class="social-hover-v1 a-twitter"></a>
                  <a href="#" class="social-hover-v1 a-youtube"></a>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          <a class="navbar-brand" href="home"><img class="img-responsive" src="assets/images/logo/logo-inverse.png" alt="theme-img"></a>
          </div>

          <div id="navbar" class="navbar-collapse collapse">

            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown">
                <a href="home" ><i class="glyphicon glyphicon-home"></i> Home</a>
                
              </li>
              
                <li class="dropdown">
                <a href="#"  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-building-o"></i> Company</a>
                <ul class="dropdown-menu dropdown-menu-left" role="menu">
                  <li><a href="about">About Us</a></li>
                  <li><a href="whyus.html">Why US</a></li>
                  <li><a href="tc.html">Terms and Conditions</a></li>
                  <li><a href="kyc.html">KYC</a></li>
                  
                </ul>
                
              </li>
              
              
              <li class="dropdown">
                <a href="#"  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-bar-chart"></i> Binary X change</a>
                <ul class="dropdown-menu dropdown-menu-left" role="menu">
                  <li><a href="howitworks.html">How it Works</a></li>
                  <li><a href="advantages.html">Advantages</a></li>
                                    
                </ul>
                
              </li>

<li class="dropdown">
                <a href="http://binaryexchangetrade.com/strategy-binary-option/" ><i class="glyphicon glyphicon-knight"></i> Strategies</a>
                
                
              </li>

             
              
             <li class="dropdown">
                <a href="#"  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">More</a>
                <ul class="dropdown-menu dropdown-menu-left" role="menu">
                   <li >
                <a href="affilateprogram.html" ><i class="fa fa-bullhorn"></i> Affilate Program</a>
                
              </li>
                  <li><a href="http://binaryexchangetrade.com/forum/"><i class="fa fa-list-alt"></i> Forum</a></li>
                  <li><a href="faq"><i class="fa fa-question-circle"></i> F.A.Q</a></li>
                  <li class="dropdown-submenu"><a href="#"><i class="fa fa-credit-card"></i> Payment</a>
                  	<ul class="dropdown-menu" role="menu">
                      <li><a href="deposits.html"><i class="fa fa-plus"></i> Deposit</a></li>
                      <li><a href="withdrawals.html"><i class="fa fa-dollar"></i> Withdrawal</a></li>
                   </ul>
                  	
                  </li>
                  <li><a href="contact"><i class="fa fa-comment"></i> Contact</a></li>
                  
                                    
                </ul>
                
              </li>

              









<!--               <li > -->
<!--                 <a href="education" ><i class="glyphicon glyphicon-book"></i> Education</a> -->
<!--                               </li> -->



<!--              <li > -->
<!--                 <a href="faq" ><i class="glyphicon glyphicon-question-sign"></i> F.A.Q</a> -->
                
<!--               </li> -->
<!--               <li > -->
<!--                 <a href="about" ><i class="glyphicon glyphicon-info-sign"></i> About</a> -->
                
<!--               </li> -->
             
             

              

              

            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </nav>
  