<%@page import="java.io.InputStream"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.Process.WalletProcess"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
    <jsp:useBean id="a" class="com.btx.Bean.WalletBean"></jsp:useBean>
    <jsp:setProperty property="*" name="a"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  
  	<title>Binary Trade Exchange | Withdrawal</title>
   <jsp:include page="headu.jsp"></jsp:include>

</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">



           <jsp:include page="menuu.jsp"></jsp:include>
  
  <%
    UserBean u=(UserBean)session.getAttribute("userBean");
	String submit=(String) request.getParameter("submit");
	WalletProcess per=new WalletProcess();
	String msg="",cla="",n="";
	int i=0,amount=0,j=0;
	boolean aa=true;
	Connection c=DbDriver.getConnection();
	PreparedStatement p=null;
	
    if(submit!=null)
    {
    	System.out.print(submit);
     if(submit.equals("Send"))
     {
    	 n+="1"; 
    	 String okpayid=request.getParameter("okpayid");
    	 String req_amt=request.getParameter("amount");
    	 String user_mail=request.getParameter("umail");
    	i= per.withdrawrequest(okpayid,user_mail, req_amt);	
		    	
     }
    
     if(i>0){
    	   msg="Withdrawal request initated and process takes 2 business days";
    	   cla="success";
     }
     else if(i<1){
    	   msg="Withdrawal process not initated...sorry something went wrong";
    	   cla="danger";
     } 
      
    }
    %>
    
    		  <%
      
			
 		
	 
	 p=c.prepareStatement("select amount from wallets where email=?");
	 p.setString(1, u.getEmail());
	 ResultSet r=p.executeQuery();
	 
	 if(r.next()){
	 	amount=r.getInt("amount");
	 }
	 
      %>
      <script type="text/javascript">
      var forward1=<%=(String)request.getAttribute("n")%>;
      var forward2=<%=n%>;
      if(forward1==1 || forward2==1)
      	{	
      		 location.replace("userwithdrawal");
      	}
      </script>
          <!-- page content -->
            <div class="right_col" role="main">
              <div class="rowfooter">
                <div class="row">

                   
                        
          <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                        
                        <%if(!msg.equals("") ){ %>
             						<div class="alert alert-<%=cla %> alert-dismissible fade in" role="alert">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                                    </button>
                                    <strong><%=msg %></strong> 
                                </div>
										<%}msg=""; %>
                            
                            <div class="x_content">

                                <div class="bs-example" data-example-id="simple-jumbotron">
                                    <div class="jumbotron">
                                        <h1>Withdrawal</h1>
                                        <p>Processing of your request can take 2 business days. A Photo ID copy is required for processing of your request.</p>
                                       
                                    </div>
                                </div>
                                <form action="userwithdrawal" method="post">
                               <div class="form-group">
                               <div class="mid_center">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="okpayid">Okpay id <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="hidden" name="available_amount" id="amt" value=<%=amount %> required="required" class="form-control col-md-7 col-xs-12">
                                                <input type="text" name="okpayid" id="okpayid"  required="required" class="form-control col-md-7 col-xs-12">
                                                <input type="hidden" name="umail" id="umail" value="<%=u.getEmail() %>" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                           <br>
                                            </div>
                                </div>
                                
                                <div class="form-group">
                               <div class="mid_center">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Amount">Amount <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="amount" id="amount" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                           <br>
                                            </div>
                                </div>
                                <div class="form-group">
                                <div class="mid_center">
								
									
								  <input type="image" value="Send" name="submit"  alt="" src="images/okpay.png">	
								
								</div>
								</div>
							 </form>
                            </div>
                        </div>
                    </div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">

							<div class="x_content">
							<form action="imageupload" method="post" enctype="multipart/form-data">
                               <div class="form-group">
                               <div class="mid_center">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="okpayid">Image <span class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-12 col-xs-12">
                                                <input type="file" name="id_proof" id="id_proof" accept=".jpg" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>.
                                             <div class="col-md-9 col-sm-12 col-xs-12 pull-right">
                                           <span class="green "> (less than 1 MB)</span>
                                            </div>
                                           <br>
                                            </div>
                                </div>
                                
                                
                                <div class="form-group">
                                <div class="mid_center">
								
									
								  <input type="submit" value="Upload" name="submit" class="btn btn-primary" >	
								
								</div>
								</div>
							 </form>
							 
								<div class="mid_center">
									<h2 class="pull-left">ID Proof Image</h2>
									<div class="img-preview preview-lg col-9 pull-left"
										style="width: 263px; height: 147.938px;">
										<img
											src="getImage.jsp"
											style="display: block; width: 328.75px; min-width: 0px !important; min-height: 0px !important; max-width: none !important; max-height: none !important; height: 184.922px; margin-left: -32.875px; margin-top: -18.4922px; transform: none;">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            
                            <div class="x_content">

                                <div class="bs-example" data-example-id="simple-jumbotron">
                                   
                                    <div class="mid_center">
                                    <h2>Withdrawal Request</h2>
                                        <p>No Request.</p>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>

            </div>
            </div>
             <jsp:include page="footeru.jsp"></jsp:include>
            
            <!-- /page content -->
        </div>

    </div>
</div>
    

    <jsp:include page="footJs.jsp"></jsp:include>
   

</body>

</html>
