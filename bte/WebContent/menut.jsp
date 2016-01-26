<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<%--     <% --%>
<!-- //     UserBean u=null; -->
<!-- //     if(session.getAttribute("userBean")!=null){ -->
<!-- //     u=(UserBean)session.getAttribute("userBean"); -->
<!-- //     }else{ -->
    
<%--     %> --%>
<%--     <jsp:forward page="expire"></jsp:forward> --%>
<%--     <%} %> --%>
     
            <!-- top navigation -->
            

                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <div class="nav toggle dropdown" role="presentation">
                            <a id="drop4" href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false"><i class="fa fa-bars"></i></a>
                        		<ul id="menu6" class="dropdown-menu animated fadeInDown" role="menu">
                                    <li role="presentation" class="divider"></li>
                                   <li role="presentation"><a href="userdeposit">Deposit</a>
                                        </li>
                                        <li role="presentation"><a href="userwithdrawal">Withdrawals</a>
                                        </li>
                                        <li role="presentation"><a href="useroperations">Chronicle Operations</a>
                                        </li>
                                        <li role="presentation"><a href="usertrading">Chronicle Trading</a>
                                        </li>
                                        <li role="presentation"><a href="userreferstats">Referral Stats</a>
                                        </li>
                                        <li role="presentation"><a href="userpersonalinfo">Personnal Info</a>
                                        </li>
                                        <li role="presentation"><a href="usercontactsupport">Contact</a>
                                        
                                        </li>
                                        <li role="presentation" class="divider"></li>
                                         <li><a href="usereducation">Education </a>
                                    
                                </li>
                                <li><a href="userrefer">Refer a Friend </a>
                                   
                                </li><li role="presentation" class="divider"></li>
                                <li><a href="userfaq">FAQ </a>
                                   
                                </li><li role="presentation" class="divider"></li>
                                 <li><a href="userabout">About</a>
                                        </li>
                                        <li><a href="usercontact">Contact Us</a>
                                        </li>
                                         <li><a href="userkyc">KYC</a>
                                        </li>
                                         <li role="presentation" class="divider"></li>
                                 </ul>
                        
                        </div>

                        <ul class="nav navbar-nav navbar-right">
                             <li >
                                <a href="user/contactsupport" >
                                    <i class="fa fa-envelope-o"></i>
                                   
                                </a>
                                
                            </li>
                            
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
<%--                                     <%=u.getFirstname()+" "+u.getLastname() %> --%>UserName
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    <li><a href="userpersonalinfo"><i class="fa fa-pencil-square-o">&nbsp;&nbsp;</i>Personnal Info</a>
                                        </li>
                                    <li ><a href="userdeposit"><i class="fa fa-plus"></i>&nbsp;&nbsp;Deposit</a>
                                        </li>
                                        <li><a href="userwithdrawal"><i class="fa fa-usd"></i>&nbsp;&nbsp;Withdrawals</a>
                                        </li>
                                        <li><a href="useroperations"><i class="fa fa-repeat"></i>&nbsp;&nbsp;Chronicle Operations</a>
                                        </li>
                                        <li><a href="usertrading"><i class="fa fa-refresh"></i>&nbsp;&nbsp;Chronicle Trading</a>
                                        </li>

                                    <li><a href="logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                                    </li>
                                </ul>
                            </li>

                           
                            <li >
                            <div class="tile_stats_count">
                            	<div class="count green">$ 2,500  </div>
                            	</div>
                             </li>
                             

                        </ul>
                    </nav>
                </div>

           
            <!-- /top navigation -->
            
            