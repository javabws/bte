<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>BTX | Success</title>
<jsp:include page="head.jsp"></jsp:include>
<link href="assets/css/coming-soon-404.css" rel="stylesheet">
 <script type="text/javascript">
      var forward1=<%=(String)request.getAttribute("n")%>;
      if(forward1==1)
      	{	
      		 location.replace("referralsuccess");
      	}
      </script>

</head>
<body>
	<div class="wrapper-table">
		<div class="wrapper-table-cell">
			<div id="content">
				<h3 class="title-404 text-theme-lg">
					
					Registered !
						
				</h3>

				<p class="text-theme-lg subtitle-404">
					
					Successfully Registered and the Verification mail is sent to you <br>Click
					the verification link in the mail to activate your account
				</p>
				<a href="home"
					class="btn btn-sm btn-primary btn-rounded text-theme-lg"><i
					class="fa fa-chevron-left"></i>Back to Homepage</a>
			</div>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="assets/js/jquery.backstretch.js"></script>
	<script src="assets/js/page/page.404.js"></script>

</body>
</html>