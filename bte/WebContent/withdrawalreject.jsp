<%@page import="com.btx.controller.WithdrawalRejectController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
WithdrawalRejectController controller=new WithdrawalRejectController();
String msg=controller.rejectRequest((String)request.getParameter("id"));

%>
<!DOCTYPE style PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src="js/jquery.min.js">

</script>
<style>
#dvLoading
{
   background:#FFF url(images/loader.gif) no-repeat center center;
   height: 100px;
   width: 100px;
   position: fixed;
   z-index: 1000;
   left: 50%;
   top: 50%;
   margin: -25px 0 0 -25px;
}

</style>
<div id="dvLoading" align="center"></div>
<script>
$(window).load(function(){
  $('#dvLoading').fadeOut(5000);
});
</script>
<jsp:forward page="adminwithdrawalrequest">
<jsp:param value="<%=msg %>" name="msg"/>
</jsp:forward>