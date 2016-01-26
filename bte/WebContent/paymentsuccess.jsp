<%@page import="com.btx.driver.DbSeession"%>
<%@page import="com.btx.Process.ByteArrayConvert"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@page import="com.btx.Process.WalletProcess"%>
<%@page import="com.btx.Bean.WalletBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    
    
    UserBean u=new UserBean();
  
String btx_payer=request.getParameter("ok_payer_email");
String btx_tid="";
btx_tid=request.getParameter("ok_txn_id");
String btx_currency=request.getParameter("ok_txn_currency");
String btx_amt=request.getParameter("ok_item_1_gross");
String btx_sess=request.getParameter("ok_item_1_article");



	
	WalletBean w=new WalletBean();
	w.setAmount(btx_amt);
	w.setCurrency(btx_currency);
	w.setTransaction_id(btx_tid);
	WalletProcess z=new WalletProcess();
	int i=z.deposit(w,u.getEmail());
	//System.out.println("Payment Success page: "+i);
	
	





%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  
  <title>Success</title>
  <jsp:include page="head.jsp"></jsp:include>
  <link href="assets/css/coming-soon-404.css" rel="stylesheet">
</head>

<body>


  <div class="wrapper-table">
    <div class="wrapper-table-cell">
      <div id="content">
        <h3 class="title-404 text-theme-lg">Deposit Success</h3>
        <p class="text-theme-lg subtitle-404">
          Your transaction ID is <%=btx_tid %></p>
        <a href="userdeposit" class="btn btn-sm btn-primary btn-rounded text-theme-lg"><i class="fa fa-chevron-left"></i>Go Back and Trade!</a>
      </div>
    </div>
  </div>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</body>

</html>