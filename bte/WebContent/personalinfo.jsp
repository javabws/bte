<%@page import="com.btx.dto.UserProfileDto"%>
<%@page import="com.btx.controller.PersonalInfoController"%>
<%@page import="com.btx.Process.PerProcess"%>
<%@page import="com.btx.Bean.PersonalinfoBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
    <jsp:useBean id="a" class="com.btx.Bean.PersonalinfoBean"></jsp:useBean>
    <jsp:setProperty property="*" name="a"/>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    

    <title>Binary Trade Exchange | Personal Info</title>

    <jsp:include page="headu.jsp"></jsp:include>
	<script type= "text/javascript" src = "js/countries.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/timezones.full.js"></script>
	
</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">


			<%
				UserBean u = (UserBean) session.getAttribute("userBean");
				String submit = (String) request.getParameter("submit");
				PerProcess per = new PerProcess();
				String msg = "", n = "";
				int i = 0;
				if (submit != null) {

					if (submit.equals("first-tab")) {
						i = per.firstTab(a, u.getEmail());
						u.setFirstname(a.getFirstname());
						u.setLastname(a.getLastname());
						n = "1";

					}
					if (submit.equals("second-tab")) {
						i = per.secondTab(a, u.getEmail());
						n = "1";
					}
					if (submit.equals("third-tab")) {
						i = per.thirdTab(a, u.getEmail());
						n = "1";
					}
					if (submit.equals("fourth-tab")) {
						i = per.fourthTab(a, u.getEmail());
						n = "1";

					}
					if (i > 0) {
						msg = "Updated";
					} else {
						msg = "Not updated...sorry something went wrong";
					}
				}
			%>
			<script type="text/javascript">
      var forward1=<%=(String)request.getAttribute("n")%>;
      var forward2=<%=n%>;
      if(forward1==1 || forward2==1)
      	{	
      		 location.replace("userpersonalinfo");
      	}
      </script>
     <jsp:include page="menuu.jsp"></jsp:include>
           <%
           
           PersonalInfoController controller=new PersonalInfoController();
           UserProfileDto userProfileDto=controller.getUserdetails(u.getEmail());
        	   
           %>
  
          <!-- page content -->
            <div class="right_col" role="main">
            <div class="rowfooter">
            <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
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
                                <div class="x_title">
                                <h2> Personal Info</h2>
                                <div class="clearfix"></div>
                                <div class="x_content">
                                <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Contact information</a>
                                            </li>
                                            <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Phone number</a>
                                            </li>
                                            <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Settings</a>
                                            </li>
                                            </ul>
                                            <div id="myTabContent" class="tab-content">
                                            <div class="x_content">
                                    <br>
                                    <div id="myTabContent" class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                                   			 <form action="userpersonalinfo" method="post"  id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left">

										<div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email <span class="Email">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input data-parsley-id="0352" value="<%=userProfileDto.getEmail() %>" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12" type="text"><ul id="parsley-id-0352" class="parsley-errors-list"></ul>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input data-parsley-id="0352" value="<%=userProfileDto.getFirstname() %>" id="firstname" name="firstname" required="required" class="form-control col-md-7 col-xs-12" type="text"><ul id="parsley-id-0352" class="parsley-errors-list"></ul>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input data-parsley-id="7069" id="lastname" value="<%=userProfileDto.getLastname() %>" name="lastname" required="required" class="form-control col-md-7 col-xs-12" type="text"><ul id="parsley-id-7069" class="parsley-errors-list"></ul>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <div id="gender" class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input data-parsley-id="6647" data-parsley-multiple="gender" name="gender" value="male" type="radio"> &nbsp; Male &nbsp;
                                                    </label><ul id="parsley-id-multiple-gender" class="parsley-errors-list"></ul>
                                                    <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input data-parsley-id="6647" data-parsley-multiple="gender" name="gender" value="female" type="radio"> Female
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Birth <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input name="dateofbirth" data-parsley-id="6020" value="<%=userProfileDto.getDateofbirth() %>" id="dateofbirth" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text"><ul id="parsley-id-6020" class="parsley-errors-list"></ul>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Country <span class="required">*</span>
                                            </label>
                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                       			 <select data-parsley-id="0497" id="country" class="form-control" required="" name="country"  >
                                       			 	<%out.print("<option value=\""+userProfileDto.getCountry()+"\">Choose..</option>"); %>
                                                   
                                                </select>
                                                <script language="javascript">
           												 populateCountries("country");
       										  </script>
                                                </div>
                                                </div>
                                                <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">City<span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input data-parsley-id="7069" id="city" name="city" value="<%=userProfileDto.getCity()%>" required="required" class="form-control col-md-7 col-xs-12" type="text"><ul id="parsley-id-7069" class="parsley-errors-list"></ul>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Zip<span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input data-parsley-id="7069" id="zip" name="zip" value="<%=userProfileDto.getZip() %>" required="required" class="form-control col-md-7 col-xs-12" type="text"><ul id="parsley-id-7069" class="parsley-errors-list"></ul>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Address <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input data-parsley-id="7069" id="address" name="address" value="<%=userProfileDto.getZip() %>" required="required" class="form-control col-md-7 col-xs-12" type="text"><ul id="parsley-id-7069" class="parsley-errors-list"></ul>
                                            </div>
                                        </div>
                                        
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                
                                                <button type="submit" class="btn btn-success" name="submit" value="first-tab">Save</button>
                                            </div>
                                        </div>
                                        

                                    </form>
                                </div>
                                
                                
                                            <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                                                <div class="x_content">
                                                 <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <h2>Write phone number
                                                </h2>
                                                </div>
                                                <form action="userpersonalinfo" method="post"  id="demo-form" data-parsley-validate="">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <br>
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Country code</label>
                                                <input data-parsley-id="5117" id="countrycode"  class="form-control" name="countrycode" value="<%=userProfileDto.getCountrycode() %>" required="" type="text">
                                                
                                                
                                                </div>
                                                
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <br>
                                                <label class="control-label col-md-12 col-sm-6 col-xs-12">Write phone number without Country code</label>  
                                                <input data-parsley-id="5117" id="phonenumber" class="form-control" name="phonenumber" value="<%=userProfileDto.getPhonenumber() %>" required="" type="text">
                                                
                                               
                                               
                                                 </div>
                                                <div class="clearfix"></div>
                                                  <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <br><br>
                                                <button type="submit" class="btn btn-success" name="submit" value="second-tab">Save</button>
                                            </div>
                                        </div>
                                                  </form>
                                                      </div>              
                                                </div>
                                                
                                                
                                            <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                                      
                                       
                                               <h2>Change password
                                               </h2>
                                               <div class="x_panel">
                                               <div class="x_content">
                                    <br>
                                    <form  action="userpersonalinfo" method="post" id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Current password <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input data-parsley-id="1997" id="currentpassword" name="currentpassword" value="<%=userProfileDto.getCurrentpassword() %>" required="required" class="form-control col-md-7 col-xs-12" type="text"><ul id="parsley-id-1997" class="parsley-errors-list"></ul>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">New password <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input data-parsley-id="1997" id="newpassword" name="newpassword" required="required" class="form-control col-md-7 col-xs-12" type="text"><ul id="parsley-id-1997" class="parsley-errors-list"></ul>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Repeat password <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input data-parsley-id="1997" id="repeatpassword" name="repeatpassword" required="required" class="form-control col-md-7 col-xs-12" type="text"><ul id="parsley-id-1997" class="parsley-errors-list"></ul>
                                            </div>
                                        </div>
                                         <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                
                                                <button type="submit" class="btn btn-success" name="submit" value="third-tab">Save</button>
                                            </div>
                                        </div>
                                        </form>
                                        </div>
                                        </div>
                                       
                                        <h2>Settings
                                               </h2>
                                               <div class="x_panel">
                                               <div class="x_content">
                                    <br>
                                    <form  action="userpersonalinfo" method="post" id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Currency <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                       			 <select data-parsley-id="0497" id="currency" name="currency" class="form-control" required="">
                                                    <option value="<%=userProfileDto.getCurrency()%>"><%=userProfileDto.getCurrency() %></option>
                                                   
                                                   
 													<option value="USD">USD</option>
 													 
   													
                                                </select>
                                                </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Time zone <span class="required">*</span>
                                            </label>
                                            
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                       			 <select data-parsley-id="0497" name="timezone" id="timezone" class="form-control" required="">
                                                    <option value="<%=userProfileDto.getTimezone()%>"><%=userProfileDto.getTimezone()%></option>
                                                    
                                                </select>
                                                </div>
                                              <script>
    												$('#timezone').timezones();
 											 </script>
                                                    
                                        </div>
                                        
                                         <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                
                                                <button type="submit" class="btn btn-success" name="submit" value="fourth-tab">Save</button>
                                            </div>
                                        </div>
                                        </form>
                                        </div>
                                        </div>
                                        </div>
                                       
                                    
                                        
                                        
                                               </div>
                                              
                                            
                                               </div>
                                             </div>
                                        </div>
                                            </div>
                                            </div>
                                           
                                         </div>
                                        
                                    
            
               
               </div>
               </div>
               </div>
               <jsp:include page="footeru.jsp"></jsp:include>
            </div>
            <!-- /page content -->
        </div>
</div>

   

    

   <jsp:include page="footJs.jsp"></jsp:include>
   

</body>

</html>
