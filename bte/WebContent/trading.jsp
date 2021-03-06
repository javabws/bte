<%@page import="java.sql.ResultSet"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  
  	<title>Binary Trade Exchange | Trading History</title>
   <jsp:include page="headu.jsp"></jsp:include>

</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">

            

           <jsp:include page="menuu.jsp"></jsp:include>
            

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="row">
                    <div class="page-title">
                        <div class="title_left">
                            <h3>
                   Chronical Trading
                    
                </h3>
                        </div>

                        
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                
                                <%
                                UserBean u=(UserBean)session.getAttribute("userBean");
                                Connection c=DbDriver.getConnection();
                                PreparedStatement p=c.prepareStatement("select * from trading where user=? order by userid desc limit 100");
                                p.setString(1, u.getEmail());
                                ResultSet r=p.executeQuery();
                               
                                %>
                                <div class="x_content">
                                    <table id="example" class="table table-striped responsive-utilities jambo_table">
                                        <thead>
                                            <tr class="headings">
                                                <th>Trading Id </th>
                                                <th>Date</th>
                                                <th>Assest </th>
                                                <th>Value </th>
  												<th> Operation Type</th>
  												 
   											    <th> Decision Value</th>
   											    <th> Amount</th>
                                                <th> Profit</th>
                                                <th> Lost</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                        <%while(r.next()) {%>
                                            <tr class="even pointer">
                                                <td class=" "><%=r.getInt("userid") %></td>
                                                <td class=" "><%=r.getDate("currenttime")+" "+r.getTime("currenttime") %></td>
                                                <td class=" "><%=r.getString("asset") %></td>
                                                <td class=" "><%=r.getDouble("value") %></td>
                                                <td class=" "><%=r.getString("type") %></td>
                                              
                                                <td class=" "><%=r.getDouble("expiryvalue") %></td>
                                                <td class=" ">$ <%=String.format("%.2f", r.getDouble("amount")) %></td>
                                                <td class=" ">$ <%=String.format("%.2f", r.getDouble("earned")) %></td>
                                                <td class=" ">$ <%=String.format("%.2f", r.getDouble("lost")) %> </td>
                                            </tr>
                                             <%}
                                        
                                        %>
                                           
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
                	'bSort':false,
                    'iDisplayLength': 12,
                    "sPaginationType": "full_numbers"
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
