<%@page import="com.btx.driver.DbDriver"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
    <%@ page import ="java.sql.*" %>
    <%
String emailcheck="";
String vcodecheck = request.getParameter("acode");
System.out.println(vcodecheck);
Connection con = DbDriver.getConnection();
Statement st = con.createStatement();

ResultSet rs= st.executeQuery("SELECT email FROM activation where verification_code='"+vcodecheck+"'");
if (rs.next()) {
emailcheck=rs.getString("email");
System.out.println(emailcheck);
}
PreparedStatement p=con.prepareStatement("update user_details set status=? where email=?");
p.setString(1, "Active");
p.setString(2, emailcheck);
int i=p.executeUpdate();
System.out.println(i);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>BTX | Activation</title>
<jsp:include page="head.jsp"></jsp:include>
  <link href="assets/css/coming-soon-404.css" rel="stylesheet">
</head>
<body>
<div class="wrapper-table">
    <div class="wrapper-table-cell">
      <div id="content">
        <h3 class="title-404 text-theme-lg">
        <%if(i>0){ %>
        Activated !<%}else{ %>
        Sorry !<%} %>
        </h3>
        
        <p class="text-theme-lg subtitle-404">
        <%if(i>0){ %>
        Successfully Activated...<br>Go to Home page and Login in to your Account...<%}else{ %>Something went wrong<br>
          Try Again....<%} %> </p>
        <a href="home" class="btn btn-sm btn-primary btn-rounded text-theme-lg"><i class="fa fa-chevron-left"></i>Back to Homepage </a>
      </div>
    </div>
  </div>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="assets/js/jquery.backstretch.js"></script>
  <script src="assets/js/page/page.404.js"></script>

</body>
</html>