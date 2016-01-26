<%@page import="java.sql.Connection"%>
<%@page import="com.btx.Process.ReferralProcess"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <title>Binary Trade Exchange | Refer a friend</title>
    
    <jsp:include page="headu.jsp"></jsp:include>

</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">

      <jsp:include page="menuu.jsp"></jsp:include>
      <%
      
      UserBean u=(UserBean)session.getAttribute("userBean");
			String submit=(String) request.getParameter("submit");
			String remail="";
			String serverpath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+""+request.getContextPath()+"/referralregister";
			ReferralProcess per=new ReferralProcess();
 		String msg="";
 		int i=0;
if(submit!=null )
{
	remail=(String) request.getParameter("email");
 if(submit.equals("Send"))
 {
 	i=per.sendReferral(u.getEmail(),remail,serverpath);
 	
 }
 if(i>0){
	   msg="Referral link sent";
 }
 else{
	   msg="Referral link not sent...sorry something went wrong";
 } 
}
      
      %>
      
            
          <!-- page content -->
            <div class="right_col" role="main">
            <div class="rowfooter">
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
										<div class="col-md-12 col-sm-12 col-xs-12">
                                                <label  class="">
                                                Your Referral Link: </label>
                                             <label  class="green">  <a  class="green" href="<%=serverpath+"?r="+u.getLink() %>"><%=serverpath+"?r="+u.getLink() %></a></label> 
                                                <label  class=""> Share this Link</label>
                                                
                                           
                                            </div>
              			<div class="x_content">
              			
              			<form action="userrefer" method="post" class="form-horizontal form-label-left">
              			   
              			  				 <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Refer to <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                <input type="text" name="email" id="email" required="required" class="form-control col-md-7 col-xs-12" placeholder="Enter Email id">
                                            </div>
                                              <input type="submit" class="btn btn-success" value="Send" name="submit">
                                        </div>
                                        <div class="clearfix"></div>
                                        
                                        <div class="clearfix"></div>
                                         
              			   
              			</form>
  
              			</div>
              		</div>
               <div class="page-title">
                        <div class="title_left">
                            <h3>
                    Refer A Friend<small> Join a winning team with  BTX  affiliates.</small>
                </h3>
                        </div>  
                    </div>
              <div class="row">
              	<div class="col-md-12">
              		<div class="col-md-12">
              		<div class="panel-body">
                          <h3 class="green"> Apply</h3>
                             
                    <h4> Do you have customers that are interested in Binary Option ?<br>
                   Apply for the BTX  affiliate programme and start earning a share of their deposited amount</h4>
                     </div>
                     <div class="panel-body">
                          <h3 class="green"> Approved</h3>
                             
                    <h4> We review all applications within 48 hours, and once you're approved, you can start earning immediately</h4>
                     </div>
                     
                      <div class="panel-body">
                          <h3 class="green"> Earn!</h3>
                             
                    <h4>You will receive a share of all the deposits  your referred customers fund. No minimum or maximum limits</h4>
                     </div>
                     
                    
   
                     
              	  </div>
              	</div>
              
              </div>
              <div class="title_left">
                          <h3>Why become a BTX affiliate?</h3>
                        </div> 
                        
                        <div class="row">
              	<div class="col-md-12">
              		<div class="col-md-12">
              		<div class="panel-body">
                          <h3 class="green"> Keep earning forever </h3>
                             
                    <h4> You receive revenue share on all your referred customers for as long as they are actively trading with BTX</h4>
                     </div>
                     <div class="panel-body">
                          <h3 class="green">1% Revenue from Deposit</h3>
                             
                    <h4> 1%  of all commissions from the deposited amount by your referred customers will be paid direct to your BTX account.</h4>
                     </div>
                     
                      <div class="panel-body">
                          <h3 class="green"> Banner design </h3>
                             
                    <h4>Upon approval you will have access to a full suite of banners and tracking links.</h4>
                     </div>
                      <div class="panel-body">
                          <h3 class="green"> No minimum targets  </h3>
                             
                    <h4>Whatever level of revenue is achieved will be paid directly to your BTX  account at the beginning of the following month</h4>
                     </div>
                     </div>
                     </div>
                     </div>
                    
   <div class="title_left">
                            <h3>
                   &nbsp;&nbsp;BECOMING AN AFFILIATE
                </h3>
                        </div> 
                        
                        <div class="row">
              	<div class="col-md-12">
              		<div class="col-md-12">
              		<div class="panel-body">
                          <h3 class="green">Who can become a BTX affiliate?</h3>
                             
                    <h4> We welcome affiliate requests from any business or individual who would like to promote us. The majority of our existing affiliates are owners of websites with Binary Option related content, however we assess each affiliate request individually and are looking forward to hearing from you</h4>
                     </div>
                     <div class="panel-body">
                          <h3 class="green">How do I become an affiliate?</h3>
                             
                    <h4> Simply complete our easy 2-step affiliate application here. Once you have submitted your details we will  let you know within 2 business days if you have been accepted onto the programme.</h4>
                     </div>
                     
                      <div class="panel-body">
                          <h3 class="green">Why do I need a BTX  account to become an affiliate? </h3>
                             
                    <h4>Your BTX account will be used to pay you any commission income you earn. From the account, you can withdraw your funds via the payment method of your choice.

                    </h4>
                     </div>
                      <div class="panel-body">
                          <h3 class="green"> How long does the application process take?  </h3>
                             
                    <h4>It takes less than 5 minutes to complete our application form. Once this has been submitted, we will respond to you within 2 business days. For successful applications, we'll send you login details to our affiliate page where you can download marketing materials and start promoting us right away.

                    </h4>
                     </div>
                     
              	  </div>
              	</div>
              
              </div>
              </div>
              <jsp:include page="footeru.jsp"></jsp:include>
              
              </div>
               

                

            </div>
            <!-- /page content -->
        </div>


   
<jsp:include page="footJs.jsp"></jsp:include>

   

</body>

</html>
