<%@page import="com.btx.dto.AdminUserViewDto"%>
<%@page import="com.btx.controller.AdminUserViewController"%>
<%@page import="com.btx.Bean.AdminBean"%>
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
    %>
<!DOCTYPE html>
<html lang="en">

<head>
    
    <title>BinaryTradeXchange | Users</title>

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
                                <div class="x_title">
                                 <h3>
                   User
                    
                </h3>
                                    
                                     <%
                                     String email=(String)request.getParameter("em");
                                AdminUserViewController controller=new AdminUserViewController();
                                     AdminUserViewDto dto=controller.getOperationsData(email);
                                
                                %>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                <div class="form-horizontal form-label-left" >
                               <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Email :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getEmail() %> </label>
                                            </div>
                                </div>
                                <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Password :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getPassword() %> </label>
                                            </div>
                                </div>
                               	 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">First Name :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getFirstname() %> </label>
                                            </div>
                                </div>
                                <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Last Name :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getLastname() %> </label>
                                            </div>
                                </div>
                                <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Gender :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getGender() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Date of Birth :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getDob() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Country :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getCountry() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">City :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getCity() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Zip :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getZip() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Address :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getAddress() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Country Code :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getCountrycode() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Phone Number :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getPhoneno() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Currency :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getCurrency() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Timezone :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getTimezone() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Default Language :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getDefaultlanguage() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Referral Code :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getReferralcode() %> </label>
                                            </div>
                                </div>
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Time :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"><%=dto.getTime() %> </label>
                                            </div>
                                </div>	
                                 <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">ID Proof :
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <div class="img-preview preview-lg col-9 pull-left"
										style="width: 240px; height: 320px;">
										<img src="getAdminViewImage.jsp?id=<%=dto.getEmail()%>">
									</div>
                                            </div>
                                </div>
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