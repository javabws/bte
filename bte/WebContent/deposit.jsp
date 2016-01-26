<%@page import="java.util.HashMap"%>
<%@page import="com.btx.Process.WalletProcess"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error"%>
<jsp:useBean id="a" class="com.btx.Bean.WalletBean"></jsp:useBean>
<jsp:setProperty property="*" name="a" />
<%System.out.println(session.getId()); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<title>Binary Trade Exchange | Deposit</title>

<jsp:include page="headu.jsp"></jsp:include>

</head>


<body class="nav-md">

	<div class="container body">


		<div class="main_container">



			<%
      UserBean u=(UserBean)session.getAttribute("userBean");
      
			String submit=(String) request.getParameter("submit");
			WalletProcess per=new WalletProcess();
 		String msg="";
 		int i=0;
if(submit!=null)
{
	  
 if(submit.equals("Send"))
 {
 	i=per.deposit(a, u.getEmail());
 	
 }
 if(i>0){
	   msg="Amount Deposited to your Wallet";
 }
 else{
	   msg="Not deposited...sorry something went wrong";
 } 
}
      
      %>


			<jsp:include page="menuu.jsp"></jsp:include>
			<!-- page content -->
			<div class="right_col" role="main">

				  <div class="rowfooter">
				<div class="page-title">
					<div class="title_left">
						<h3>Deposit</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="x_panel">
							<%if(!msg.equals("")){ %>
							<div class="well" style="overflow: auto">
								<div class="form-group">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<label class="green"><%=msg %></label>
									</div>
								</div>
							</div>
							<%}msg=""; %>
							<div class="x_content">

								<form method="post" action="https://checkout.okpay.com/"
									class="form-horizontal form-label-left">
									<input type="hidden" name="ok_receiver" value="OK516282756" />
									<input type="hidden" name="ok_payer_email"
										value="<%=u.getEmail()%>" /> <input type="hidden"
										name="ok_item_1_name" value="<%=u.getEmail()%>" /> <input
										type="hidden" name="ok_item_1_type" value="service" /> <input
										type="hidden" name="ok_item_1_article"
										value="<%=session.getId()%>" /> <input type="hidden"
										name="ok_item_1_tax" value="00" />


									<div class="form-group">
										<label class="control-label col-md-3 col-sm-3 col-xs-12"
											for="Amount">Amount <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 col-xs-6">
											<input type="text" name="ok_item_1_price" id="amount"
												required="required" class="form-control col-md-7 col-xs-12">
										</div>
										<label>Min Deposit USD 10</label>
									</div>
									<div class="clearfix"></div>
									<div class="form-group">
										<label for="Currency"
											class="control-label col-md-3 col-sm-3 col-xs-12">Currency</label>
										<div class="col-md-6 col-sm-6 col-xs-6">
											<select name="ok_currency" id="currency" class="form-control">
												<option>USD</option>
											</select>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="form-group">
										<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-5">
											<input type="reset" class="btn btn-primary btn-lg"
												value="Reset" /> <input type="image" class="btn"
												name="submit" alt="OKPAY Payment"
												src="https://download.okpay.com/images_buttons/en/top-up/t17o186x54en.png" />
								

							</div>
						</div>


						</form>

					</div>
				</div>

			</div>

		</div>
<!-- 		<br> -->
<!-- 		<br> -->
<!-- 		<br> -->
<!-- 		<br> -->
<!-- 		<br> -->
<!-- 		<br> -->
<!-- 		<br> -->
<!-- 		<br> -->
<!-- 		<br> -->
<!-- 		<br> -->
</div>
	<jsp:include page="footeru.jsp"></jsp:include>	
	</div>



</div>

</div>

	






	<jsp:include page="footJs.jsp"></jsp:include>



</body>

</html>
