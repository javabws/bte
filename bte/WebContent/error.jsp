<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true" errorPage="error"%>
    
    <%

    String serverpath = application.getRealPath("/errorlogs");
   
   
 	Date today=new Date();
 	
 	String sp=today.toGMTString();
 	String[] splited=sp.split(" ");
 	String fname="";
 	
 	String filename=splited[0]+""+splited[1]+""+splited[2]+""+today.getHours()+""+today.getMinutes()+""+today.getSeconds()+""+splited[4]+".log";//today.getYear()+""+today.getMonth()+""+today.getDay()+""+today.getHours()+""+today.getMinutes()+""+today.getSeconds()+""+today.getTimezoneOffset()+".log";
 	 
 	System.out.println(serverpath+"\\"+filename);
    File f=new File(serverpath+"/"+filename);
    try {
    	f.createNewFile();
  
    } catch (IOException e) {
    	// TODO Auto-generated catch block
    	e.printStackTrace();
    }
    
    PrintWriter ps=new PrintWriter(f);
   exception.printStackTrace(ps);
    ps.close();
    	
    
    %>
    <%//exception.printStackTrace(response.getWriter()); %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><%=response.getStatus() %> </title>

    <!-- Bootstrap core CSS -->

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/icheck/flat/green.css" rel="stylesheet">


    <script src="js/jquery.min.js"></script>

    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>


<body class="nav-md">

    <div class="container body">

        <div class="main_container">

            <!-- page content -->
            <div class="col-md-12">
                <div class="col-middle">
                    <div class="text-center">
                        <h1 class="error-number"><%=response.getStatus() %></h1>
                        <h2><%if(response.getStatus()==500)
                        {
                        	out.print("Internal Server error");
                        }
                        	%></h2>
                        <p>We track these errors automatically, but if the problem persists feel free to contact us. In the meantime, try refreshing. 
                        </p>
                       
                    </div>
                </div>
            </div>
            <!-- /page content -->

        </div>
        <!-- footer content -->
    </div>

    <div id="custom_notifications" class="custom-notifications dsp_none">
        <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
        </ul>
        <div class="clearfix"></div>
        <div id="notif-group" class="tabbed_notifications"></div>
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

    <!-- /footer content -->
</body>

</html>