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

    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
                         <script>  
var request;  
function sendinfo()  
{  
	var username = "\""+document.getElementById('bws123@gmail.com').value;
	var id="_id\"";
	var uid=username.concat(id);
	alert(uid);
var url="active?un=" + username ;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("POST",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;

if(val.trim()=="INACTIVE"){
	
	document.getElementById(uid).innerHTML="<button class='btn btn-round btn-danger btn-xs' id='status' onclick='sendinfo()' href='#'><i class='fa fa-close' ></i></button>"

	
}if(val.trim()=="ACTIVE"){
	
	document.getElementById(uid).innerHTML="<button class='btn btn-round btn-success btn-xs' id='status' onclick='sendinfo()' href='#'><i class='fa fa-check-circle' ></i></button>"
		
	
}
}  
}  
  
</script> 

</head>

<%
String un=(String)request.getParameter("submit");
if(un!=null){
	
	String status="";

	Connection c=DbDriver.getConnection();

	PreparedStatement p=c.prepareStatement("select status from user_details where email=?");
	p.setString(1, un);
	ResultSet r=p.executeQuery();
	if(r.next()){
		status=r.getString("status");
		System.out.println(status);
	}
	p=c.prepareStatement("update user_details set status=? where email=?");

	if(status.equals("Active")){
		
		p.setString(1, "Inactive");
		p.setString(2, un);
		p.execute();
		System.out.println("inactive");
		//out.print("INACTIVE");
	}
	if(status.equals("Inactive"))
	{
		
		p.setString(1, "Active");
		p.setString(2, un);
		p.execute();
		System.out.println("active");
		//out.print("ACTIVE");
	}

}

%>
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
                   Users
                    
                </h3>
                                    
                                     <%
                                
                                Connection c=DbDriver.getConnection();
                                PreparedStatement p=c.prepareStatement("select * from user_details");
                               
                                ResultSet r=p.executeQuery();
                               int count=1;
                                %>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                <form action="adminuser" method="post">
                                    <table id="example" class="table table-striped responsive-utilities jambo_table">
                                        <thead>
                                            <tr class="headings">
                                                
                                                <th>SI NO </th>
                                                <th>Email Id</th>
                                                <th>Created date</th>
                                                <th>Phone no</th>
                                                <th>Gender </th>
                                                <th>Country </th>
                                                <th>Status </th>
                                               <th class=" no-link last"><span class="nobr">Option</span>
                                            </tr>
                                        </thead>

                                        <tbody>
                                       
                                        <%while(r.next()) {%>
                                            <tr class="even pointer">
                                                
                                                <td class=" "><%=count %></td>
                                                <td class=" "><%=r.getString("email") %></td>
                                                <td class=" "><%=r.getDate("time")+" "+r.getTime("time") %></td>
                                                <td class=" "><%=r.getLong("phonenumber") %></td>
                                                <td class="a-right a-right "><%=r.getString("gender") %></td>
                                                <td class=" "><%=r.getString("country") %></td>
                                                <td class=" "><%
                                                String sta=r.getString("status");
                                                if(sta.equals("Active")){ %>
                                                <button class="btn btn-round btn-success btn-xs" id="status" name="submit" value="<%=r.getString("email") %>" ><i class="fa fa-check-circle"   ></i></button>
                                                <%}if(sta.equals("Inactive")) {%>
                                                <button class="btn btn-round btn-danger btn-xs" id="status" name="submit" value="<%=r.getString("email") %>"  ><i class="fa fa-close"   ></i></button>
                                                <%} %>
                                                </td>
                                                <td class=" last"><a href="adminuserview?em=<%=r.getString("email") %>">View</a>
                                           </tr>
                                           <%count++;} %>
                                           
                                          
                                        </tbody>

                                    </table>
                                    </form>
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
</body>

</html>