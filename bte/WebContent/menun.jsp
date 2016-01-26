<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <div class="row header_top">
		<div class="col-xs-6 col-sm-6 col-md-6 col-lg-3 col-lg-offset-3">
		</div>
    	<div class="col-xs-6 col-sm-6 col-md-6 col-lg-3 col-lg-offset-3">
                <a href="#" class="topsocial_icon a-facebook"><img alt="" src="images/fb.png" width="18px"></a>
                <a href="#" class="topsocial_icon a-twitter"><img alt="" src="images/tw.png" width="18px"></a>
                <a href="#" class="topsocial_icon a-gplus"><img alt="" src="images/gl.png" width="18px"></a>
                <a href="https://www.youtube.com/embed/4CkqjnAqEAk" class="topsocial_icon a-youtube"><img alt="" src="images/yt.png" width="18px"></a>
    	</div>
    </div>
	<div class="top_header row">
		<div class="col-xs-6 col-sm-6 col-md-8 col-lg-8 "><a class="brand" href="home"><img src="images/logo.jpg" width="350" alt="" title=""></a></div>
		<div class="col-xs-6 col-sm-6 col-md-4 col-lg-4"><a class="head_contact" href="contact"><img src="images/contactus.png" width="350" alt="" title=""></a></div>
		<div id="google_translate_element" class="translate_lang"></div>
	</div>
	<!-- Static navbar -->
	<div class="row">
    <nav class="navbar navbar-default navbar-static-top">
 <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Binary Exchange Trade</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            
			<li class="dropdown">
              <a  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="about">About Us</a></li>
                <li><a href="whybtx">Why BTX</a></li>
              </ul>
            </li>
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Binary Trade XChange <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="howitworks">How It Works</a></li>
                <li><a href="tch">Terms & Condition</a></li>
              </ul>
              </li>
              <%
              UserBean u = null;
              if (session.getAttribute("userBean") != null) {
          		u = (UserBean) session.getAttribute("userBean");
              }
              
              %>
           
           
            <li><a href="strategies">Strategy</a></li>
           
				<li><a href="education">Education</a></li>
				<li><a href="affiliateprogram">Affiliate Program</a></li>
				<li><a href="https://www.youtube.com/embed/4CkqjnAqEAk">Videos</a></li>
				<li><a href="faq">F.A.Q</a></li>
				<%
            	if (session.getAttribute("userBean") != null) {
          		u = (UserBean) session.getAttribute("userBean");
           
            %>
            <li><a href="userforum">Forum</a></li>
            <%
				}else
				{
			%>
				<li><a href="login_register?r=forum">Forum</a></li>
				<%} %>
				
				<%
	if (session.getAttribute("userBean") != null) {
		u = (UserBean) session.getAttribute("userBean");
		%>
		<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More<span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li><a href="usertrade">Trade</a></li>
               <li><a href="logout">Logout</a></li>
              </ul></li>
		
		<%
	}else
	{
	%>

				<li><a href="login_register">Login/Register</a></li>
				<%} %>
          </ul>
        </div>
        </nav>
        </div>