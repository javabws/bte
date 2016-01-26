<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>

<!DOCTYPE html>
<html lang="en">

<head>
    
    <title>BTX | Admin</title>

  <jsp:include page="headu.jsp"></jsp:include>

</head>

<body style="background:#F7F7F7;">
    
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>

        <div id="wrapper">
            <div id="login" class="animate form">
                <section class="login_content">
                    <form action="adminloginprocess" method="post" >
                        <h1>Administrator Login</h1>
                        <div>
                            <input type="text" class="form-control" placeholder="Username" required="" name="username" autofocus="autofocus"/>
                        </div>
                        <div>
                           <input type="password" class="form-control" placeholder="Password" required="" name="password"/>
                        </div>
                        <div>
                            <input class="btn btn-default submit" type="submit" value="Login" />
<!--                             <a class="reset_pass" href="#">Lost your password?</a> -->
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">

                            <p class="change_link">
                            <font color="red">
                            	<%
                            	String msg="";
                            	msg=request.getParameter("msg");
                            	if(msg!=null){
                            		out.print(msg);
                            	}
                            	%>
                            </font>
                            </p>
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1>Binary Trade Xchange</h1>

                                <p>©2015 All Rights Reserved. BinaryTradeXchange</p>
                            </div>
                        </div>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
            
        </div>
    </div>

</body>

</html>