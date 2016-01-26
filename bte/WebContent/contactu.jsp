<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  
  	<title>Binary Trade Exchange | Contact</title>
   <jsp:include page="headu.jsp"></jsp:include>

</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">

           <jsp:include page="menuu.jsp"></jsp:include>
  
          <!-- page content -->
            <div class="right_col" role="main">
            <div class="x_panel">
            <div class="x_title">
                                  
                                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Contact Form </h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                       
                                        
                                       
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br>
                                    <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">

 										<div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Title">Title <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                             <select class="form-control">
               											  <option value="">Choose one</option>
               											 <option value="Mr">Mr</option>
               											 <option value="Miss">Ms</option>
 														 <option value="Mrs">Mrs</option>
 														 <option value="Doctor">Dr</option>
  
											</select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12" data-parsley-id="1842"><ul class="parsley-errors-list" id="parsley-id-1842"></ul>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12" data-parsley-id="0633"><ul class="parsley-errors-list" id="parsley-id-0633"></ul>
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Country <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                           <select class="form-control">
               											 <option value="">Choose one</option>
               											 <option value="USA">USA</option>
              										   <option value="Malaysia">Malaysia</option>
  														<option value="uk">UK</option>
 														 <option value="Japan">Japan</option>
 															 <option value="Australia">Australia</option>
  
											</select>   </div>
                                        </div>
                                         <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Phone(including your country code)</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                          <div class="col-sm-3">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="+XXX" required=""/>
            
          </div>
        </div>
         
        <div class="col-sm-9">
          <div class="input-group">
            <input type="text" class="form-control" >
            
          </div>
        </div></div>
                                        </div>
                                         <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Message </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                       <textarea class="form-control" rows="6" name="message" id="message" required=""></textarea>      </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <button type="submit" class="btn btn-success">Submit</button>
                                            </div>
                                        </div>

                                    </form>
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
