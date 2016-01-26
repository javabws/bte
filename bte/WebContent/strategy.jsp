<%@page import="com.btx.Bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
UserBean u = null;
if (session.getAttribute("userBean") != null) {
	u = (UserBean) session.getAttribute("userBean");
}
int st=Integer.parseInt((String)request.getParameter("st"));
if(u!=null){


switch(st)
{
case 1:
	%>
	<jsp:forward page="strategy1.jsp"></jsp:forward>
	<%
	break;
case 2:
	%>
	<jsp:forward page="strategy2.jsp"></jsp:forward>
	<%
	break;
case 3:
	%>
	<jsp:forward page="strategy3.jsp"></jsp:forward>
	<%
	break;
case 4:
	%>
	<jsp:forward page="strategy4.jsp"></jsp:forward>
	<%
	break;
case 5:
	%>
	<jsp:forward page="strategy5.jsp"></jsp:forward>
	<%
	break;
case 6:
	%>
	<jsp:forward page="strategy6.jsp"></jsp:forward>
	<%
	break;
case 7:
	%>
	<jsp:forward page="strategy7.jsp"></jsp:forward>
	<%
	break;
case 8:
	%>
	<jsp:forward page="strategy9.jsp"></jsp:forward>
	<%
	break;
case 9:
	%>
	<jsp:forward page="strategy9.jsp"></jsp:forward>
	<%
	break;
case 10:
	%>
	<jsp:forward page="strategy10.jsp"></jsp:forward>
	<%
	break;
case 11:
	%>
	<jsp:forward page="strategy11.jsp"></jsp:forward>
	<%
	break;
case 12:
	%>
	<jsp:forward page="strategy12.jsp"></jsp:forward>
	<%
	break;
case 13:
	%>
	<jsp:forward page="strategy13.jsp"></jsp:forward>
	<%
	break;
case 14:
	%>
	<jsp:forward page="strategy14.jsp"></jsp:forward>
	<%
	break;
case 15:
	%>
	<jsp:forward page="strategy15.jsp"></jsp:forward>
	<%
	break;
case 16:
	%>
	<jsp:forward page="strategy16.jsp"></jsp:forward>
	<%
	break;
case 17:
	%>
	<jsp:forward page="strategy17.jsp"></jsp:forward>
	<%
	break;
case 18:
	%>
	<jsp:forward page="strategy18.jsp"></jsp:forward>
	<%
	break;
	
case 19:
	%>
	<jsp:forward page="strategy19.jsp"></jsp:forward>
	<%
	break;
case 20:
	%>
	<jsp:forward page="strategy20.jsp"></jsp:forward>
	<%
	break;
case 21:
	%>
	<jsp:forward page="strategy21.jsp"></jsp:forward>
	<%
	break;
case 22:
	%>
	<jsp:forward page="strategy22.jsp"></jsp:forward>
	<%
	break;
case 23:
	%>
	<jsp:forward page="strategy23.jsp"></jsp:forward>
	<%
	break;
case 24:
	%>
	<jsp:forward page="strategy24.jsp"></jsp:forward>
	<%
	break;
case 25:
	%>
	<jsp:forward page="strategy25.jsp"></jsp:forward>
	<%
	break;
case 26:
	%>
	<jsp:forward page="strategy26.jsp"></jsp:forward>
	<%
	break;
case 27:
	%>
	<jsp:forward page="strategy27.jsp"></jsp:forward>
	<%
	break;
case 28:
	%>
	<jsp:forward page="strategy28.jsp"></jsp:forward>
	<%
	break;
case 29:
	%>
	<jsp:forward page="strategy29.jsp"></jsp:forward>
	<%
	break;
case 30:
	%>
	<jsp:forward page="strategy30.jsp"></jsp:forward>
	<%
	break;
case 31:
	%>
	<jsp:forward page="strategy31.jsp"></jsp:forward>
	<%
	break;
case 32:
	%>
	<jsp:forward page="strategy32.jsp"></jsp:forward>
	<%
	break;
case 33:
	%>
	<jsp:forward page="strategy33.jsp"></jsp:forward>
	<%
	break;
case 34:
	%>
	<jsp:forward page="strategy34.jsp"></jsp:forward>
	<%
	break;
case 35:
	%>
	<jsp:forward page="strategy35.jsp"></jsp:forward>
	<%
	break;
case 36:
	%>
	<jsp:forward page="strategy36.jsp"></jsp:forward>
	<%
	break;
case 37:
	%>
	<jsp:forward page="strategy37.jsp"></jsp:forward>
	<%
	break;
case 38:
	%>
	<jsp:forward page="strategy38.jsp"></jsp:forward>
	<%
	break;
case 39:
	%>
	<jsp:forward page="strategy39.jsp"></jsp:forward>
	<%
	break;
case 40:
	%>
	<jsp:forward page="strategy40.jsp"></jsp:forward>
	<%
	break;
case 41:
	%>
	<jsp:forward page="strategy41.jsp"></jsp:forward>
	<%
	break;
case 42:
	%>
	<jsp:forward page="strategy42.jsp"></jsp:forward>
	<%
	break;
case 43:
	%>
	<jsp:forward page="strategy43.jsp"></jsp:forward>
	<%
	break;
case 44:
	%>
	<jsp:forward page="strategy44.jsp"></jsp:forward>
	<%
	break;
case 45:
	%>
	<jsp:forward page="strategy45.jsp"></jsp:forward>
	<%
	break;
case 46:
	%>
	<jsp:forward page="strategy46.jsp"></jsp:forward>
	<%
	break;
case 47:
	%>
	<jsp:forward page="strategy47.jsp"></jsp:forward>
	<%
	break;
case 48:
	%>
	<jsp:forward page="strategy48.jsp"></jsp:forward>
	<%
	break;
case 49:
	%>
	<jsp:forward page="strategy49.jsp"></jsp:forward>
	<%
	break;
case 50:
	%>
	<jsp:forward page="strategy50.jsp"></jsp:forward>
	<%
	break;
case 51:
	%>
	<jsp:forward page="strategy51.jsp"></jsp:forward>
	<%
	break;
case 52:
	%>
	<jsp:forward page="strategy52.jsp"></jsp:forward>
	<%
	break;
case 53:
	%>
	<jsp:forward page="strategy53.jsp"></jsp:forward>
	<%
	break;
case 54:
	%>
	<jsp:forward page="strategy54.jsp"></jsp:forward>
	<%
	break;
case 55:
	%>
	<jsp:forward page="strategy55.jsp"></jsp:forward>
	<%
	break;
case 56:
	%>
	<jsp:forward page="strategy56.jsp"></jsp:forward>
	<%
	break;
case 57:
	%>
	<jsp:forward page="strategy57.jsp"></jsp:forward>
	<%
	break;
case 58:
	%>
	<jsp:forward page="strategy58.jsp"></jsp:forward>
	<%
	break;
case 59:
	%>
	<jsp:forward page="strategy59.jsp"></jsp:forward>
	<%
	break;
case 60:
	%>
	<jsp:forward page="strategy60.jsp"></jsp:forward>
	<%
	break;
case 61:
	%>
	<jsp:forward page="strategy61.jsp"></jsp:forward>
	<%
	break;
case 62:
	%>
	<jsp:forward page="strategy62.jsp"></jsp:forward>
	<%
	break;
case 63:
	%>
	<jsp:forward page="strategy63.jsp"></jsp:forward>
	<%
	break;
case 64:
	%>
	<jsp:forward page="strategy64.jsp"></jsp:forward>
	<%
	break;
case 65:
	%>
	<jsp:forward page="strategy65.jsp"></jsp:forward>
	<%
	break;
case 66:
	%>
	<jsp:forward page="strategy66.jsp"></jsp:forward>
	<%
	break;
case 67:
	%>
	<jsp:forward page="strategy67.jsp"></jsp:forward>
	<%
	break;
case 68:
	%>
	<jsp:forward page="strategy68.jsp"></jsp:forward>
	<%
	break;
case 69:
	%>
	<jsp:forward page="strategy69.jsp"></jsp:forward>
	<%
	break;
case 70:
	%>
	<jsp:forward page="strategy70.jsp"></jsp:forward>
	<%
	break;
case 71:
	%>
	<jsp:forward page="strategy71.jsp"></jsp:forward>
	<%
	break;
case 72:
	%>
	<jsp:forward page="strategy72.jsp"></jsp:forward>
	<%
	break;
case 73:
	%>
	<jsp:forward page="strategy73.jsp"></jsp:forward>
	<%
	break;
case 74:
	%>
	<jsp:forward page="strategy74.jsp"></jsp:forward>
	<%
	break;
case 75:
	%>
	<jsp:forward page="strategy75.jsp"></jsp:forward>
	<%
	break;
case 76:
	%>
	<jsp:forward page="strategy76.jsp"></jsp:forward>
	<%
	break;
case 77:
	%>
	<jsp:forward page="strategy77.jsp"></jsp:forward>
	<%
	break;
case 78:
	%>
	<jsp:forward page="strategy78.jsp"></jsp:forward>
	<%
	break;
case 79:
	%>
	<jsp:forward page="strategy79.jsp"></jsp:forward>
	<%
	break;
case 80:
	%>
	<jsp:forward page="strategy80.jsp"></jsp:forward>
	<%
	break;
case 81:
	%>
	<jsp:forward page="strategy81.jsp"></jsp:forward>
	<%
	break;
case 82:
	%>
	<jsp:forward page="strategy82.jsp"></jsp:forward>
	<%
	break;
case 83:
	%>
	<jsp:forward page="strategy83.jsp"></jsp:forward>
	<%
	break;
case 84:
	%>
	<jsp:forward page="strategy84.jsp"></jsp:forward>
	<%
	break;
case 85:
	%>
	<jsp:forward page="strategy85.jsp"></jsp:forward>
	<%
	break;
case 86:
	%>
	<jsp:forward page="strategy86.jsp"></jsp:forward>
	<%
	break;
case 87:
	%>
	<jsp:forward page="strategy87.jsp"></jsp:forward>
	<%
	break;
case 88:
	%>
	<jsp:forward page="strategy88.jsp"></jsp:forward>
	<%
	break;
case 89:
	%>
	<jsp:forward page="strategy89.jsp"></jsp:forward>
	<%
	break;
case 90:
	%>
	<jsp:forward page="strategy90.jsp"></jsp:forward>
	<%
	break;
case 91:
	%>
	<jsp:forward page="strategy91.jsp"></jsp:forward>
	<%
	break;
case 92:
	%>
	<jsp:forward page="strategy92.jsp"></jsp:forward>
	<%
	break;
case 93:
	%>
	<jsp:forward page="strategy93.jsp"></jsp:forward>
	<%
	break;
case 94:
	%>
	<jsp:forward page="strategy94.jsp"></jsp:forward>
	<%
	break;
case 95:
	%>
	<jsp:forward page="strategy95.jsp"></jsp:forward>
	<%
	break;
case 96:
	%>
	<jsp:forward page="strategy96.jsp"></jsp:forward>
	<%
	break;
case 97:
	%>
	<jsp:forward page="strategy97.jsp"></jsp:forward>
	<%
	break;
case 98:
	%>
	<jsp:forward page="strategy98.jsp"></jsp:forward>
	<%
	break;
	
case 99:
	%>
	<jsp:forward page="strategy99.jsp"></jsp:forward>
	<%
	break;
case 100:
	%>
	<jsp:forward page="strategy100.jsp"></jsp:forward>
	<%
	break;
default:
	%>
	<jsp:forward page="strategies"></jsp:forward>
	<%
	break;
}
}
else
{
System.out.println(st);
	%>
	<jsp:forward page="login_register">
	<jsp:param value="strategies" name="r"/>
	<jsp:param value="<%=st %>" name="st"/>
	</jsp:forward>
	<%
}
%>