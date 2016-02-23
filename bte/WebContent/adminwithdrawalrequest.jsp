
<%@page import="com.btx.Bean.AdminBean"%>
<%@page import="org.datacontract.schemas._2004._07.OkPayAPI.Balance"%>
<%@page import="com.okpay.api.I_OkPayAPIProxy"%>
<%@page import="okpay.btxsha" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
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
    if(a.getType().equals("Slave"))
    {
    	%>
    	<jsp:forward page="unauthorized"></jsp:forward>
    	<%
    }
    %>
<!DOCTYPE html>
<html lang="en">

<head>
    
    <title>BinaryTradeXchange | Withdrawal Requests</title>

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
                    <div class="page-title">
                        <div class="title_left">
                           
                        </div>

                        
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                            <%
                            String msg=(String)request.getParameter("msg");
                           
                            if( msg!=null ){ %>
             						
									<div class="alert alert-success alert-dismissible fade in" role="alert">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                                    </button>
                                    <strong><%=msg %></strong> 
                                </div>
										<%}msg=""; %>
                                <div class="x_title">
                                 <h3>
                   Users
                    
                </h3>
                              
                                     <%
                                
                                Connection c=DbDriver.getConnection();
                                PreparedStatement p=c.prepareStatement("select * from withdrawal_request where status=? order by requested_time desc");
                               p.setString(1, "pending");
                                ResultSet r=p.executeQuery();
                               int count=100;
                                %>
                                   <div class="clearfix"></div> 
                                </div>
                                <div class="x_content">
                               
                                    <table id="example" class="table table-striped responsive-utilities jambo_table">
                                        <thead>
                                            <tr class="headings">
                                                <th>Email Id</th>
                                                <th>Okpay Id</th>
                                                <th>Available Balance </th>
                                                <th>Requested Amount </th>
                                                <th>Status </th>
                                                <th>Created date</th>
                                               <th>Proceed Payment</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                       
                            <%while(r.next()) {%>
                                      <tr class="even pointer"> 
                                                	<td class=" "><%=r.getString("user_email") %></td>
                                              		<td class=" "><%=r.getString("okpay_id") %></td>
                                               		<td class=" "><%=r.getString("available_balance") %></td>
                                                	<td class=" "><%=r.getString("requested_amount") %></td>
                                                	<td class=" "><%=r.getString("status")%>
                                               		</td>
                                                	<td class=" "><%=r.getString("requested_time")%></td>
                                                	<td class=""><a href="adminwithdrawalpay?id=<%=r.getInt("id") %>" class="green" title="Click to pay">Pay</a></td>
                                                
 										
										 
                                     </tr>
                          <% count++;}%>
                                           
                                          
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

       

<%--           <jsp:include page="footJs.jsp"></jsp:include> --%>


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
</body>

</html>