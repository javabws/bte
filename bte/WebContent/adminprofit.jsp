<%@page import="com.btx.Bean.AdminBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<!DOCTYPE html>
<html lang="en">
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
String msg="",cla="";
if(request.getParameter("submit")!=null)
{
	Connection c=DbDriver.getConnection();
    PreparedStatement p=c.prepareStatement("update profit set percentage=? where id=?");
   
	p.setDouble(1, Double.parseDouble((String)request.getParameter("profit")));
	 p.setInt(2, 1);
	int i=p.executeUpdate();
	if(i>0){
		   msg="Profit Changed";
		   cla="success";
	 }
	 else{
		   msg="Not Changed...sorry something went wrong";
		   cla="danger";
	 } 
   
	
}
%>
<head>
    

    <title>BinaryTradeXchange | Wallet & Profit</title>

    
    <link href="css/datatables/tools/css/dataTables.tableTools.css" rel="stylesheet">

    <script src="js/jquery.min.js"></script>

   <jsp:include page="headu.jsp"></jsp:include>
   <script type="text/javascript">
function pro()
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
	return true;
		
	}
	
	</script>

</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">

            

           <jsp:include page="menua.jsp"></jsp:include>
            

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="">
                    <div class="page-title">
                        <div class="title_left">
                            <h3>
                   Wallet & Profit
                    
                </h3>
                        </div>

                        
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                            
                            	
                          <%if(!msg.equals("")){ %>
             						
									<div class="alert alert-<%=cla %> alert-dismissible fade in" role="alert">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                                    </button>
                                    <strong><%=msg %></strong> 
                               		 </div>
										<%}msg="";cla=""; %>
                               
                                <%
                                    Connection c=DbDriver.getConnection();
                                    PreparedStatement p=c.prepareStatement("select * from profit where id=?");
                                    p.setInt(1, 1);
                                  
                                    ResultSet r=p.executeQuery();
                                    if(r.next()){
                                    	
                                   
                                    %>
                                     <div class="x_title">
                                     	Profit
                                     	<div class="clearfix"></div>
                                     </div>
                                <div class="well title_right" style="overflow: auto">
                                	 <form class="form-inline" method="post" action="adminprofit" onsubmit="return pro()">
                                <div class="form-group">
                                    <label for="ex3" class="control-label col-md-6 col-sm-3 col-xs-12 green">Currently: <%=r.getDouble("percentage") %></label>
                                </div>
                                 <%} %>
                                <div class="form-group" class="control-label col-md-6 col-sm-3 col-xs-12">
                                    <label for="ex4" >Value: </label>
                                    <input type="text" name="profit" id="ex4"  class="form-control" placeholder="Enter Percentage <=100" required="required">
                                </div>
                                
                                <button  type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-sm">Update</button>
                              
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
                                
                            </form>
                                </div>
                                <div class="x_title">
                                     	Wallet
                                     	<div class="clearfix"></div>
                                     </div>
                                <div class="well" style="overflow: auto">
                                                                    <%
                                    p=c.prepareStatement("select * from company_wallet where id=?");
                                    p.setInt(1, 1);
                                  
                                    r=p.executeQuery();
                                    if(r.next()){
                                    	
                                   
                                    %>
                                 <div class="col-md-5"> 
                                 			<label class="control-label col-md-6 col-sm-3 col-xs-12"><h4>Name: BinaryTradeExchange</h4> </label>
                                            
                                           </div>
                                           
                                      
                                        <div class="col-md-5">
                                        <label class="control-label col-md-9 col-sm-3 col-xs-12"><h4 class="count green">Amount:  <%=r.getDouble("amount") %></h4> </label>
                                        
                                        </div>
                                        <%}
                                        
                                    String sql="select * from company_wallet_history";
                                    String reportsubmit="";
                                    reportsubmit=(String)request.getParameter("reportsubmit");
                                    if(reportsubmit!=null)
                                    {
                                    	String reportrange=(String)request.getParameter("reportRange");
                                    	if(reportsubmit.equals("Submit"))
                                    	{
                                    		String[] re=reportrange.split(" to ");
                                    		sql="select * from company_wallet_history where time between '"+re[0]+" 01:00:00' and '"+re[1]+" 23:59:00'";
                                    		System.out.println(sql);
                                    	}
                                    }
                                    
                                        
                                    p=c.prepareStatement(sql);
                                    r=p.executeQuery();
          
                                        
                                        %>
                                </div>
                               
                                
                                <div class="x_content">
                                
                                <div class="x_title">
                                     	Wallet Histories
                                     	<div class="clearfix"></div>
                                     </div>
                                     
                                     <div class="well" style="overflow: auto">
                                     <form action="">
                                     <div class="col-md-4 form-group">
                                    <%--<input type="text" class="form-control" data-inputmask="'mask': '99/99/9999'"> --%> 
                                     </div>
                                     <div class="col-md-4">
                                     <div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                                                <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                                                <span>December 30, 2014 - January 28, 2015</span> 
                                                <b class="caret"></b>
                                                <input type="hidden" name="reportRange" value="">
                                            </div>
                                     </div>
                                      <div class="col-md-4">
                                             <button type="submit" name="reportsubmit" class="btn btn-success" data-dismiss="modal" value="Submit">Submit</button>
                                        </div>
                                        </form>
                                        </div>
                                        
                                        
                                        
                                    <table id="example" class="table table-striped responsive-utilities jambo_table">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <input type="checkbox" class="tableflat">
                                                </th>
                                                <th>ID </th>
                                                <th>Date & Time </th>
                                                
                                                <th>Email </th>
                                                <th>Type </th>
                                                <th>Amount </th>
                                                
                                            </tr>
                                        </thead>

                                        <tbody>
                                         <%while(r.next())
                                            	{%>
                                            <tr class="even pointer">
                                           
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" "><%=r.getInt("id") %></td>
                                                <td class=" "><%=r.getDate("time")+" "+r.getTime("time") %> </td>
												<td class=" "><%=r.getString("email") %></td>
                                               <td class=" "><%=r.getString("type") %></td>
                                                <td class="a-right a-right "><%=r.getDouble("amount")%></td>
                                                
                                            </tr>
                                            <%} %>
                                            
                                        </tbody>

                                    </table>
                                </div>
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

    <!-- chart js -->
    <script src="js/chartjs/chart.min.js"></script>
    <!-- bootstrap progress js -->
    <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
    <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
    <!-- icheck -->
    <script src="js/icheck/icheck.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- daterangepicker -->
    <script type="text/javascript" src="js/moment.min2.js"></script>
    <script type="text/javascript" src="js/datepicker/daterangepicker.js"></script>
    <!-- input mask -->
    <script src="js/input_mask/jquery.inputmask.js"></script>
    <!-- knob -->
    <script src="js/knob/jquery.knob.min.js"></script>
    <!-- range slider -->
    <script src="js/ion_range/ion.rangeSlider.min.js"></script>
    <!-- color picker -->
    <script src="js/colorpicker/bootstrap-colorpicker.js"></script>
    <script src="js/colorpicker/docs.js"></script>

    <!-- image cropping -->
    <script src="js/cropping/cropper.min.js"></script>
    <script src="js/cropping/main2.js"></script>
        <!-- Datatables -->
        <script src="js/datatables/js/jquery.dataTables.js"></script>
        <script src="js/datatables/tools/js/dataTables.tableTools.js"></script>
        <script>
            $(document).ready(function () {
                $('input.tableflat').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });
            });

            var asInitVals = new Array();
            
            $(document).ready(function () {
                var oTable = $('#example').dataTable({
                    "oLanguage": {
                        "sSearch": "Search all columns:"
                    },
                    "aoColumnDefs": [
                        {
                            'bSortable': false,
                            'aTargets': [0]
                        } //disables sorting for column one
            ],
                    'iDisplayLength': 12,
                    "sPaginationType": "full_numbers",
                    "dom": 'T<"clear">lfrtip',
                    "tableTools": {
                        "sSwfPath": "js/datatables/tools/swf/copy_csv_xls_pdf.swf"
                    }
                });
                $("tfoot input").keyup(function () {
                    /* Filter on the column based on the index of this element's parent <th> */
                    oTable.fnFilter(this.value, $("tfoot th").index($(this).parent()));
                });
                $("tfoot input").each(function (i) {
                    asInitVals[i] = this.value;
                });
                $("tfoot input").focus(function () {
                    if (this.className == "search_init") {
                        this.className = "";
                        this.value = "";
                    }
                });
                $("tfoot input").blur(function (i) {
                    if (this.value == "") {
                        this.className = "search_init";
                        this.value = asInitVals[$("tfoot input").index(this)];
                    }
                });
            });
        </script>
        
         <!-- datepicker -->
    <script type="text/javascript">
        $(document).ready(function () {

            var cb = function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange_right span').html(start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
                $('#reportrange_right input').val(start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
                //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
            }

            var optionSet1 = {
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2012',
                maxDate: '12/31/2015',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'right',
                buttonClasses: ['btn btn-default'],
                applyClass: 'btn-small btn-primary',
                cancelClass: 'btn-small',
                format: 'MM/DD/YYYY',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Clear',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            };

            $('#reportrange_right span').html(moment().subtract(29, 'days').format('YYYY-MM-DD') + ' to ' + moment().format('YYYY-MM-DD'));
            $('#reportrange_right input').val(moment().subtract(29, 'days').format('YYYY-MM-DD') + ' to ' + moment().format('YYYY-MM-DD'));

            $('#reportrange_right').daterangepicker(optionSet1, cb);

            $('#reportrange_right').on('show.daterangepicker', function () {
                console.log("show event fired");
            });
            $('#reportrange_right').on('hide.daterangepicker', function () {
                console.log("hide event fired");
            });
            $('#reportrange_right').on('apply.daterangepicker', function (ev, picker) {
                console.log("apply event fired, start/end dates are " + picker.startDate.format('YYYY-MM-DD') + " to " + picker.endDate.format('YYYY-MM-DD'));
            });
            $('#reportrange_right').on('cancel.daterangepicker', function (ev, picker) {
                console.log("cancel event fired");
            });

            $('#options1').click(function () {
                $('#reportrange_right').data('daterangepicker').setOptions(optionSet1, cb);
            });

            $('#options2').click(function () {
                $('#reportrange_right').data('daterangepicker').setOptions(optionSet2, cb);
            });

            $('#destroy').click(function () {
                $('#reportrange_right').data('daterangepicker').remove();
            });

        });
    </script>
    <!-- datepicker -->
    <script type="text/javascript">
        $(document).ready(function () {

            var cb = function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange span').html(start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
                $('#reportrange input').val(start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
                //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
            }

            var optionSet1 = {
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2012',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'left',
                buttonClasses: ['btn btn-default'],
                applyClass: 'btn-small btn-primary',
                cancelClass: 'btn-small',
                format: 'MM/DD/YYYY',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Clear',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            };
            $('#reportrange span').html(moment().subtract(29, 'days').format('YYYY-MM-DD') + ' to ' + moment().format('YYYY-MM-DD'));
            $('#reportrange input').val(moment().subtract(29, 'days').format('YYYY-MM-DD') + ' to ' + moment().format('YYYY-MM-DD'));
            $('#reportrange').daterangepicker(optionSet1, cb);
            $('#reportrange').on('show.daterangepicker', function () {
                console.log("show event fired");
            });
            $('#reportrange').on('hide.daterangepicker', function () {
                console.log("hide event fired");
            });
            $('#reportrange').on('apply.daterangepicker', function (ev, picker) {
                console.log("apply event fired, start/end dates are " + picker.startDate.format('YYYY-MM-DD') + " to " + picker.endDate.format('YYYY-MM-DD'));
            });
            $('#reportrange').on('cancel.daterangepicker', function (ev, picker) {
                console.log("cancel event fired");
            });
            $('#options1').click(function () {
                $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
            });
            $('#options2').click(function () {
                $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
            });
            $('#destroy').click(function () {
                $('#reportrange').data('daterangepicker').remove();
            });
        });
    </script>
    <!-- /datepicker -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#single_cal1').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_1"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
            $('#single_cal2').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_2"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
            $('#single_cal3').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_3"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
            $('#single_cal4').daterangepicker({
                singleDatePicker: true,
                calender_style: "picker_4"
            }, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#reservation').daterangepicker(null, function (start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
            });
        });
    </script>
    <!-- /datepicker -->
</body>

</html>