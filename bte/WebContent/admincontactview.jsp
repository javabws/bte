<%@page import="com.btx.Bean.AdminBean"%>
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
<%
   String msg="",cla="";
   ContactSupportProcess co=new ContactSupportProcess();
   if(request.getParameter("submit")!=null)
   {
	   String reply=(String)request.getParameter("reply");
	   String id=(String)request.getParameter("id");
	   int i=co.reply(reply, id);
	   if(i>0){
		   msg="Reply sent";
		   cla="success";
	 }
	 else{
		   msg="Not Sent...sorry something went wrong";
		   cla="danger";
	 } 
	   
   }
   
   %>


<!DOCTYPE html>
<html lang="en">

<head>


<title>BinaryTradeXchange | Contact Support</title>

<jsp:include page="headu.jsp"></jsp:include>
<link href="css/datatables/tools/css/dataTables.tableTools.css"
	rel="stylesheet">

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
											<%if(!msg.equals("")){ %>

											<div class="alert alert-<%=cla %> alert-dismissible fade in"
												role="alert">
												<button type="button" class="close" data-dismiss="alert"
													aria-label="Close">
													<span aria-hidden="true">×</span>
												</button>
												<strong><%=msg %></strong>
											</div>
											<%}msg="";cla=""; %>


											<div class="x_content">
												<div class="title_left">
													<h3>Contact Support</h3>
												</div>
												<div class="well" style="overflow: auto">

													<div class="x_title">

														<div class="clearfix"></div>
														<div class="x_content">
															<%
                                int id=Integer.parseInt(request.getParameter("id"));
                                Connection c=DbDriver.getConnection();
                                PreparedStatement p=c.prepareStatement("select * from contact_support where id=?");
                                p.setInt(1, id);
                                ResultSet r=p.executeQuery();
                               
                               if(r.next()) {%>
															<div class="" role="tabpanel"
																data-example-id="togglable-tabs">
																<form class="form-horizontal form-label-left">
																	<div id="myTabContent" class="tab-content">
																		<div class="x_content">
																			<br>
																			<div id="myTabContent" class="tab-content">
																				<div role="tabpanel" class="tab-pane fade active in"
																					id="tab_content1" aria-labelledby="home-tab">

																					<div class="form-group">
																						<label
																							class="control-label col-md-3 col-sm-3 col-xs-12">Email
																							<span class="required">*</span>
																						</label>
																						<div class="col-md-6 col-sm-6 col-xs-12">
																							<%=r.getString("email") %>
																						</div>
																					</div>

																					<div class="form-group">
																						<label
																							class="control-label col-md-3 col-sm-3 col-xs-12">Subject
																							<span class="required">*</span>
																						</label>
																						<div class="col-md-6 col-sm-6 col-xs-12">
																							<%=r.getString("subject") %>
																						</div>
																					</div>


																					<div class="form-group">
																						<label
																							class="control-label col-md-3 col-sm-3 col-xs-12"
																							for="last-name">Message <span
																							class="required">*</span>
																						</label>
																						<div class="col-md-6 col-sm-6 col-xs-12">
																							<textarea required="required" name="message"
																								style="width: 430px; height: 125px;"
																								class="form-control" rows="3" placeholder=""
																								readonly="readonly"><%=r.getString("message") %></textarea>
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


								<div class="row">

									<div class="col-md-12 col-sm-12 col-xs-12">
										<div class="x_panel">


											<div class="x_content">
												<div class="well" style="overflow: auto">
													<div class="" role="tabpanel"
														data-example-id="togglable-tabs">

														<div id="myTabContent" class="tab-content">
															<div class="x_content">
																<br>
																<div id="myTabContent" class="tab-content">
																	<div role="tabpanel" class="tab-pane fade active in"
																		id="tab_content1" aria-labelledby="home-tab">
																		




																			<div class="form-group">
																				<label
																					class="control-label col-md-3 col-sm-3 col-xs-12"
																					for="last-name">Reply Message <span
																					class="required">*</span>
																				</label>
																				<div class="col-md-6 col-sm-6 col-xs-12">
																					<input type="hidden" name="id" value="<%=id %>">
																					<textarea required="required" name="reply"
																						style="width: 430px; height: 125px;"
																						class="form-control" rows="3" placeholder=""
																						readonly="readonly"><%=r.getString("reply") %></textarea>
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

									<br /> <br /> <br />

								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- /form datepicker -->

			</div>
		</div>

		<br /> <br /> <br />

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
                        "sSwfPath": "<?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?>"
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
                $('#reportrange_right span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
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

            $('#reportrange_right span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

            $('#reportrange_right').daterangepicker(optionSet1, cb);

            $('#reportrange_right').on('show.daterangepicker', function () {
                console.log("show event fired");
            });
            $('#reportrange_right').on('hide.daterangepicker', function () {
                console.log("hide event fired");
            });
            $('#reportrange_right').on('apply.daterangepicker', function (ev, picker) {
                console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
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
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
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
            $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
            $('#reportrange').daterangepicker(optionSet1, cb);
            $('#reportrange').on('show.daterangepicker', function () {
                console.log("show event fired");
            });
            $('#reportrange').on('hide.daterangepicker', function () {
                console.log("hide event fired");
            });
            $('#reportrange').on('apply.daterangepicker', function (ev, picker) {
                console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
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
	<!-- input_mask -->
	<script>
        $(document).ready(function () {
            $(":input").inputmask();
        });
    </script>
	<!-- /input mask -->
	<!-- ion_range -->
	<script>
        $(function () {
            $("#range_27").ionRangeSlider({
                type: "double",
                min: 1000000,
                max: 2000000,
                grid: true,
                force_edges: true
            });
            $("#range").ionRangeSlider({
                hide_min_max: true,
                keyboard: true,
                min: 0,
                max: 5000,
                from: 1000,
                to: 4000,
                type: 'double',
                step: 1,
                prefix: "$",
                grid: true
            });
            $("#range_25").ionRangeSlider({
                type: "double",
                min: 1000000,
                max: 2000000,
                grid: true
            });
            $("#range_26").ionRangeSlider({
                type: "double",
                min: 0,
                max: 10000,
                step: 500,
                grid: true,
                grid_snap: true
            });
            $("#range_31").ionRangeSlider({
                type: "double",
                min: 0,
                max: 100,
                from: 30,
                to: 70,
                from_fixed: true
            });
            $(".range_min_max").ionRangeSlider({
                type: "double",
                min: 0,
                max: 100,
                from: 30,
                to: 70,
                max_interval: 50
            });
            $(".range_time24").ionRangeSlider({
                min: +moment().subtract(12, "hours").format("X"),
                max: +moment().format("X"),
                from: +moment().subtract(6, "hours").format("X"),
                grid: true,
                force_edges: true,
                prettify: function (num) {
                    var m = moment(num, "X");
                    return m.format("Do MMMM, HH:mm");
                }
            });
        });
    </script>
	<!-- /ion_range -->
	<!-- knob -->
	<script>
        $(function ($) {

            $(".knob").knob({
                change: function (value) {
                    //console.log("change : " + value);
                },
                release: function (value) {
                    //console.log(this.$.attr('value'));
                    console.log("release : " + value);
                },
                cancel: function () {
                    console.log("cancel : ", this);
                },
                /*format : function (value) {
                 return value + '%';
                 },*/
                draw: function () {

                    // "tron" case
                    if (this.$.data('skin') == 'tron') {

                        this.cursorExt = 0.3;

                        var a = this.arc(this.cv) // Arc
                            ,
                            pa // Previous arc
                            , r = 1;

                        this.g.lineWidth = this.lineWidth;

                        if (this.o.displayPrevious) {
                            pa = this.arc(this.v);
                            this.g.beginPath();
                            this.g.strokeStyle = this.pColor;
                            this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, pa.s, pa.e, pa.d);
                            this.g.stroke();
                        }

                        this.g.beginPath();
                        this.g.strokeStyle = r ? this.o.fgColor : this.fgColor;
                        this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, a.s, a.e, a.d);
                        this.g.stroke();

                        this.g.lineWidth = 2;
                        this.g.beginPath();
                        this.g.strokeStyle = this.o.fgColor;
                        this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false);
                        this.g.stroke();

                        return false;
                    }
                }
            });

            // Example of infinite knob, iPod click wheel
            var v, up = 0,
                down = 0,
                i = 0,
                $idir = $("div.idir"),
                $ival = $("div.ival"),
                incr = function () {
                    i++;
                    $idir.show().html("+").fadeOut();
                    $ival.html(i);
                },
                decr = function () {
                    i--;
                    $idir.show().html("-").fadeOut();
                    $ival.html(i);
                };
            $("input.infinite").knob({
                min: 0,
                max: 20,
                stopper: false,
                change: function () {
                    if (v > this.cv) {
                        if (up) {
                            decr();
                            up = 0;
                        } else {
                            up = 1;
                            down = 0;
                        }
                    } else {
                        if (v < this.cv) {
                            if (down) {
                                incr();
                                down = 0;
                            } else {
                                down = 1;
                                up = 0;
                            }
                        }
                    }
                    v = this.cv;
                }
            });
        });
    </script>
	<!-- /knob -->
</body>

</html>