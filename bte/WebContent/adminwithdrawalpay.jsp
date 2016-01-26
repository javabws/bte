<%@page import="okpay.btxsha"%>
<%@page import="com.btx.Bean.AdminBean"%>
<%@page import="org.apache.commons.lang3.RandomStringUtils"%>
<%@page import="com.btx.Process.ContactSupportProcess"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
    <%
    AdminBean a=null;
    if(session.getAttribute("adminBean")!=null)
    {
    	 a=(AdminBean)session.getAttribute("adminBean");
    }
    else
    {
    	%>
    	<jsp:forward page="adminexpire"></jsp:forward>
    	<%
    }
    %>


<!DOCTYPE html>
<html lang="en">

<head>
  
<script type="text/javascript">
function automanual()
{
	var un="<%=a.getUsernme() %>";
	var pw="<%=a.getPassword() %>";
	
	var uni=document.getElementById("un").value;
	var pwi=document.getElementById("pw").value;
	if(un!=uni && pw!=pwi)
		{
			document.getElementById("aer").innerHTML="<font color=\"red\">Incorrect Username or Password<font>";
			return false;
		}
	else
		{
		return true;
		}
	
}
</script>
    <title>BinaryTradeXchange | Withdrawal Payment</title>

   <jsp:include page="headu.jsp"></jsp:include>
      <link href="css/datatables/tools/css/dataTables.tableTools.css" rel="stylesheet">

    <script src="js/jquery.min.js"></script>

</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">

            

           <jsp:include page="menua.jsp"></jsp:include>


            <!-- page content -->
           
                
                
            <div class="right_col" role="main">
                <div class="">
                    <div class="clearfix"></div>

                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                              
                <div class="row">
                        <div class="col-md-12">

                            <!-- form date pickers -->
                            <div class="x_panel" style="">
                            
                               
                                
                            	  <div class="x_content">
                            	  <div class="title_left">
                            <h3>
                    Contact Support
                </h3>
                        </div>
									  <div class="well" style="overflow: auto">
									  
                                                                        <div class="x_title">
                               
                                <div class="clearfix"></div>
                                <div class="x_content">
                                 <%
                                int id=Integer.parseInt(request.getParameter("id"));
                                Connection c=DbDriver.getConnection();
                                PreparedStatement p=c.prepareStatement("select * from withdrawal_request where id=?");
                                p.setInt(1, id);
                                ResultSet r=p.executeQuery();
                               
                               if(r.next()) { btxsha b=new btxsha();%>
                                <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                <form  class="form-horizontal form-label-left" method="post" onsubmit="return automanual()" action="Result.jsp">
                                            <div id="myTabContent" class="tab-content">
                                            <div class="x_content">
                                    <br>
                                    <div id="myTabContent" class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
													<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("38")%>"> 
													<INPUT TYPE="HIDDEN" NAME="securityToken85" value="<%=b.shabtx()%>" >
													<INPUT TYPE="HIDDEN" NAME="id" value="<%=r.getInt("id")%>" >
										
                                       			 <INPUT TYPE="hidden"  NAME="walletID83" value="OK516282756" >
                                         
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Okpay ID <span class="required">*</span>
                                            </label>
                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                          		<INPUT TYPE="text" readonly="readonly" NAME="receiver87" value="<%=r.getString("okpay_id")%>">
                                          </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Currency <span class="required">*</span>
                                            </label>
                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                          		<INPUT TYPE="text" readonly="readonly" NAME="currency89" value="USD" SIZE=20>
                                          </div>
                                        </div>
                                         
                                         <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Requested amount <span class="required">*</span>
                                            </label>
                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                          		<INPUT TYPE="text" readonly="readonly" NAME="amount91" value="<%=r.getString("requested_amount") %>" >
                                          </div>
                                        </div>
                                        
                                         
                                        <INPUT TYPE="HIDDEN" NAME="comment93" value="<%=r.getString("user_email")%>" >
										<INPUT TYPE="HIDDEN" NAME="isReceiverPaysFees95" value="no" >
                                        <INPUT TYPE="HIDDEN" NAME="invoice97" value="inVoice<%=RandomStringUtils.random(10, true, true)%>">
                                               
                                      
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"> 
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                            		 <button  type="button" name=""  class="btn btn-info btn-lg" data-toggle="modal" data-target=".bs-example-modal-sm">Pay</button>
                				
                                                 </div>
                                        </div>
                                        <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                                    <div class="modal-dialog modal-sm">
                                        <div class="modal-content">

                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel2">Login Credential</h4>
                                            </div>
                                            <div class="modal-body">
                                                <h4>Username</h4>
                                                <p><input type="text" name="un" id="un" required="required"></p>
                                                <h4>Password</h4>
                                                <p><input type="password" name="pw" id="pw" required="required"></p>
                                              	<p id="aer"></p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" name="submit" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                                <button type="submit" name="submit" class="btn btn-primary">Authenticate</button>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                       
                                           <%}
                                        
                                        %>
                                        </form>

                                </div>
                                 
                                               </div>
                                              
                                            
                                               </div>
                                             </div>
                                        </div>
                                            </div>
                                            </div>
                                        
                                        
                                        
                                    </div>
                                    <div class="clearfix"></div>

                                    
                                    
								</div>
								 </div>
                       </div>
                       </div>
                      
                            <!-- /form datepicker -->
                                
                            </div>
                        </div>

                        <br />
                        <br />
                        <br />

                    </div>
                </div>
                    <!-- footer content -->
                <jsp:include page="footeru.jsp"></jsp:include>
                <!-- /footer content -->
                    
                </div>
                <!-- /page content -->
            </div>

        </div>

       
	<script src="js/bootstrap.min.js"></script>