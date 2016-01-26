<%@page import="com.sun.jersey.api.client.ClientResponse"%>
<%@page import="com.btx.Process.EmailProcess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="a" class="com.btx.Bean.ContactHomeBean"></jsp:useBean>
    <jsp:setProperty property="*" name="a"/>
    <%
    
    String submit=null;
    String msg="";
    submit=(String)request.getParameter("submit");
    if(submit!=null)
    {
    	System.out.println(submit);
    	if(submit.equals("Send"))
    	{
    		ClientResponse c=EmailProcess.SendContactSupportMail(a, "sangeethkumar@bluewhalesolutions.com");
    		if(c.getStatus()==200)
    		{
    		msg="Message sent.We will Contact you shortly.";
    		}
    		else
    		{
    			msg="Sorry Something went wrong...Try again";
    		}
    	}
    	
    }
    %>

<!DOCTYPE html>
<html lang="en">
<title>Binaryexchangetrade</title>
<jsp:include page="head.jsp"></jsp:include>
	<jsp:include page="headn.jsp"></jsp:include>
	<script type= "text/javascript" src = "js/countries.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/timezones.full.js"></script>
	<script src="sweetalert/sweetalert-dev.js"></script>
 	 <link rel="stylesheet" href="sweetalert/sweetalert.css">
</head>
	<body>
	<div class="container">
	<jsp:include page="menun.jsp"></jsp:include>


    <!-- SECTION -->
    <!--===============================================================-->
    
     
        
          <div class="col-md-5">
      
            <h3 class="title-md text-theme hr-left">Contact Form</h3>
            <form class="form-bg text-theme" id="contact" name="contact" method="post" action="contact" >
            <div class="form-group">
                <label for="name">Title
                  <span class="required">*</span>
                </label>
                <select class="form-control" required="required" name="title" id="title">
                 <option value="">Choose one</option>
                <option value="Mr">Mr</option>
                <option value="Miss">Ms</option>
 				 <option value="Mrs">Mrs</option>
 				 <option value="Doctor">Dr</option>
  
				</select>
                
              </div>
              <div class="form-group">
                <label for="name">First Name
                  <span class="required">*</span>
                </label>
                <input class="form-control" type="text" name="fname" id="fname" size="30" value="" required="required">
              </div>
              <div class="form-group">
                <label for="name">Last Name
                  <span class="required">*</span>
                </label>
                <input class="form-control" type="text" name="lname" id="lname" size="30" value="" required="required">
              </div>
              <div class="form-group">
                <label for="email">Email
                  <span class="required">*</span>
                </label>
                <input class="form-control" type="text" name="email" id="email" size="30" value="" required="required">
              </div>
              <div class="form-group">
                <label for="name">Country
                  <span class="required">*</span>
                </label>
                <select class="form-control" required="required" name="country" id="country" >
                
				</select>
				  <script language="javascript">
           						 populateCountries("country");
       			</script>
				
              </div>
              <div class="form-group">
                <label for="name">Phone(including your country code)
                  <span class="required">*</span>
                </label>
                 <div class="row">
        <div class="col-sm-3">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="+XXX" required="required" name="pcode" id="pcode"/>
            
          </div>
        </div>
         
        <div class="col-sm-9">
          <div class="input-group">
            <input type="text" class="form-control" required="required" name="pno" id="pno" >
            
          </div>
        </div></div>
                 </div>
              <div class="form-group text-theme">
                <label for="message">Message
                  <span class="required">*</span>
                </label>
                <textarea class="form-control" rows="6" name="message" id="message" required="required"></textarea>
              </div>
              <button id="submit" type="submit" class="btn btn-primary text-theme" name="submit" value="Send"><i class="fa fa-paper-plane"></i>Send Message</button>
            </form>

            

            
          </div>

          
        </div>
     
    <script type="text/javascript">
	function alertt()
	{
		
		var msg="<%=msg%>";
		if(msg!="")
		{
			
			swal(msg);
			
		}
	}
	alertt();
	</script>


	
	<!-- End primary page content -->
	<jsp:include page="footern.jsp"></jsp:include>
</body>
</html>
