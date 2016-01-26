<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.btx.Process.WalletProcess"%>
<%@page import="com.btx.Bean.UserBean"%>
<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="w" class="com.btx.Bean.WalletBean"></jsp:useBean>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleI_OkPayAPIProxyid" scope="session" class="com.okpay.api.I_OkPayAPIProxy" />
<%
String a="";
String b="";
String c="";
String d="";
String e="";
String f="";
String g="";
String h="";
String i="";
String j="";
String k="";
String l="";
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleI_OkPayAPIProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 

case 38:
	WalletProcess per=new WalletProcess();
	
        gotMethod = true;
        String walletID_6id=  request.getParameter("walletID83");
            java.lang.String walletID_6idTemp = null;
        if(!walletID_6id.equals("")){
         walletID_6idTemp  = walletID_6id;
        }
        String securityToken_7id=  request.getParameter("securityToken85");
            java.lang.String securityToken_7idTemp = null;
        if(!securityToken_7id.equals("")){
         securityToken_7idTemp  = securityToken_7id;
        }
        String receiver_8id=  request.getParameter("receiver87");
            java.lang.String receiver_8idTemp = null;
        if(!receiver_8id.equals("")){
         receiver_8idTemp  = receiver_8id;
        }
        String currency_9id=  request.getParameter("currency89");
            java.lang.String currency_9idTemp = null;
        if(!currency_9id.equals("")){
         currency_9idTemp  = currency_9id;
        }
        String amount_10id=  request.getParameter("amount91");
            java.math.BigDecimal amount_10idTemp = null;
        if(!amount_10id.equals("")){
         amount_10idTemp  = new java.math.BigDecimal(amount_10id);
        }
        String comment_11id=  request.getParameter("comment93");
            java.lang.String comment_11idTemp = null;
        if(!comment_11id.equals("")){
         comment_11idTemp  = comment_11id;
        }
        String isReceiverPaysFees_12id=  request.getParameter("isReceiverPaysFees95");
            java.lang.Boolean isReceiverPaysFees_12idTemp = null;
        if(!isReceiverPaysFees_12id.equals("")){
         isReceiverPaysFees_12idTemp  = java.lang.Boolean.valueOf(isReceiverPaysFees_12id);
        }
        String invoice_13id=  request.getParameter("invoice97");
            java.lang.String invoice_13idTemp = null;
        if(!invoice_13id.equals("")){
         invoice_13idTemp  = invoice_13id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo send_Money38mtemp = sampleI_OkPayAPIProxyid.send_Money(walletID_6idTemp,securityToken_7idTemp,receiver_8idTemp,currency_9idTemp,amount_10idTemp,comment_11idTemp,isReceiverPaysFees_12idTemp,invoice_13idTemp);
if(send_Money38mtemp == null){
%>
<%=send_Money38mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">receiver:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country_ISO:</TD>
<TD>
<%
if(send_Money38mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=send_Money38mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typecountry_ISO43 = tebece0.getCountry_ISO();
        String tempResultcountry_ISO43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry_ISO43));
        %>
        <%= tempResultcountry_ISO43 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">name:</TD>
<TD>
<%
if(send_Money38mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=send_Money38mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typename45 = tebece0.getName();
        String tempResultname45 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename45));
        %>
        <%b=tempResultname45; %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(send_Money38mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=send_Money38mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typeemail47 = tebece0.getEmail();
        String tempResultemail47 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail47));
        %>
        <%a= tempResultemail47; %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">walletID:</TD>
<TD>
<%
if(send_Money38mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=send_Money38mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typewalletID49 = tebece0.getWalletID();
        String tempResultwalletID49 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typewalletID49));
        %>
        <%c= tempResultwalletID49; %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">accountID:</TD>
<TD>
<%
if(send_Money38mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=send_Money38mtemp.getReceiver();
if(tebece0 != null){
java.lang.Long typeaccountID51 = tebece0.getAccountID();
        String tempResultaccountID51 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaccountID51));
        %>
        <%d= tempResultaccountID51; %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fees:</TD>
<TD>
<%
if(send_Money38mtemp != null){
java.math.BigDecimal typefees53 = send_Money38mtemp.getFees();
        String tempResultfees53 = org.eclipse.jst.ws.util.JspUtils.markup(typefees53.toString());
        %>
        <%e= tempResultfees53; %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">date:</TD>
<TD>
<%
if(send_Money38mtemp != null){
java.lang.String typedate55 = send_Money38mtemp.getDate();
        String tempResultdate55 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedate55));
        %>
        <%f= tempResultdate55; %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">invoice:</TD>
<TD>
<%
if(send_Money38mtemp != null){
java.lang.String typeinvoice57 = send_Money38mtemp.getInvoice();
        String tempResultinvoice57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeinvoice57));
        %>
        <%g= tempResultinvoice57; %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">sender:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country_ISO:</TD>
<TD>
<%
if(send_Money38mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=send_Money38mtemp.getSender();
if(tebece0 != null){
java.lang.String typecountry_ISO61 = tebece0.getCountry_ISO();
        String tempResultcountry_ISO61 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry_ISO61));
        %>
        <%= tempResultcountry_ISO61 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">name:</TD>
<TD>
<%
if(send_Money38mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=send_Money38mtemp.getSender();
if(tebece0 != null){
java.lang.String typename63 = tebece0.getName();
        String tempResultname63 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename63));
        %>
        <%= tempResultname63 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(send_Money38mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=send_Money38mtemp.getSender();
if(tebece0 != null){
java.lang.String typeemail65 = tebece0.getEmail();
        String tempResultemail65 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail65));
        %>
        <%= tempResultemail65 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">walletID:</TD>
<TD>
<%
if(send_Money38mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=send_Money38mtemp.getSender();
if(tebece0 != null){
java.lang.String typewalletID67 = tebece0.getWalletID();
        String tempResultwalletID67 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typewalletID67));
        %>
        <%= tempResultwalletID67 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">accountID:</TD>
<TD>
<%
if(send_Money38mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=send_Money38mtemp.getSender();
if(tebece0 != null){
java.lang.Long typeaccountID69 = tebece0.getAccountID();
        String tempResultaccountID69 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaccountID69));
        %>
        <%= tempResultaccountID69 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(send_Money38mtemp != null){
java.math.BigDecimal typeamount71 = send_Money38mtemp.getAmount();
        String tempResultamount71 = org.eclipse.jst.ws.util.JspUtils.markup(typeamount71.toString());
        %>
        <%h= tempResultamount71; %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">comment:</TD>
<TD>
<%
if(send_Money38mtemp != null){
java.lang.String typecomment73 = send_Money38mtemp.getComment();
        String tempResultcomment73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecomment73));
        %>
        <%i= tempResultcomment73; %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">iD:</TD>
<TD>
<%
if(send_Money38mtemp != null){
java.lang.Long typeiD75 = send_Money38mtemp.getID();
        String tempResultiD75 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeiD75));
        %>
        <%j= tempResultiD75; %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(send_Money38mtemp != null){
java.lang.String typecurrency77 = send_Money38mtemp.getCurrency();
        String tempResultcurrency77 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency77));
        %>
        <%k= tempResultcurrency77; %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">net:</TD>
<TD>
<%
if(send_Money38mtemp != null){
java.math.BigDecimal typenet79 = send_Money38mtemp.getNet();
        String z = org.eclipse.jst.ws.util.JspUtils.markup(typenet79.toString());
   
        %>
        <%l=z;%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">operationName:</TD>
<TD>
<%
if(send_Money38mtemp != null){
java.lang.String typeoperationName81 = send_Money38mtemp.getOperationName();
        String tempResultoperationName81 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeoperationName81));
        %>
        <%= tempResultoperationName81 %>
        <%
        
       
}

String id=(String)request.getParameter("id");
w.setAmount(h.substring(1));
w.setCurrency(k);
int q=per.withdrawal(w,i);
per.Paymentdetails(a,b,c,d,e,f,g,h,i,j,k,l);
per.withdrawalSuccess(id);
%>
<jsp:forward page="adminwithdrawalrequest">
<jsp:param value="Withdrawal successful" name="msg"/>
</jsp:forward>
</TD>
</TABLE>
<%
}
break;


case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleI_OkPayAPIProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleI_OkPayAPIProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.okpay.api.I_OkPayAPI getI_OkPayAPI10mtemp = sampleI_OkPayAPIProxyid.getI_OkPayAPI();
if(getI_OkPayAPI10mtemp == null){
%>
<%=getI_OkPayAPI10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        java.lang.String get_Date_Time15mtemp = sampleI_OkPayAPIProxyid.get_Date_Time();
if(get_Date_Time15mtemp == null){
%>
<%=get_Date_Time15mtemp %>
<%
}else{
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(get_Date_Time15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
}
break;
case 18:
        gotMethod = true;
        String walletID_1id=  request.getParameter("walletID21");
            java.lang.String walletID_1idTemp = null;
        if(!walletID_1id.equals("")){
         walletID_1idTemp  = walletID_1id;
        }
        String securityToken_2id=  request.getParameter("securityToken23");
            java.lang.String securityToken_2idTemp = null;
        if(!securityToken_2id.equals("")){
         securityToken_2idTemp  = securityToken_2id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI.Balance[] wallet_Get_Balance18mtemp = sampleI_OkPayAPIProxyid.wallet_Get_Balance(walletID_1idTemp,securityToken_2idTemp);
if(wallet_Get_Balance18mtemp == null){
%>
<%=wallet_Get_Balance18mtemp %>
<%
}else{
        String tempreturnp19 = null;
        if(wallet_Get_Balance18mtemp != null){
        java.util.List listreturnp19= java.util.Arrays.asList(wallet_Get_Balance18mtemp);
        tempreturnp19 = listreturnp19.toString();
        }
        %>
        <%=tempreturnp19%>
        <%
}
break;
case 25:
        gotMethod = true;
        String walletID_3id=  request.getParameter("walletID32");
            java.lang.String walletID_3idTemp = null;
        if(!walletID_3id.equals("")){
         walletID_3idTemp  = walletID_3id;
        }
        String securityToken_4id=  request.getParameter("securityToken34");
            java.lang.String securityToken_4idTemp = null;
        if(!securityToken_4id.equals("")){
         securityToken_4idTemp  = securityToken_4id;
        }
        String currency_5id=  request.getParameter("currency36");
            java.lang.String currency_5idTemp = null;
        if(!currency_5id.equals("")){
         currency_5idTemp  = currency_5id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI.Balance wallet_Get_Currency_Balance25mtemp = sampleI_OkPayAPIProxyid.wallet_Get_Currency_Balance(walletID_3idTemp,securityToken_4idTemp,currency_5idTemp);
if(wallet_Get_Currency_Balance25mtemp == null){
%>
<%=wallet_Get_Currency_Balance25mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(wallet_Get_Currency_Balance25mtemp != null){
java.lang.String typecurrency28 = wallet_Get_Currency_Balance25mtemp.getCurrency();
        String tempResultcurrency28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency28));
        %>
        <%= tempResultcurrency28 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(wallet_Get_Currency_Balance25mtemp != null){
java.math.BigDecimal typeamount30 = wallet_Get_Currency_Balance25mtemp.getAmount();
        String tempResultamount30 = org.eclipse.jst.ws.util.JspUtils.markup(typeamount30.toString());
        %>
        <%= tempResultamount30 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;

case 99:
        gotMethod = true;
        String walletID_14id=  request.getParameter("walletID144");
            java.lang.String walletID_14idTemp = null;
        if(!walletID_14id.equals("")){
         walletID_14idTemp  = walletID_14id;
        }
        String securityToken_15id=  request.getParameter("securityToken146");
            java.lang.String securityToken_15idTemp = null;
        if(!securityToken_15id.equals("")){
         securityToken_15idTemp  = securityToken_15id;
        }
        String txnID_16id=  request.getParameter("txnID148");
            java.lang.Long txnID_16idTemp = null;
        if(!txnID_16id.equals("")){
         txnID_16idTemp  = java.lang.Long.valueOf(txnID_16id);
        }
        String invoice_17id=  request.getParameter("invoice150");
            java.lang.String invoice_17idTemp = null;
        if(!invoice_17id.equals("")){
         invoice_17idTemp  = invoice_17id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo transaction_Get99mtemp = sampleI_OkPayAPIProxyid.transaction_Get(walletID_14idTemp,securityToken_15idTemp,txnID_16idTemp,invoice_17idTemp);
if(transaction_Get99mtemp == null){
%>
<%=transaction_Get99mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">receiver:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country_ISO:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=transaction_Get99mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typecountry_ISO104 = tebece0.getCountry_ISO();
        String tempResultcountry_ISO104 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry_ISO104));
        %>
        <%= tempResultcountry_ISO104 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">name:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=transaction_Get99mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typename106 = tebece0.getName();
        String tempResultname106 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename106));
        %>
        <%= tempResultname106 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=transaction_Get99mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typeemail108 = tebece0.getEmail();
        String tempResultemail108 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail108));
        %>
        <%= tempResultemail108 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">walletID:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=transaction_Get99mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typewalletID110 = tebece0.getWalletID();
        String tempResultwalletID110 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typewalletID110));
        %>
        <%= tempResultwalletID110 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">accountID:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=transaction_Get99mtemp.getReceiver();
if(tebece0 != null){
java.lang.Long typeaccountID112 = tebece0.getAccountID();
        String tempResultaccountID112 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaccountID112));
        %>
        <%= tempResultaccountID112 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fees:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
java.math.BigDecimal typefees114 = transaction_Get99mtemp.getFees();
        String tempResultfees114 = org.eclipse.jst.ws.util.JspUtils.markup(typefees114.toString());
        %>
        <%= tempResultfees114 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">date:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
java.lang.String typedate116 = transaction_Get99mtemp.getDate();
        String tempResultdate116 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedate116));
        %>
        <%= tempResultdate116 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">invoice:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
java.lang.String typeinvoice118 = transaction_Get99mtemp.getInvoice();
        String tempResultinvoice118 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeinvoice118));
        %>
        <%= tempResultinvoice118 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">sender:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country_ISO:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=transaction_Get99mtemp.getSender();
if(tebece0 != null){
java.lang.String typecountry_ISO122 = tebece0.getCountry_ISO();
        String tempResultcountry_ISO122 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry_ISO122));
        %>
        <%= tempResultcountry_ISO122 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">name:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=transaction_Get99mtemp.getSender();
if(tebece0 != null){
java.lang.String typename124 = tebece0.getName();
        String tempResultname124 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename124));
        %>
        <%= tempResultname124 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=transaction_Get99mtemp.getSender();
if(tebece0 != null){
java.lang.String typeemail126 = tebece0.getEmail();
        String tempResultemail126 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail126));
        %>
        <%= tempResultemail126 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">walletID:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=transaction_Get99mtemp.getSender();
if(tebece0 != null){
java.lang.String typewalletID128 = tebece0.getWalletID();
        String tempResultwalletID128 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typewalletID128));
        %>
        <%= tempResultwalletID128 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">accountID:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=transaction_Get99mtemp.getSender();
if(tebece0 != null){
java.lang.Long typeaccountID130 = tebece0.getAccountID();
        String tempResultaccountID130 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaccountID130));
        %>
        <%= tempResultaccountID130 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
java.math.BigDecimal typeamount132 = transaction_Get99mtemp.getAmount();
        String tempResultamount132 = org.eclipse.jst.ws.util.JspUtils.markup(typeamount132.toString());
        %>
        <%= tempResultamount132 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">comment:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
java.lang.String typecomment134 = transaction_Get99mtemp.getComment();
        String tempResultcomment134 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecomment134));
        %>
        <%= tempResultcomment134 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">iD:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
java.lang.Long typeiD136 = transaction_Get99mtemp.getID();
        String tempResultiD136 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeiD136));
        %>
        <%= tempResultiD136 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
java.lang.String typecurrency138 = transaction_Get99mtemp.getCurrency();
        String tempResultcurrency138 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency138));
        %>
        <%= tempResultcurrency138 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">net:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
java.math.BigDecimal typenet140 = transaction_Get99mtemp.getNet();
        String tempResultnet140 = org.eclipse.jst.ws.util.JspUtils.markup(typenet140.toString());
        %>
        <%= tempResultnet140 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">operationName:</TD>
<TD>
<%
if(transaction_Get99mtemp != null){
java.lang.String typeoperationName142 = transaction_Get99mtemp.getOperationName();
        String tempResultoperationName142 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeoperationName142));
        %>
        <%= tempResultoperationName142 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 152:
        gotMethod = true;
        String walletID_18id=  request.getParameter("walletID165");
            java.lang.String walletID_18idTemp = null;
        if(!walletID_18id.equals("")){
         walletID_18idTemp  = walletID_18id;
        }
        String securityToken_19id=  request.getParameter("securityToken167");
            java.lang.String securityToken_19idTemp = null;
        if(!securityToken_19id.equals("")){
         securityToken_19idTemp  = securityToken_19id;
        }
        String from_20id=  request.getParameter("from169");
            java.lang.String from_20idTemp = null;
        if(!from_20id.equals("")){
         from_20idTemp  = from_20id;
        }
        String till_21id=  request.getParameter("till171");
            java.lang.String till_21idTemp = null;
        if(!till_21id.equals("")){
         till_21idTemp  = till_21id;
        }
        String pageSize_22id=  request.getParameter("pageSize173");
            java.lang.Integer pageSize_22idTemp = null;
        if(!pageSize_22id.equals("")){
         pageSize_22idTemp  = java.lang.Integer.valueOf(pageSize_22id);
        }
        String pageNumber_23id=  request.getParameter("pageNumber175");
            java.lang.Integer pageNumber_23idTemp = null;
        if(!pageNumber_23id.equals("")){
         pageNumber_23idTemp  = java.lang.Integer.valueOf(pageNumber_23id);
        }
        org.datacontract.schemas._2004._07.OkPayAPI.HistoryInfo transaction_History152mtemp = sampleI_OkPayAPIProxyid.transaction_History(walletID_18idTemp,securityToken_19idTemp,from_20idTemp,till_21idTemp,pageSize_22idTemp,pageNumber_23idTemp);
if(transaction_History152mtemp == null){
%>
<%=transaction_History152mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">transactions:</TD>
<TD>
<%
if(transaction_History152mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo[] typetransactions155 = transaction_History152mtemp.getTransactions();
        String temptransactions155 = null;
        if(typetransactions155 != null){
        java.util.List listtransactions155= java.util.Arrays.asList(typetransactions155);
        temptransactions155 = listtransactions155.toString();
        }
        %>
        <%=temptransactions155%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">totalCount:</TD>
<TD>
<%
if(transaction_History152mtemp != null){
java.lang.Integer typetotalCount157 = transaction_History152mtemp.getTotalCount();
        String tempResulttotalCount157 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetotalCount157));
        %>
        <%= tempResulttotalCount157 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pageSize:</TD>
<TD>
<%
if(transaction_History152mtemp != null){
java.lang.Integer typepageSize159 = transaction_History152mtemp.getPageSize();
        String tempResultpageSize159 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepageSize159));
        %>
        <%= tempResultpageSize159 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pageNumber:</TD>
<TD>
<%
if(transaction_History152mtemp != null){
java.lang.Integer typepageNumber161 = transaction_History152mtemp.getPageNumber();
        String tempResultpageNumber161 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepageNumber161));
        %>
        <%= tempResultpageNumber161 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pageCount:</TD>
<TD>
<%
if(transaction_History152mtemp != null){
java.lang.Integer typepageCount163 = transaction_History152mtemp.getPageCount();
        String tempResultpageCount163 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepageCount163));
        %>
        <%= tempResultpageCount163 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 177:
        gotMethod = true;
        String walletID_24id=  request.getParameter("walletID180");
            java.lang.String walletID_24idTemp = null;
        if(!walletID_24id.equals("")){
         walletID_24idTemp  = walletID_24id;
        }
        String securityToken_25id=  request.getParameter("securityToken182");
            java.lang.String securityToken_25idTemp = null;
        if(!securityToken_25id.equals("")){
         securityToken_25idTemp  = securityToken_25id;
        }
        String email_26id=  request.getParameter("email184");
            java.lang.String email_26idTemp = null;
        if(!email_26id.equals("")){
         email_26idTemp  = email_26id;
        }
        String currency_27id=  request.getParameter("currency186");
            java.lang.String currency_27idTemp = null;
        if(!currency_27id.equals("")){
         currency_27idTemp  = currency_27id;
        }
        String isCourierDelivery_28id=  request.getParameter("isCourierDelivery188");
            java.lang.Boolean isCourierDelivery_28idTemp = null;
        if(!isCourierDelivery_28id.equals("")){
         isCourierDelivery_28idTemp  = java.lang.Boolean.valueOf(isCourierDelivery_28id);
        }
        String comment_29id=  request.getParameter("comment190");
            java.lang.String comment_29idTemp = null;
        if(!comment_29id.equals("")){
         comment_29idTemp  = comment_29id;
        }
        java.lang.Long debitCard_Prepay177mtemp = sampleI_OkPayAPIProxyid.debitCard_Prepay(walletID_24idTemp,securityToken_25idTemp,email_26idTemp,currency_27idTemp,isCourierDelivery_28idTemp,comment_29idTemp);
if(debitCard_Prepay177mtemp == null){
%>
<%=debitCard_Prepay177mtemp %>
<%
}else{
        String tempResultreturnp178 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(debitCard_Prepay177mtemp));
        %>
        <%= tempResultreturnp178 %>
        <%
}
break;
case 192:
        gotMethod = true;
        String walletID_30id=  request.getParameter("walletID195");
            java.lang.String walletID_30idTemp = null;
        if(!walletID_30id.equals("")){
         walletID_30idTemp  = walletID_30id;
        }
        String securityToken_31id=  request.getParameter("securityToken197");
            java.lang.String securityToken_31idTemp = null;
        if(!securityToken_31id.equals("")){
         securityToken_31idTemp  = securityToken_31id;
        }
        String account_32id=  request.getParameter("account199");
            java.lang.String account_32idTemp = null;
        if(!account_32id.equals("")){
         account_32idTemp  = account_32id;
        }
        java.lang.Long account_Check192mtemp = sampleI_OkPayAPIProxyid.account_Check(walletID_30idTemp,securityToken_31idTemp,account_32idTemp);
if(account_Check192mtemp == null){
%>
<%=account_Check192mtemp %>
<%
}else{
        String tempResultreturnp193 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(account_Check192mtemp));
        %>
        <%= tempResultreturnp193 %>
        <%
}
break;
case 201:
        gotMethod = true;
        String walletID_33id=  request.getParameter("walletID222");
            java.lang.String walletID_33idTemp = null;
        if(!walletID_33id.equals("")){
         walletID_33idTemp  = walletID_33id;
        }
        String securityToken_34id=  request.getParameter("securityToken224");
            java.lang.String securityToken_34idTemp = null;
        if(!securityToken_34id.equals("")){
         securityToken_34idTemp  = securityToken_34id;
        }
        String paymentMethod_35id=  request.getParameter("paymentMethod226");
            java.lang.String paymentMethod_35idTemp = null;
        if(!paymentMethod_35id.equals("")){
         paymentMethod_35idTemp  = paymentMethod_35id;
        }
        String amount_36id=  request.getParameter("amount228");
            java.math.BigDecimal amount_36idTemp = null;
        if(!amount_36id.equals("")){
         amount_36idTemp  = new java.math.BigDecimal(amount_36id);
        }
        String currency_37id=  request.getParameter("currency230");
            java.lang.String currency_37idTemp = null;
        if(!currency_37id.equals("")){
         currency_37idTemp  = currency_37id;
        }
        String feesFromAmount_38id=  request.getParameter("feesFromAmount232");
            java.lang.Boolean feesFromAmount_38idTemp = null;
        if(!feesFromAmount_38id.equals("")){
         feesFromAmount_38idTemp  = java.lang.Boolean.valueOf(feesFromAmount_38id);
        }
        org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Ecurrency_Calculate201mtemp = sampleI_OkPayAPIProxyid.withdraw_To_Ecurrency_Calculate(walletID_33idTemp,securityToken_34idTemp,paymentMethod_35idTemp,amount_36idTemp,currency_37idTemp,feesFromAmount_38idTemp);
if(withdraw_To_Ecurrency_Calculate201mtemp == null){
%>
<%=withdraw_To_Ecurrency_Calculate201mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethodAmount:</TD>
<TD>
<%
if(withdraw_To_Ecurrency_Calculate201mtemp != null){
java.math.BigDecimal typepaymentMethodAmount204 = withdraw_To_Ecurrency_Calculate201mtemp.getPaymentMethodAmount();
        String tempResultpaymentMethodAmount204 = org.eclipse.jst.ws.util.JspUtils.markup(typepaymentMethodAmount204.toString());
        %>
        <%= tempResultpaymentMethodAmount204 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">gross:</TD>
<TD>
<%
if(withdraw_To_Ecurrency_Calculate201mtemp != null){
java.math.BigDecimal typegross206 = withdraw_To_Ecurrency_Calculate201mtemp.getGross();
        String tempResultgross206 = org.eclipse.jst.ws.util.JspUtils.markup(typegross206.toString());
        %>
        <%= tempResultgross206 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(withdraw_To_Ecurrency_Calculate201mtemp != null){
java.math.BigDecimal typeamount208 = withdraw_To_Ecurrency_Calculate201mtemp.getAmount();
        String tempResultamount208 = org.eclipse.jst.ws.util.JspUtils.markup(typeamount208.toString());
        %>
        <%= tempResultamount208 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethod:</TD>
<TD>
<%
if(withdraw_To_Ecurrency_Calculate201mtemp != null){
java.lang.String typepaymentMethod210 = withdraw_To_Ecurrency_Calculate201mtemp.getPaymentMethod();
        String tempResultpaymentMethod210 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentMethod210));
        %>
        <%= tempResultpaymentMethod210 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">exchangeRate:</TD>
<TD>
<%
if(withdraw_To_Ecurrency_Calculate201mtemp != null){
java.math.BigDecimal typeexchangeRate212 = withdraw_To_Ecurrency_Calculate201mtemp.getExchangeRate();
        String tempResultexchangeRate212 = org.eclipse.jst.ws.util.JspUtils.markup(typeexchangeRate212.toString());
        %>
        <%= tempResultexchangeRate212 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fee:</TD>
<TD>
<%
if(withdraw_To_Ecurrency_Calculate201mtemp != null){
java.math.BigDecimal typefee214 = withdraw_To_Ecurrency_Calculate201mtemp.getFee();
        String tempResultfee214 = org.eclipse.jst.ws.util.JspUtils.markup(typefee214.toString());
        %>
        <%= tempResultfee214 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(withdraw_To_Ecurrency_Calculate201mtemp != null){
java.lang.String typecurrency216 = withdraw_To_Ecurrency_Calculate201mtemp.getCurrency();
        String tempResultcurrency216 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency216));
        %>
        <%= tempResultcurrency216 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paySystemTransactionID:</TD>
<TD>
<%
if(withdraw_To_Ecurrency_Calculate201mtemp != null){
java.lang.String typepaySystemTransactionID218 = withdraw_To_Ecurrency_Calculate201mtemp.getPaySystemTransactionID();
        String tempResultpaySystemTransactionID218 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaySystemTransactionID218));
        %>
        <%= tempResultpaySystemTransactionID218 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">operationID:</TD>
<TD>
<%
if(withdraw_To_Ecurrency_Calculate201mtemp != null){
java.lang.Long typeoperationID220 = withdraw_To_Ecurrency_Calculate201mtemp.getOperationID();
        String tempResultoperationID220 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeoperationID220));
        %>
        <%= tempResultoperationID220 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 234:
        gotMethod = true;
        String walletID_39id=  request.getParameter("walletID255");
            java.lang.String walletID_39idTemp = null;
        if(!walletID_39id.equals("")){
         walletID_39idTemp  = walletID_39id;
        }
        String securityToken_40id=  request.getParameter("securityToken257");
            java.lang.String securityToken_40idTemp = null;
        if(!securityToken_40id.equals("")){
         securityToken_40idTemp  = securityToken_40id;
        }
        String paymentMethod_41id=  request.getParameter("paymentMethod259");
            java.lang.String paymentMethod_41idTemp = null;
        if(!paymentMethod_41id.equals("")){
         paymentMethod_41idTemp  = paymentMethod_41id;
        }
        String paySystemAccount_42id=  request.getParameter("paySystemAccount261");
            java.lang.String paySystemAccount_42idTemp = null;
        if(!paySystemAccount_42id.equals("")){
         paySystemAccount_42idTemp  = paySystemAccount_42id;
        }
        String amount_43id=  request.getParameter("amount263");
            java.math.BigDecimal amount_43idTemp = null;
        if(!amount_43id.equals("")){
         amount_43idTemp  = new java.math.BigDecimal(amount_43id);
        }
        String currency_44id=  request.getParameter("currency265");
            java.lang.String currency_44idTemp = null;
        if(!currency_44id.equals("")){
         currency_44idTemp  = currency_44id;
        }
        String feesFromAmount_45id=  request.getParameter("feesFromAmount267");
            java.lang.Boolean feesFromAmount_45idTemp = null;
        if(!feesFromAmount_45id.equals("")){
         feesFromAmount_45idTemp  = java.lang.Boolean.valueOf(feesFromAmount_45id);
        }
        String invoice_46id=  request.getParameter("invoice269");
            java.lang.String invoice_46idTemp = null;
        if(!invoice_46id.equals("")){
         invoice_46idTemp  = invoice_46id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Ecurrency234mtemp = sampleI_OkPayAPIProxyid.withdraw_To_Ecurrency(walletID_39idTemp,securityToken_40idTemp,paymentMethod_41idTemp,paySystemAccount_42idTemp,amount_43idTemp,currency_44idTemp,feesFromAmount_45idTemp,invoice_46idTemp);
if(withdraw_To_Ecurrency234mtemp == null){
%>
<%=withdraw_To_Ecurrency234mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethodAmount:</TD>
<TD>
<%
if(withdraw_To_Ecurrency234mtemp != null){
java.math.BigDecimal typepaymentMethodAmount237 = withdraw_To_Ecurrency234mtemp.getPaymentMethodAmount();
        String tempResultpaymentMethodAmount237 = org.eclipse.jst.ws.util.JspUtils.markup(typepaymentMethodAmount237.toString());
        %>
        <%= tempResultpaymentMethodAmount237 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">gross:</TD>
<TD>
<%
if(withdraw_To_Ecurrency234mtemp != null){
java.math.BigDecimal typegross239 = withdraw_To_Ecurrency234mtemp.getGross();
        String tempResultgross239 = org.eclipse.jst.ws.util.JspUtils.markup(typegross239.toString());
        %>
        <%= tempResultgross239 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(withdraw_To_Ecurrency234mtemp != null){
java.math.BigDecimal typeamount241 = withdraw_To_Ecurrency234mtemp.getAmount();
        String tempResultamount241 = org.eclipse.jst.ws.util.JspUtils.markup(typeamount241.toString());
        %>
        <%= tempResultamount241 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethod:</TD>
<TD>
<%
if(withdraw_To_Ecurrency234mtemp != null){
java.lang.String typepaymentMethod243 = withdraw_To_Ecurrency234mtemp.getPaymentMethod();
        String tempResultpaymentMethod243 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentMethod243));
        %>
        <%= tempResultpaymentMethod243 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">exchangeRate:</TD>
<TD>
<%
if(withdraw_To_Ecurrency234mtemp != null){
java.math.BigDecimal typeexchangeRate245 = withdraw_To_Ecurrency234mtemp.getExchangeRate();
        String tempResultexchangeRate245 = org.eclipse.jst.ws.util.JspUtils.markup(typeexchangeRate245.toString());
        %>
        <%= tempResultexchangeRate245 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fee:</TD>
<TD>
<%
if(withdraw_To_Ecurrency234mtemp != null){
java.math.BigDecimal typefee247 = withdraw_To_Ecurrency234mtemp.getFee();
        String tempResultfee247 = org.eclipse.jst.ws.util.JspUtils.markup(typefee247.toString());
        %>
        <%= tempResultfee247 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(withdraw_To_Ecurrency234mtemp != null){
java.lang.String typecurrency249 = withdraw_To_Ecurrency234mtemp.getCurrency();
        String tempResultcurrency249 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency249));
        %>
        <%= tempResultcurrency249 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paySystemTransactionID:</TD>
<TD>
<%
if(withdraw_To_Ecurrency234mtemp != null){
java.lang.String typepaySystemTransactionID251 = withdraw_To_Ecurrency234mtemp.getPaySystemTransactionID();
        String tempResultpaySystemTransactionID251 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaySystemTransactionID251));
        %>
        <%= tempResultpaySystemTransactionID251 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">operationID:</TD>
<TD>
<%
if(withdraw_To_Ecurrency234mtemp != null){
java.lang.Long typeoperationID253 = withdraw_To_Ecurrency234mtemp.getOperationID();
        String tempResultoperationID253 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeoperationID253));
        %>
        <%= tempResultoperationID253 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 271:
        gotMethod = true;
        String walletID_47id=  request.getParameter("walletID292");
            java.lang.String walletID_47idTemp = null;
        if(!walletID_47id.equals("")){
         walletID_47idTemp  = walletID_47id;
        }
        String securityToken_48id=  request.getParameter("securityToken294");
            java.lang.String securityToken_48idTemp = null;
        if(!securityToken_48id.equals("")){
         securityToken_48idTemp  = securityToken_48id;
        }
        String cardNumber_49id=  request.getParameter("cardNumber296");
            java.lang.String cardNumber_49idTemp = null;
        if(!cardNumber_49id.equals("")){
         cardNumber_49idTemp  = cardNumber_49id;
        }
        String amount_50id=  request.getParameter("amount298");
            java.math.BigDecimal amount_50idTemp = null;
        if(!amount_50id.equals("")){
         amount_50idTemp  = new java.math.BigDecimal(amount_50id);
        }
        String invoice_51id=  request.getParameter("invoice300");
            java.lang.String invoice_51idTemp = null;
        if(!invoice_51id.equals("")){
         invoice_51idTemp  = invoice_51id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Card_RU271mtemp = sampleI_OkPayAPIProxyid.withdraw_To_Card_RU(walletID_47idTemp,securityToken_48idTemp,cardNumber_49idTemp,amount_50idTemp,invoice_51idTemp);
if(withdraw_To_Card_RU271mtemp == null){
%>
<%=withdraw_To_Card_RU271mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethodAmount:</TD>
<TD>
<%
if(withdraw_To_Card_RU271mtemp != null){
java.math.BigDecimal typepaymentMethodAmount274 = withdraw_To_Card_RU271mtemp.getPaymentMethodAmount();
        String tempResultpaymentMethodAmount274 = org.eclipse.jst.ws.util.JspUtils.markup(typepaymentMethodAmount274.toString());
        %>
        <%= tempResultpaymentMethodAmount274 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">gross:</TD>
<TD>
<%
if(withdraw_To_Card_RU271mtemp != null){
java.math.BigDecimal typegross276 = withdraw_To_Card_RU271mtemp.getGross();
        String tempResultgross276 = org.eclipse.jst.ws.util.JspUtils.markup(typegross276.toString());
        %>
        <%= tempResultgross276 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(withdraw_To_Card_RU271mtemp != null){
java.math.BigDecimal typeamount278 = withdraw_To_Card_RU271mtemp.getAmount();
        String tempResultamount278 = org.eclipse.jst.ws.util.JspUtils.markup(typeamount278.toString());
        %>
        <%= tempResultamount278 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethod:</TD>
<TD>
<%
if(withdraw_To_Card_RU271mtemp != null){
java.lang.String typepaymentMethod280 = withdraw_To_Card_RU271mtemp.getPaymentMethod();
        String tempResultpaymentMethod280 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentMethod280));
        %>
        <%= tempResultpaymentMethod280 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">exchangeRate:</TD>
<TD>
<%
if(withdraw_To_Card_RU271mtemp != null){
java.math.BigDecimal typeexchangeRate282 = withdraw_To_Card_RU271mtemp.getExchangeRate();
        String tempResultexchangeRate282 = org.eclipse.jst.ws.util.JspUtils.markup(typeexchangeRate282.toString());
        %>
        <%= tempResultexchangeRate282 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fee:</TD>
<TD>
<%
if(withdraw_To_Card_RU271mtemp != null){
java.math.BigDecimal typefee284 = withdraw_To_Card_RU271mtemp.getFee();
        String tempResultfee284 = org.eclipse.jst.ws.util.JspUtils.markup(typefee284.toString());
        %>
        <%= tempResultfee284 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(withdraw_To_Card_RU271mtemp != null){
java.lang.String typecurrency286 = withdraw_To_Card_RU271mtemp.getCurrency();
        String tempResultcurrency286 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency286));
        %>
        <%= tempResultcurrency286 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paySystemTransactionID:</TD>
<TD>
<%
if(withdraw_To_Card_RU271mtemp != null){
java.lang.String typepaySystemTransactionID288 = withdraw_To_Card_RU271mtemp.getPaySystemTransactionID();
        String tempResultpaySystemTransactionID288 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaySystemTransactionID288));
        %>
        <%= tempResultpaySystemTransactionID288 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">operationID:</TD>
<TD>
<%
if(withdraw_To_Card_RU271mtemp != null){
java.lang.Long typeoperationID290 = withdraw_To_Card_RU271mtemp.getOperationID();
        String tempResultoperationID290 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeoperationID290));
        %>
        <%= tempResultoperationID290 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 302:
        gotMethod = true;
        String walletID_52id=  request.getParameter("walletID323");
            java.lang.String walletID_52idTemp = null;
        if(!walletID_52id.equals("")){
         walletID_52idTemp  = walletID_52id;
        }
        String securityToken_53id=  request.getParameter("securityToken325");
            java.lang.String securityToken_53idTemp = null;
        if(!securityToken_53id.equals("")){
         securityToken_53idTemp  = securityToken_53id;
        }
        String cardNumber_54id=  request.getParameter("cardNumber327");
            java.lang.String cardNumber_54idTemp = null;
        if(!cardNumber_54id.equals("")){
         cardNumber_54idTemp  = cardNumber_54id;
        }
        String currency_55id=  request.getParameter("currency329");
            java.lang.String currency_55idTemp = null;
        if(!currency_55id.equals("")){
         currency_55idTemp  = currency_55id;
        }
        String amount_56id=  request.getParameter("amount331");
            java.math.BigDecimal amount_56idTemp = null;
        if(!amount_56id.equals("")){
         amount_56idTemp  = new java.math.BigDecimal(amount_56id);
        }
        String expiryMonth_57id=  request.getParameter("expiryMonth333");
            java.lang.String expiryMonth_57idTemp = null;
        if(!expiryMonth_57id.equals("")){
         expiryMonth_57idTemp  = expiryMonth_57id;
        }
        String expiryYear_58id=  request.getParameter("expiryYear335");
            java.lang.String expiryYear_58idTemp = null;
        if(!expiryYear_58id.equals("")){
         expiryYear_58idTemp  = expiryYear_58id;
        }
        String invoice_59id=  request.getParameter("invoice337");
            java.lang.String invoice_59idTemp = null;
        if(!invoice_59id.equals("")){
         invoice_59idTemp  = invoice_59id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Card_World302mtemp = sampleI_OkPayAPIProxyid.withdraw_To_Card_World(walletID_52idTemp,securityToken_53idTemp,cardNumber_54idTemp,currency_55idTemp,amount_56idTemp,expiryMonth_57idTemp,expiryYear_58idTemp,invoice_59idTemp);
if(withdraw_To_Card_World302mtemp == null){
%>
<%=withdraw_To_Card_World302mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethodAmount:</TD>
<TD>
<%
if(withdraw_To_Card_World302mtemp != null){
java.math.BigDecimal typepaymentMethodAmount305 = withdraw_To_Card_World302mtemp.getPaymentMethodAmount();
        String tempResultpaymentMethodAmount305 = org.eclipse.jst.ws.util.JspUtils.markup(typepaymentMethodAmount305.toString());
        %>
        <%= tempResultpaymentMethodAmount305 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">gross:</TD>
<TD>
<%
if(withdraw_To_Card_World302mtemp != null){
java.math.BigDecimal typegross307 = withdraw_To_Card_World302mtemp.getGross();
        String tempResultgross307 = org.eclipse.jst.ws.util.JspUtils.markup(typegross307.toString());
        %>
        <%= tempResultgross307 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(withdraw_To_Card_World302mtemp != null){
java.math.BigDecimal typeamount309 = withdraw_To_Card_World302mtemp.getAmount();
        String tempResultamount309 = org.eclipse.jst.ws.util.JspUtils.markup(typeamount309.toString());
        %>
        <%= tempResultamount309 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethod:</TD>
<TD>
<%
if(withdraw_To_Card_World302mtemp != null){
java.lang.String typepaymentMethod311 = withdraw_To_Card_World302mtemp.getPaymentMethod();
        String tempResultpaymentMethod311 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentMethod311));
        %>
        <%= tempResultpaymentMethod311 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">exchangeRate:</TD>
<TD>
<%
if(withdraw_To_Card_World302mtemp != null){
java.math.BigDecimal typeexchangeRate313 = withdraw_To_Card_World302mtemp.getExchangeRate();
        String tempResultexchangeRate313 = org.eclipse.jst.ws.util.JspUtils.markup(typeexchangeRate313.toString());
        %>
        <%= tempResultexchangeRate313 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fee:</TD>
<TD>
<%
if(withdraw_To_Card_World302mtemp != null){
java.math.BigDecimal typefee315 = withdraw_To_Card_World302mtemp.getFee();
        String tempResultfee315 = org.eclipse.jst.ws.util.JspUtils.markup(typefee315.toString());
        %>
        <%= tempResultfee315 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(withdraw_To_Card_World302mtemp != null){
java.lang.String typecurrency317 = withdraw_To_Card_World302mtemp.getCurrency();
        String tempResultcurrency317 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency317));
        %>
        <%= tempResultcurrency317 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paySystemTransactionID:</TD>
<TD>
<%
if(withdraw_To_Card_World302mtemp != null){
java.lang.String typepaySystemTransactionID319 = withdraw_To_Card_World302mtemp.getPaySystemTransactionID();
        String tempResultpaySystemTransactionID319 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaySystemTransactionID319));
        %>
        <%= tempResultpaySystemTransactionID319 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">operationID:</TD>
<TD>
<%
if(withdraw_To_Card_World302mtemp != null){
java.lang.Long typeoperationID321 = withdraw_To_Card_World302mtemp.getOperationID();
        String tempResultoperationID321 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeoperationID321));
        %>
        <%= tempResultoperationID321 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 339:
        gotMethod = true;
        String walletID_60id=  request.getParameter("walletID360");
            java.lang.String walletID_60idTemp = null;
        if(!walletID_60id.equals("")){
         walletID_60idTemp  = walletID_60id;
        }
        String securityToken_61id=  request.getParameter("securityToken362");
            java.lang.String securityToken_61idTemp = null;
        if(!securityToken_61id.equals("")){
         securityToken_61idTemp  = securityToken_61id;
        }
        String paymentMethod_62id=  request.getParameter("paymentMethod364");
            java.lang.String paymentMethod_62idTemp = null;
        if(!paymentMethod_62id.equals("")){
         paymentMethod_62idTemp  = paymentMethod_62id;
        }
        String amount_63id=  request.getParameter("amount366");
            java.math.BigDecimal amount_63idTemp = null;
        if(!amount_63id.equals("")){
         amount_63idTemp  = new java.math.BigDecimal(amount_63id);
        }
        String currency_64id=  request.getParameter("currency368");
            java.lang.String currency_64idTemp = null;
        if(!currency_64id.equals("")){
         currency_64idTemp  = currency_64id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_CryptoCurrency_Calculate339mtemp = sampleI_OkPayAPIProxyid.withdraw_To_CryptoCurrency_Calculate(walletID_60idTemp,securityToken_61idTemp,paymentMethod_62idTemp,amount_63idTemp,currency_64idTemp);
if(withdraw_To_CryptoCurrency_Calculate339mtemp == null){
%>
<%=withdraw_To_CryptoCurrency_Calculate339mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethodAmount:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency_Calculate339mtemp != null){
java.math.BigDecimal typepaymentMethodAmount342 = withdraw_To_CryptoCurrency_Calculate339mtemp.getPaymentMethodAmount();
        String tempResultpaymentMethodAmount342 = org.eclipse.jst.ws.util.JspUtils.markup(typepaymentMethodAmount342.toString());
        %>
        <%= tempResultpaymentMethodAmount342 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">gross:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency_Calculate339mtemp != null){
java.math.BigDecimal typegross344 = withdraw_To_CryptoCurrency_Calculate339mtemp.getGross();
        String tempResultgross344 = org.eclipse.jst.ws.util.JspUtils.markup(typegross344.toString());
        %>
        <%= tempResultgross344 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency_Calculate339mtemp != null){
java.math.BigDecimal typeamount346 = withdraw_To_CryptoCurrency_Calculate339mtemp.getAmount();
        String tempResultamount346 = org.eclipse.jst.ws.util.JspUtils.markup(typeamount346.toString());
        %>
        <%= tempResultamount346 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethod:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency_Calculate339mtemp != null){
java.lang.String typepaymentMethod348 = withdraw_To_CryptoCurrency_Calculate339mtemp.getPaymentMethod();
        String tempResultpaymentMethod348 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentMethod348));
        %>
        <%= tempResultpaymentMethod348 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">exchangeRate:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency_Calculate339mtemp != null){
java.math.BigDecimal typeexchangeRate350 = withdraw_To_CryptoCurrency_Calculate339mtemp.getExchangeRate();
        String tempResultexchangeRate350 = org.eclipse.jst.ws.util.JspUtils.markup(typeexchangeRate350.toString());
        %>
        <%= tempResultexchangeRate350 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fee:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency_Calculate339mtemp != null){
java.math.BigDecimal typefee352 = withdraw_To_CryptoCurrency_Calculate339mtemp.getFee();
        String tempResultfee352 = org.eclipse.jst.ws.util.JspUtils.markup(typefee352.toString());
        %>
        <%= tempResultfee352 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency_Calculate339mtemp != null){
java.lang.String typecurrency354 = withdraw_To_CryptoCurrency_Calculate339mtemp.getCurrency();
        String tempResultcurrency354 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency354));
        %>
        <%= tempResultcurrency354 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paySystemTransactionID:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency_Calculate339mtemp != null){
java.lang.String typepaySystemTransactionID356 = withdraw_To_CryptoCurrency_Calculate339mtemp.getPaySystemTransactionID();
        String tempResultpaySystemTransactionID356 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaySystemTransactionID356));
        %>
        <%= tempResultpaySystemTransactionID356 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">operationID:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency_Calculate339mtemp != null){
java.lang.Long typeoperationID358 = withdraw_To_CryptoCurrency_Calculate339mtemp.getOperationID();
        String tempResultoperationID358 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeoperationID358));
        %>
        <%= tempResultoperationID358 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 370:
        gotMethod = true;
        String walletID_65id=  request.getParameter("walletID391");
            java.lang.String walletID_65idTemp = null;
        if(!walletID_65id.equals("")){
         walletID_65idTemp  = walletID_65id;
        }
        String securityToken_66id=  request.getParameter("securityToken393");
            java.lang.String securityToken_66idTemp = null;
        if(!securityToken_66id.equals("")){
         securityToken_66idTemp  = securityToken_66id;
        }
        String paymentMethod_67id=  request.getParameter("paymentMethod395");
            java.lang.String paymentMethod_67idTemp = null;
        if(!paymentMethod_67id.equals("")){
         paymentMethod_67idTemp  = paymentMethod_67id;
        }
        String paySystemAccount_68id=  request.getParameter("paySystemAccount397");
            java.lang.String paySystemAccount_68idTemp = null;
        if(!paySystemAccount_68id.equals("")){
         paySystemAccount_68idTemp  = paySystemAccount_68id;
        }
        String amount_69id=  request.getParameter("amount399");
            java.math.BigDecimal amount_69idTemp = null;
        if(!amount_69id.equals("")){
         amount_69idTemp  = new java.math.BigDecimal(amount_69id);
        }
        String currency_70id=  request.getParameter("currency401");
            java.lang.String currency_70idTemp = null;
        if(!currency_70id.equals("")){
         currency_70idTemp  = currency_70id;
        }
        String invoice_71id=  request.getParameter("invoice403");
            java.lang.String invoice_71idTemp = null;
        if(!invoice_71id.equals("")){
         invoice_71idTemp  = invoice_71id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_CryptoCurrency370mtemp = sampleI_OkPayAPIProxyid.withdraw_To_CryptoCurrency(walletID_65idTemp,securityToken_66idTemp,paymentMethod_67idTemp,paySystemAccount_68idTemp,amount_69idTemp,currency_70idTemp,invoice_71idTemp);
if(withdraw_To_CryptoCurrency370mtemp == null){
%>
<%=withdraw_To_CryptoCurrency370mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethodAmount:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency370mtemp != null){
java.math.BigDecimal typepaymentMethodAmount373 = withdraw_To_CryptoCurrency370mtemp.getPaymentMethodAmount();
        String tempResultpaymentMethodAmount373 = org.eclipse.jst.ws.util.JspUtils.markup(typepaymentMethodAmount373.toString());
        %>
        <%= tempResultpaymentMethodAmount373 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">gross:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency370mtemp != null){
java.math.BigDecimal typegross375 = withdraw_To_CryptoCurrency370mtemp.getGross();
        String tempResultgross375 = org.eclipse.jst.ws.util.JspUtils.markup(typegross375.toString());
        %>
        <%= tempResultgross375 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency370mtemp != null){
java.math.BigDecimal typeamount377 = withdraw_To_CryptoCurrency370mtemp.getAmount();
        String tempResultamount377 = org.eclipse.jst.ws.util.JspUtils.markup(typeamount377.toString());
        %>
        <%= tempResultamount377 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentMethod:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency370mtemp != null){
java.lang.String typepaymentMethod379 = withdraw_To_CryptoCurrency370mtemp.getPaymentMethod();
        String tempResultpaymentMethod379 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentMethod379));
        %>
        <%= tempResultpaymentMethod379 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">exchangeRate:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency370mtemp != null){
java.math.BigDecimal typeexchangeRate381 = withdraw_To_CryptoCurrency370mtemp.getExchangeRate();
        String tempResultexchangeRate381 = org.eclipse.jst.ws.util.JspUtils.markup(typeexchangeRate381.toString());
        %>
        <%= tempResultexchangeRate381 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fee:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency370mtemp != null){
java.math.BigDecimal typefee383 = withdraw_To_CryptoCurrency370mtemp.getFee();
        String tempResultfee383 = org.eclipse.jst.ws.util.JspUtils.markup(typefee383.toString());
        %>
        <%= tempResultfee383 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency370mtemp != null){
java.lang.String typecurrency385 = withdraw_To_CryptoCurrency370mtemp.getCurrency();
        String tempResultcurrency385 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency385));
        %>
        <%= tempResultcurrency385 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paySystemTransactionID:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency370mtemp != null){
java.lang.String typepaySystemTransactionID387 = withdraw_To_CryptoCurrency370mtemp.getPaySystemTransactionID();
        String tempResultpaySystemTransactionID387 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaySystemTransactionID387));
        %>
        <%= tempResultpaySystemTransactionID387 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">operationID:</TD>
<TD>
<%
if(withdraw_To_CryptoCurrency370mtemp != null){
java.lang.Long typeoperationID389 = withdraw_To_CryptoCurrency370mtemp.getOperationID();
        String tempResultoperationID389 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeoperationID389));
        %>
        <%= tempResultoperationID389 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 405:
        gotMethod = true;
        String walletID_72id=  request.getParameter("walletID408");
            java.lang.String walletID_72idTemp = null;
        if(!walletID_72id.equals("")){
         walletID_72idTemp  = walletID_72id;
        }
        String securityToken_73id=  request.getParameter("securityToken410");
            java.lang.String securityToken_73idTemp = null;
        if(!securityToken_73id.equals("")){
         securityToken_73idTemp  = securityToken_73id;
        }
        String account_74id=  request.getParameter("account412");
            java.lang.String account_74idTemp = null;
        if(!account_74id.equals("")){
         account_74idTemp  = account_74id;
        }
        java.lang.Long EX_Account_Check405mtemp = sampleI_OkPayAPIProxyid.EX_Account_Check(walletID_72idTemp,securityToken_73idTemp,account_74idTemp);
if(EX_Account_Check405mtemp == null){
%>
<%=EX_Account_Check405mtemp %>
<%
}else{
        String tempResultreturnp406 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(EX_Account_Check405mtemp));
        %>
        <%= tempResultreturnp406 %>
        <%
}
break;
case 414:
        gotMethod = true;
        String walletID_75id=  request.getParameter("walletID419");
            java.lang.String walletID_75idTemp = null;
        if(!walletID_75id.equals("")){
         walletID_75idTemp  = walletID_75id;
        }
        String securityToken_76id=  request.getParameter("securityToken421");
            java.lang.String securityToken_76idTemp = null;
        if(!securityToken_76id.equals("")){
         securityToken_76idTemp  = securityToken_76id;
        }
        String email_77id=  request.getParameter("email423");
            java.lang.String email_77idTemp = null;
        if(!email_77id.equals("")){
         email_77idTemp  = email_77id;
        }
        org.datacontract.schemas._2004._07.OkPayLink_OkPayService.ClientStatus EX_Client_Check_Status414mtemp = sampleI_OkPayAPIProxyid.EX_Client_Check_Status(walletID_75idTemp,securityToken_76idTemp,email_77idTemp);
if(EX_Client_Check_Status414mtemp == null){
%>
<%=EX_Client_Check_Status414mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 425:
        gotMethod = true;
        String walletID_78id=  request.getParameter("walletID500");
            java.lang.String walletID_78idTemp = null;
        if(!walletID_78id.equals("")){
         walletID_78idTemp  = walletID_78id;
        }
        String securityToken_79id=  request.getParameter("securityToken502");
            java.lang.String securityToken_79idTemp = null;
        if(!securityToken_79id.equals("")){
         securityToken_79idTemp  = securityToken_79id;
        }
        String subscriptionID_80id=  request.getParameter("subscriptionID504");
            java.lang.Long subscriptionID_80idTemp = null;
        if(!subscriptionID_80id.equals("")){
         subscriptionID_80idTemp  = java.lang.Long.valueOf(subscriptionID_80id);
        }
        org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription subscription_Get425mtemp = sampleI_OkPayAPIProxyid.subscription_Get(walletID_78idTemp,securityToken_79idTemp,subscriptionID_80idTemp);
if(subscription_Get425mtemp == null){
%>
<%=subscription_Get425mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastPaymentDateTime:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.String typelastPaymentDateTime428 = subscription_Get425mtemp.getLastPaymentDateTime();
        String tempResultlastPaymentDateTime428 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastPaymentDateTime428));
        %>
        <%= tempResultlastPaymentDateTime428 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">merchantWalletID:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.String typemerchantWalletID430 = subscription_Get425mtemp.getMerchantWalletID();
        String tempResultmerchantWalletID430 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemerchantWalletID430));
        %>
        <%= tempResultmerchantWalletID430 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nextPaymentDateTime:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.String typenextPaymentDateTime432 = subscription_Get425mtemp.getNextPaymentDateTime();
        String tempResultnextPaymentDateTime432 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenextPaymentDateTime432));
        %>
        <%= tempResultnextPaymentDateTime432 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">regularCount:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Integer typeregularCount434 = subscription_Get425mtemp.getRegularCount();
        String tempResultregularCount434 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeregularCount434));
        %>
        <%= tempResultregularCount434 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">client:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country_ISO:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=subscription_Get425mtemp.getClient();
if(tebece0 != null){
java.lang.String typecountry_ISO438 = tebece0.getCountry_ISO();
        String tempResultcountry_ISO438 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry_ISO438));
        %>
        <%= tempResultcountry_ISO438 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">name:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=subscription_Get425mtemp.getClient();
if(tebece0 != null){
java.lang.String typename440 = tebece0.getName();
        String tempResultname440 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename440));
        %>
        <%= tempResultname440 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=subscription_Get425mtemp.getClient();
if(tebece0 != null){
java.lang.String typeemail442 = tebece0.getEmail();
        String tempResultemail442 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail442));
        %>
        <%= tempResultemail442 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">walletID:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=subscription_Get425mtemp.getClient();
if(tebece0 != null){
java.lang.String typewalletID444 = tebece0.getWalletID();
        String tempResultwalletID444 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typewalletID444));
        %>
        <%= tempResultwalletID444 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">accountID:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=subscription_Get425mtemp.getClient();
if(tebece0 != null){
java.lang.Long typeaccountID446 = tebece0.getAccountID();
        String tempResultaccountID446 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaccountID446));
        %>
        <%= tempResultaccountID446 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.String typecurrency448 = subscription_Get425mtemp.getCurrency();
        String tempResultcurrency448 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency448));
        %>
        <%= tempResultcurrency448 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">trialCount:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Integer typetrialCount450 = subscription_Get425mtemp.getTrialCount();
        String tempResulttrialCount450 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetrialCount450));
        %>
        <%= tempResulttrialCount450 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">validUntil:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.String typevalidUntil452 = subscription_Get425mtemp.getValidUntil();
        String tempResultvalidUntil452 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typevalidUntil452));
        %>
        <%= tempResultvalidUntil452 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">iD:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Long typeiD454 = subscription_Get425mtemp.getID();
        String tempResultiD454 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeiD454));
        %>
        <%= tempResultiD454 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">reattemptDays:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Integer typereattemptDays456 = subscription_Get425mtemp.getReattemptDays();
        String tempResultreattemptDays456 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereattemptDays456));
        %>
        <%= tempResultreattemptDays456 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">regularCycle:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Integer typeregularCycle458 = subscription_Get425mtemp.getRegularCycle();
        String tempResultregularCycle458 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeregularCycle458));
        %>
        <%= tempResultregularCycle458 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">regularPaymentsDone:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Integer typeregularPaymentsDone460 = subscription_Get425mtemp.getRegularPaymentsDone();
        String tempResultregularPaymentsDone460 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeregularPaymentsDone460));
        %>
        <%= tempResultregularPaymentsDone460 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">trialPaymentsDone:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Integer typetrialPaymentsDone462 = subscription_Get425mtemp.getTrialPaymentsDone();
        String tempResulttrialPaymentsDone462 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetrialPaymentsDone462));
        %>
        <%= tempResulttrialPaymentsDone462 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">trialCycle:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Integer typetrialCycle464 = subscription_Get425mtemp.getTrialCycle();
        String tempResulttrialCycle464 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetrialCycle464));
        %>
        <%= tempResulttrialCycle464 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">regularPrice:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.math.BigDecimal typeregularPrice466 = subscription_Get425mtemp.getRegularPrice();
        String tempResultregularPrice466 = org.eclipse.jst.ws.util.JspUtils.markup(typeregularPrice466.toString());
        %>
        <%= tempResultregularPrice466 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">retryAt:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.String typeretryAt468 = subscription_Get425mtemp.getRetryAt();
        String tempResultretryAt468 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeretryAt468));
        %>
        <%= tempResultretryAt468 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">trialPrice:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.math.BigDecimal typetrialPrice470 = subscription_Get425mtemp.getTrialPrice();
        String tempResulttrialPrice470 = org.eclipse.jst.ws.util.JspUtils.markup(typetrialPrice470.toString());
        %>
        <%= tempResulttrialPrice470 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">shippingNeeded:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Boolean typeshippingNeeded472 = subscription_Get425mtemp.getShippingNeeded();
        String tempResultshippingNeeded472 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeshippingNeeded472));
        %>
        <%= tempResultshippingNeeded472 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">outstandingBalance:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.math.BigDecimal typeoutstandingBalance474 = subscription_Get425mtemp.getOutstandingBalance();
        String tempResultoutstandingBalance474 = org.eclipse.jst.ws.util.JspUtils.markup(typeoutstandingBalance474.toString());
        %>
        <%= tempResultoutstandingBalance474 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">setupPrice:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.math.BigDecimal typesetupPrice476 = subscription_Get425mtemp.getSetupPrice();
        String tempResultsetupPrice476 = org.eclipse.jst.ws.util.JspUtils.markup(typesetupPrice476.toString());
        %>
        <%= tempResultsetupPrice476 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">isActive:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Boolean typeisActive478 = subscription_Get425mtemp.getIsActive();
        String tempResultisActive478 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeisActive478));
        %>
        <%= tempResultisActive478 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">reattemptAcum:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.Boolean typereattemptAcum480 = subscription_Get425mtemp.getReattemptAcum();
        String tempResultreattemptAcum480 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereattemptAcum480));
        %>
        <%= tempResultreattemptAcum480 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDateTime:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.String typestartDateTime482 = subscription_Get425mtemp.getStartDateTime();
        String tempResultstartDateTime482 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDateTime482));
        %>
        <%= tempResultstartDateTime482 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">shippingAddress:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">zipCode:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Get425mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.String typezipCode486 = tebece0.getZipCode();
        String tempResultzipCode486 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezipCode486));
        %>
        <%= tempResultzipCode486 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">region:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Get425mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.String typeregion488 = tebece0.getRegion();
        String tempResultregion488 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeregion488));
        %>
        <%= tempResultregion488 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Get425mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.String typecountry490 = tebece0.getCountry();
        String tempResultcountry490 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry490));
        %>
        <%= tempResultcountry490 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">city:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Get425mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.String typecity492 = tebece0.getCity();
        String tempResultcity492 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity492));
        %>
        <%= tempResultcity492 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">isVerified:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Get425mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.Boolean typeisVerified494 = tebece0.getIsVerified();
        String tempResultisVerified494 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeisVerified494));
        %>
        <%= tempResultisVerified494 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">addressLine:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Get425mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.String typeaddressLine496 = tebece0.getAddressLine();
        String tempResultaddressLine496 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddressLine496));
        %>
        <%= tempResultaddressLine496 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">title:</TD>
<TD>
<%
if(subscription_Get425mtemp != null){
java.lang.String typetitle498 = subscription_Get425mtemp.getTitle();
        String tempResulttitle498 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetitle498));
        %>
        <%= tempResulttitle498 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 506:
        gotMethod = true;
        String walletID_81id=  request.getParameter("walletID581");
            java.lang.String walletID_81idTemp = null;
        if(!walletID_81id.equals("")){
         walletID_81idTemp  = walletID_81id;
        }
        String securityToken_82id=  request.getParameter("securityToken583");
            java.lang.String securityToken_82idTemp = null;
        if(!securityToken_82id.equals("")){
         securityToken_82idTemp  = securityToken_82id;
        }
        String lastPaymentDateTime_84id=  request.getParameter("lastPaymentDateTime587");
            java.lang.String lastPaymentDateTime_84idTemp = null;
        if(!lastPaymentDateTime_84id.equals("")){
         lastPaymentDateTime_84idTemp  = lastPaymentDateTime_84id;
        }
        String merchantWalletID_85id=  request.getParameter("merchantWalletID589");
            java.lang.String merchantWalletID_85idTemp = null;
        if(!merchantWalletID_85id.equals("")){
         merchantWalletID_85idTemp  = merchantWalletID_85id;
        }
        String nextPaymentDateTime_86id=  request.getParameter("nextPaymentDateTime591");
            java.lang.String nextPaymentDateTime_86idTemp = null;
        if(!nextPaymentDateTime_86id.equals("")){
         nextPaymentDateTime_86idTemp  = nextPaymentDateTime_86id;
        }
        String regularCount_87id=  request.getParameter("regularCount593");
            java.lang.Integer regularCount_87idTemp = null;
        if(!regularCount_87id.equals("")){
         regularCount_87idTemp  = java.lang.Integer.valueOf(regularCount_87id);
        }
        String country_ISO_89id=  request.getParameter("country_ISO597");
            java.lang.String country_ISO_89idTemp = null;
        if(!country_ISO_89id.equals("")){
         country_ISO_89idTemp  = country_ISO_89id;
        }
        String name_90id=  request.getParameter("name599");
            java.lang.String name_90idTemp = null;
        if(!name_90id.equals("")){
         name_90idTemp  = name_90id;
        }
        String email_91id=  request.getParameter("email601");
            java.lang.String email_91idTemp = null;
        if(!email_91id.equals("")){
         email_91idTemp  = email_91id;
        }
        String walletID_92id=  request.getParameter("walletID603");
            java.lang.String walletID_92idTemp = null;
        if(!walletID_92id.equals("")){
         walletID_92idTemp  = walletID_92id;
        }
        String accountID_93id=  request.getParameter("accountID605");
            java.lang.Long accountID_93idTemp = null;
        if(!accountID_93id.equals("")){
         accountID_93idTemp  = java.lang.Long.valueOf(accountID_93id);
        }
        %>
        <jsp:useBean id="org1datacontract1schemas1_20041_071OkPayAPI1AccountInfo_88id" scope="session" class="org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo" />
        <%
        org1datacontract1schemas1_20041_071OkPayAPI1AccountInfo_88id.setCountry_ISO(country_ISO_89idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI1AccountInfo_88id.setName(name_90idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI1AccountInfo_88id.setEmail(email_91idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI1AccountInfo_88id.setWalletID(walletID_92idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI1AccountInfo_88id.setAccountID(accountID_93idTemp);
        String currency_94id=  request.getParameter("currency607");
            java.lang.String currency_94idTemp = null;
        if(!currency_94id.equals("")){
         currency_94idTemp  = currency_94id;
        }
        String trialCount_95id=  request.getParameter("trialCount609");
            java.lang.Integer trialCount_95idTemp = null;
        if(!trialCount_95id.equals("")){
         trialCount_95idTemp  = java.lang.Integer.valueOf(trialCount_95id);
        }
        String validUntil_96id=  request.getParameter("validUntil611");
            java.lang.String validUntil_96idTemp = null;
        if(!validUntil_96id.equals("")){
         validUntil_96idTemp  = validUntil_96id;
        }
        String iD_97id=  request.getParameter("iD613");
            java.lang.Long iD_97idTemp = null;
        if(!iD_97id.equals("")){
         iD_97idTemp  = java.lang.Long.valueOf(iD_97id);
        }
        String reattemptDays_98id=  request.getParameter("reattemptDays615");
            java.lang.Integer reattemptDays_98idTemp = null;
        if(!reattemptDays_98id.equals("")){
         reattemptDays_98idTemp  = java.lang.Integer.valueOf(reattemptDays_98id);
        }
        String regularCycle_99id=  request.getParameter("regularCycle617");
            java.lang.Integer regularCycle_99idTemp = null;
        if(!regularCycle_99id.equals("")){
         regularCycle_99idTemp  = java.lang.Integer.valueOf(regularCycle_99id);
        }
        String regularPaymentsDone_100id=  request.getParameter("regularPaymentsDone619");
            java.lang.Integer regularPaymentsDone_100idTemp = null;
        if(!regularPaymentsDone_100id.equals("")){
         regularPaymentsDone_100idTemp  = java.lang.Integer.valueOf(regularPaymentsDone_100id);
        }
        String trialPaymentsDone_101id=  request.getParameter("trialPaymentsDone621");
            java.lang.Integer trialPaymentsDone_101idTemp = null;
        if(!trialPaymentsDone_101id.equals("")){
         trialPaymentsDone_101idTemp  = java.lang.Integer.valueOf(trialPaymentsDone_101id);
        }
        String trialCycle_102id=  request.getParameter("trialCycle623");
            java.lang.Integer trialCycle_102idTemp = null;
        if(!trialCycle_102id.equals("")){
         trialCycle_102idTemp  = java.lang.Integer.valueOf(trialCycle_102id);
        }
        String regularPrice_103id=  request.getParameter("regularPrice625");
            java.math.BigDecimal regularPrice_103idTemp = null;
        if(!regularPrice_103id.equals("")){
         regularPrice_103idTemp  = new java.math.BigDecimal(regularPrice_103id);
        }
        String retryAt_104id=  request.getParameter("retryAt627");
            java.lang.String retryAt_104idTemp = null;
        if(!retryAt_104id.equals("")){
         retryAt_104idTemp  = retryAt_104id;
        }
        String trialPrice_105id=  request.getParameter("trialPrice629");
            java.math.BigDecimal trialPrice_105idTemp = null;
        if(!trialPrice_105id.equals("")){
         trialPrice_105idTemp  = new java.math.BigDecimal(trialPrice_105id);
        }
        String shippingNeeded_106id=  request.getParameter("shippingNeeded631");
            java.lang.Boolean shippingNeeded_106idTemp = null;
        if(!shippingNeeded_106id.equals("")){
         shippingNeeded_106idTemp  = java.lang.Boolean.valueOf(shippingNeeded_106id);
        }
        String outstandingBalance_107id=  request.getParameter("outstandingBalance633");
            java.math.BigDecimal outstandingBalance_107idTemp = null;
        if(!outstandingBalance_107id.equals("")){
         outstandingBalance_107idTemp  = new java.math.BigDecimal(outstandingBalance_107id);
        }
        String setupPrice_108id=  request.getParameter("setupPrice635");
            java.math.BigDecimal setupPrice_108idTemp = null;
        if(!setupPrice_108id.equals("")){
         setupPrice_108idTemp  = new java.math.BigDecimal(setupPrice_108id);
        }
        String isActive_109id=  request.getParameter("isActive637");
            java.lang.Boolean isActive_109idTemp = null;
        if(!isActive_109id.equals("")){
         isActive_109idTemp  = java.lang.Boolean.valueOf(isActive_109id);
        }
        String reattemptAcum_110id=  request.getParameter("reattemptAcum639");
            java.lang.Boolean reattemptAcum_110idTemp = null;
        if(!reattemptAcum_110id.equals("")){
         reattemptAcum_110idTemp  = java.lang.Boolean.valueOf(reattemptAcum_110id);
        }
        String startDateTime_111id=  request.getParameter("startDateTime641");
            java.lang.String startDateTime_111idTemp = null;
        if(!startDateTime_111id.equals("")){
         startDateTime_111idTemp  = startDateTime_111id;
        }
        String zipCode_113id=  request.getParameter("zipCode645");
            java.lang.String zipCode_113idTemp = null;
        if(!zipCode_113id.equals("")){
         zipCode_113idTemp  = zipCode_113id;
        }
        String region_114id=  request.getParameter("region647");
            java.lang.String region_114idTemp = null;
        if(!region_114id.equals("")){
         region_114idTemp  = region_114id;
        }
        String country_115id=  request.getParameter("country649");
            java.lang.String country_115idTemp = null;
        if(!country_115id.equals("")){
         country_115idTemp  = country_115id;
        }
        String city_116id=  request.getParameter("city651");
            java.lang.String city_116idTemp = null;
        if(!city_116id.equals("")){
         city_116idTemp  = city_116id;
        }
        String isVerified_117id=  request.getParameter("isVerified653");
            java.lang.Boolean isVerified_117idTemp = null;
        if(!isVerified_117id.equals("")){
         isVerified_117idTemp  = java.lang.Boolean.valueOf(isVerified_117id);
        }
        String addressLine_118id=  request.getParameter("addressLine655");
            java.lang.String addressLine_118idTemp = null;
        if(!addressLine_118id.equals("")){
         addressLine_118idTemp  = addressLine_118id;
        }
        %>
        <jsp:useBean id="org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Address_112id" scope="session" class="org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address" />
        <%
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Address_112id.setZipCode(zipCode_113idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Address_112id.setRegion(region_114idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Address_112id.setCountry(country_115idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Address_112id.setCity(city_116idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Address_112id.setIsVerified(isVerified_117idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Address_112id.setAddressLine(addressLine_118idTemp);
        String title_119id=  request.getParameter("title657");
            java.lang.String title_119idTemp = null;
        if(!title_119id.equals("")){
         title_119idTemp  = title_119id;
        }
        %>
        <jsp:useBean id="org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id" scope="session" class="org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription" />
        <%
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setLastPaymentDateTime(lastPaymentDateTime_84idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setMerchantWalletID(merchantWalletID_85idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setNextPaymentDateTime(nextPaymentDateTime_86idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setRegularCount(regularCount_87idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setClient(org1datacontract1schemas1_20041_071OkPayAPI1AccountInfo_88id);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setCurrency(currency_94idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setTrialCount(trialCount_95idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setValidUntil(validUntil_96idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setID(iD_97idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setReattemptDays(reattemptDays_98idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setRegularCycle(regularCycle_99idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setRegularPaymentsDone(regularPaymentsDone_100idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setTrialPaymentsDone(trialPaymentsDone_101idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setTrialCycle(trialCycle_102idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setRegularPrice(regularPrice_103idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setRetryAt(retryAt_104idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setTrialPrice(trialPrice_105idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setShippingNeeded(shippingNeeded_106idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setOutstandingBalance(outstandingBalance_107idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setSetupPrice(setupPrice_108idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setIsActive(isActive_109idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setReattemptAcum(reattemptAcum_110idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setStartDateTime(startDateTime_111idTemp);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setShippingAddress(org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Address_112id);
        org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id.setTitle(title_119idTemp);
        String comment_120id=  request.getParameter("comment659");
            java.lang.String comment_120idTemp = null;
        if(!comment_120id.equals("")){
         comment_120idTemp  = comment_120id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription subscription_Update506mtemp = sampleI_OkPayAPIProxyid.subscription_Update(walletID_81idTemp,securityToken_82idTemp,org1datacontract1schemas1_20041_071OkPayAPI_DataContract1Subscription_83id,comment_120idTemp);
if(subscription_Update506mtemp == null){
%>
<%=subscription_Update506mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastPaymentDateTime:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.String typelastPaymentDateTime509 = subscription_Update506mtemp.getLastPaymentDateTime();
        String tempResultlastPaymentDateTime509 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastPaymentDateTime509));
        %>
        <%= tempResultlastPaymentDateTime509 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">merchantWalletID:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.String typemerchantWalletID511 = subscription_Update506mtemp.getMerchantWalletID();
        String tempResultmerchantWalletID511 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemerchantWalletID511));
        %>
        <%= tempResultmerchantWalletID511 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nextPaymentDateTime:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.String typenextPaymentDateTime513 = subscription_Update506mtemp.getNextPaymentDateTime();
        String tempResultnextPaymentDateTime513 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenextPaymentDateTime513));
        %>
        <%= tempResultnextPaymentDateTime513 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">regularCount:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Integer typeregularCount515 = subscription_Update506mtemp.getRegularCount();
        String tempResultregularCount515 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeregularCount515));
        %>
        <%= tempResultregularCount515 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">client:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country_ISO:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=subscription_Update506mtemp.getClient();
if(tebece0 != null){
java.lang.String typecountry_ISO519 = tebece0.getCountry_ISO();
        String tempResultcountry_ISO519 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry_ISO519));
        %>
        <%= tempResultcountry_ISO519 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">name:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=subscription_Update506mtemp.getClient();
if(tebece0 != null){
java.lang.String typename521 = tebece0.getName();
        String tempResultname521 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename521));
        %>
        <%= tempResultname521 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=subscription_Update506mtemp.getClient();
if(tebece0 != null){
java.lang.String typeemail523 = tebece0.getEmail();
        String tempResultemail523 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail523));
        %>
        <%= tempResultemail523 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">walletID:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=subscription_Update506mtemp.getClient();
if(tebece0 != null){
java.lang.String typewalletID525 = tebece0.getWalletID();
        String tempResultwalletID525 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typewalletID525));
        %>
        <%= tempResultwalletID525 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">accountID:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=subscription_Update506mtemp.getClient();
if(tebece0 != null){
java.lang.Long typeaccountID527 = tebece0.getAccountID();
        String tempResultaccountID527 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaccountID527));
        %>
        <%= tempResultaccountID527 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.String typecurrency529 = subscription_Update506mtemp.getCurrency();
        String tempResultcurrency529 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency529));
        %>
        <%= tempResultcurrency529 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">trialCount:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Integer typetrialCount531 = subscription_Update506mtemp.getTrialCount();
        String tempResulttrialCount531 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetrialCount531));
        %>
        <%= tempResulttrialCount531 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">validUntil:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.String typevalidUntil533 = subscription_Update506mtemp.getValidUntil();
        String tempResultvalidUntil533 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typevalidUntil533));
        %>
        <%= tempResultvalidUntil533 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">iD:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Long typeiD535 = subscription_Update506mtemp.getID();
        String tempResultiD535 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeiD535));
        %>
        <%= tempResultiD535 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">reattemptDays:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Integer typereattemptDays537 = subscription_Update506mtemp.getReattemptDays();
        String tempResultreattemptDays537 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereattemptDays537));
        %>
        <%= tempResultreattemptDays537 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">regularCycle:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Integer typeregularCycle539 = subscription_Update506mtemp.getRegularCycle();
        String tempResultregularCycle539 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeregularCycle539));
        %>
        <%= tempResultregularCycle539 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">regularPaymentsDone:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Integer typeregularPaymentsDone541 = subscription_Update506mtemp.getRegularPaymentsDone();
        String tempResultregularPaymentsDone541 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeregularPaymentsDone541));
        %>
        <%= tempResultregularPaymentsDone541 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">trialPaymentsDone:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Integer typetrialPaymentsDone543 = subscription_Update506mtemp.getTrialPaymentsDone();
        String tempResulttrialPaymentsDone543 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetrialPaymentsDone543));
        %>
        <%= tempResulttrialPaymentsDone543 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">trialCycle:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Integer typetrialCycle545 = subscription_Update506mtemp.getTrialCycle();
        String tempResulttrialCycle545 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetrialCycle545));
        %>
        <%= tempResulttrialCycle545 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">regularPrice:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.math.BigDecimal typeregularPrice547 = subscription_Update506mtemp.getRegularPrice();
        String tempResultregularPrice547 = org.eclipse.jst.ws.util.JspUtils.markup(typeregularPrice547.toString());
        %>
        <%= tempResultregularPrice547 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">retryAt:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.String typeretryAt549 = subscription_Update506mtemp.getRetryAt();
        String tempResultretryAt549 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeretryAt549));
        %>
        <%= tempResultretryAt549 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">trialPrice:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.math.BigDecimal typetrialPrice551 = subscription_Update506mtemp.getTrialPrice();
        String tempResulttrialPrice551 = org.eclipse.jst.ws.util.JspUtils.markup(typetrialPrice551.toString());
        %>
        <%= tempResulttrialPrice551 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">shippingNeeded:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Boolean typeshippingNeeded553 = subscription_Update506mtemp.getShippingNeeded();
        String tempResultshippingNeeded553 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeshippingNeeded553));
        %>
        <%= tempResultshippingNeeded553 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">outstandingBalance:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.math.BigDecimal typeoutstandingBalance555 = subscription_Update506mtemp.getOutstandingBalance();
        String tempResultoutstandingBalance555 = org.eclipse.jst.ws.util.JspUtils.markup(typeoutstandingBalance555.toString());
        %>
        <%= tempResultoutstandingBalance555 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">setupPrice:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.math.BigDecimal typesetupPrice557 = subscription_Update506mtemp.getSetupPrice();
        String tempResultsetupPrice557 = org.eclipse.jst.ws.util.JspUtils.markup(typesetupPrice557.toString());
        %>
        <%= tempResultsetupPrice557 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">isActive:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Boolean typeisActive559 = subscription_Update506mtemp.getIsActive();
        String tempResultisActive559 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeisActive559));
        %>
        <%= tempResultisActive559 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">reattemptAcum:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.Boolean typereattemptAcum561 = subscription_Update506mtemp.getReattemptAcum();
        String tempResultreattemptAcum561 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereattemptAcum561));
        %>
        <%= tempResultreattemptAcum561 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDateTime:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.String typestartDateTime563 = subscription_Update506mtemp.getStartDateTime();
        String tempResultstartDateTime563 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDateTime563));
        %>
        <%= tempResultstartDateTime563 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">shippingAddress:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">zipCode:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Update506mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.String typezipCode567 = tebece0.getZipCode();
        String tempResultzipCode567 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezipCode567));
        %>
        <%= tempResultzipCode567 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">region:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Update506mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.String typeregion569 = tebece0.getRegion();
        String tempResultregion569 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeregion569));
        %>
        <%= tempResultregion569 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Update506mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.String typecountry571 = tebece0.getCountry();
        String tempResultcountry571 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry571));
        %>
        <%= tempResultcountry571 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">city:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Update506mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.String typecity573 = tebece0.getCity();
        String tempResultcity573 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity573));
        %>
        <%= tempResultcity573 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">isVerified:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Update506mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.Boolean typeisVerified575 = tebece0.getIsVerified();
        String tempResultisVerified575 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeisVerified575));
        %>
        <%= tempResultisVerified575 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">addressLine:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address tebece0=subscription_Update506mtemp.getShippingAddress();
if(tebece0 != null){
java.lang.String typeaddressLine577 = tebece0.getAddressLine();
        String tempResultaddressLine577 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddressLine577));
        %>
        <%= tempResultaddressLine577 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">title:</TD>
<TD>
<%
if(subscription_Update506mtemp != null){
java.lang.String typetitle579 = subscription_Update506mtemp.getTitle();
        String tempResulttitle579 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetitle579));
        %>
        <%= tempResulttitle579 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 661:
        gotMethod = true;
        String walletID_121id=  request.getParameter("walletID664");
            java.lang.String walletID_121idTemp = null;
        if(!walletID_121id.equals("")){
         walletID_121idTemp  = walletID_121id;
        }
        String securityToken_122id=  request.getParameter("securityToken666");
            java.lang.String securityToken_122idTemp = null;
        if(!securityToken_122id.equals("")){
         securityToken_122idTemp  = securityToken_122id;
        }
        String subscriptionID_123id=  request.getParameter("subscriptionID668");
            java.lang.Long subscriptionID_123idTemp = null;
        if(!subscriptionID_123id.equals("")){
         subscriptionID_123idTemp  = java.lang.Long.valueOf(subscriptionID_123id);
        }
        org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo[] subscription_Get_Operations661mtemp = sampleI_OkPayAPIProxyid.subscription_Get_Operations(walletID_121idTemp,securityToken_122idTemp,subscriptionID_123idTemp);
if(subscription_Get_Operations661mtemp == null){
%>
<%=subscription_Get_Operations661mtemp %>
<%
}else{
        String tempreturnp662 = null;
        if(subscription_Get_Operations661mtemp != null){
        java.util.List listreturnp662= java.util.Arrays.asList(subscription_Get_Operations661mtemp);
        tempreturnp662 = listreturnp662.toString();
        }
        %>
        <%=tempreturnp662%>
        <%
}
break;
case 670:
        gotMethod = true;
        String walletID_124id=  request.getParameter("walletID709");
            java.lang.String walletID_124idTemp = null;
        if(!walletID_124id.equals("")){
         walletID_124idTemp  = walletID_124id;
        }
        String securityToken_125id=  request.getParameter("securityToken711");
            java.lang.String securityToken_125idTemp = null;
        if(!securityToken_125id.equals("")){
         securityToken_125idTemp  = securityToken_125id;
        }
        String preapprovedPaymentID_126id=  request.getParameter("preapprovedPaymentID713");
            java.lang.Long preapprovedPaymentID_126idTemp = null;
        if(!preapprovedPaymentID_126id.equals("")){
         preapprovedPaymentID_126idTemp  = java.lang.Long.valueOf(preapprovedPaymentID_126id);
        }
        org.datacontract.schemas._2004._07.OkPayAPI_DataContract.PreapprovedPayment preapprovedPayment_Get670mtemp = sampleI_OkPayAPIProxyid.preapprovedPayment_Get(walletID_124idTemp,securityToken_125idTemp,preapprovedPaymentID_126idTemp);
if(preapprovedPayment_Get670mtemp == null){
%>
<%=preapprovedPayment_Get670mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.lang.String typestartDate673 = preapprovedPayment_Get670mtemp.getStartDate();
        String tempResultstartDate673 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate673));
        %>
        <%= tempResultstartDate673 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">client:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country_ISO:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Get670mtemp.getClient();
if(tebece0 != null){
java.lang.String typecountry_ISO677 = tebece0.getCountry_ISO();
        String tempResultcountry_ISO677 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry_ISO677));
        %>
        <%= tempResultcountry_ISO677 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">name:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Get670mtemp.getClient();
if(tebece0 != null){
java.lang.String typename679 = tebece0.getName();
        String tempResultname679 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename679));
        %>
        <%= tempResultname679 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Get670mtemp.getClient();
if(tebece0 != null){
java.lang.String typeemail681 = tebece0.getEmail();
        String tempResultemail681 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail681));
        %>
        <%= tempResultemail681 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">walletID:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Get670mtemp.getClient();
if(tebece0 != null){
java.lang.String typewalletID683 = tebece0.getWalletID();
        String tempResultwalletID683 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typewalletID683));
        %>
        <%= tempResultwalletID683 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">accountID:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Get670mtemp.getClient();
if(tebece0 != null){
java.lang.Long typeaccountID685 = tebece0.getAccountID();
        String tempResultaccountID685 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaccountID685));
        %>
        <%= tempResultaccountID685 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">invoice:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.lang.String typeinvoice687 = preapprovedPayment_Get670mtemp.getInvoice();
        String tempResultinvoice687 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeinvoice687));
        %>
        <%= tempResultinvoice687 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentsDone:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.lang.Integer typepaymentsDone689 = preapprovedPayment_Get670mtemp.getPaymentsDone();
        String tempResultpaymentsDone689 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentsDone689));
        %>
        <%= tempResultpaymentsDone689 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">clientPaysFee:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.lang.Boolean typeclientPaysFee691 = preapprovedPayment_Get670mtemp.getClientPaysFee();
        String tempResultclientPaysFee691 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeclientPaysFee691));
        %>
        <%= tempResultclientPaysFee691 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableAmount:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.math.BigDecimal typeavailableAmount693 = preapprovedPayment_Get670mtemp.getAvailableAmount();
        String tempResultavailableAmount693 = org.eclipse.jst.ws.util.JspUtils.markup(typeavailableAmount693.toString());
        %>
        <%= tempResultavailableAmount693 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">iD:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.lang.Long typeiD695 = preapprovedPayment_Get670mtemp.getID();
        String tempResultiD695 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeiD695));
        %>
        <%= tempResultiD695 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.lang.String typeendDate697 = preapprovedPayment_Get670mtemp.getEndDate();
        String tempResultendDate697 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeendDate697));
        %>
        <%= tempResultendDate697 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentsAmount:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.math.BigDecimal typepaymentsAmount699 = preapprovedPayment_Get670mtemp.getPaymentsAmount();
        String tempResultpaymentsAmount699 = org.eclipse.jst.ws.util.JspUtils.markup(typepaymentsAmount699.toString());
        %>
        <%= tempResultpaymentsAmount699 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.lang.String typecurrency701 = preapprovedPayment_Get670mtemp.getCurrency();
        String tempResultcurrency701 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency701));
        %>
        <%= tempResultcurrency701 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">title:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.lang.String typetitle703 = preapprovedPayment_Get670mtemp.getTitle();
        String tempResulttitle703 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetitle703));
        %>
        <%= tempResulttitle703 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastPaymentDate:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.lang.String typelastPaymentDate705 = preapprovedPayment_Get670mtemp.getLastPaymentDate();
        String tempResultlastPaymentDate705 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastPaymentDate705));
        %>
        <%= tempResultlastPaymentDate705 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">merchantWalletID:</TD>
<TD>
<%
if(preapprovedPayment_Get670mtemp != null){
java.lang.String typemerchantWalletID707 = preapprovedPayment_Get670mtemp.getMerchantWalletID();
        String tempResultmerchantWalletID707 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemerchantWalletID707));
        %>
        <%= tempResultmerchantWalletID707 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 715:
        gotMethod = true;
        String walletID_127id=  request.getParameter("walletID760");
            java.lang.String walletID_127idTemp = null;
        if(!walletID_127id.equals("")){
         walletID_127idTemp  = walletID_127id;
        }
        String securityToken_128id=  request.getParameter("securityToken762");
            java.lang.String securityToken_128idTemp = null;
        if(!securityToken_128id.equals("")){
         securityToken_128idTemp  = securityToken_128id;
        }
        String preapprovedPaymentID_129id=  request.getParameter("preapprovedPaymentID764");
            java.lang.Long preapprovedPaymentID_129idTemp = null;
        if(!preapprovedPaymentID_129id.equals("")){
         preapprovedPaymentID_129idTemp  = java.lang.Long.valueOf(preapprovedPaymentID_129id);
        }
        String amount_130id=  request.getParameter("amount766");
            java.math.BigDecimal amount_130idTemp = null;
        if(!amount_130id.equals("")){
         amount_130idTemp  = new java.math.BigDecimal(amount_130id);
        }
        String comment_131id=  request.getParameter("comment768");
            java.lang.String comment_131idTemp = null;
        if(!comment_131id.equals("")){
         comment_131idTemp  = comment_131id;
        }
        String receiver_132id=  request.getParameter("receiver770");
            java.lang.String receiver_132idTemp = null;
        if(!receiver_132id.equals("")){
         receiver_132idTemp  = receiver_132id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo preapprovedPayment_Charge715mtemp = sampleI_OkPayAPIProxyid.preapprovedPayment_Charge(walletID_127idTemp,securityToken_128idTemp,preapprovedPaymentID_129idTemp,amount_130idTemp,comment_131idTemp,receiver_132idTemp);
if(preapprovedPayment_Charge715mtemp == null){
%>
<%=preapprovedPayment_Charge715mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">receiver:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country_ISO:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Charge715mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typecountry_ISO720 = tebece0.getCountry_ISO();
        String tempResultcountry_ISO720 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry_ISO720));
        %>
        <%= tempResultcountry_ISO720 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">name:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Charge715mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typename722 = tebece0.getName();
        String tempResultname722 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename722));
        %>
        <%= tempResultname722 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Charge715mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typeemail724 = tebece0.getEmail();
        String tempResultemail724 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail724));
        %>
        <%= tempResultemail724 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">walletID:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Charge715mtemp.getReceiver();
if(tebece0 != null){
java.lang.String typewalletID726 = tebece0.getWalletID();
        String tempResultwalletID726 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typewalletID726));
        %>
        <%= tempResultwalletID726 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">accountID:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Charge715mtemp.getReceiver();
if(tebece0 != null){
java.lang.Long typeaccountID728 = tebece0.getAccountID();
        String tempResultaccountID728 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaccountID728));
        %>
        <%= tempResultaccountID728 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fees:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
java.math.BigDecimal typefees730 = preapprovedPayment_Charge715mtemp.getFees();
        String tempResultfees730 = org.eclipse.jst.ws.util.JspUtils.markup(typefees730.toString());
        %>
        <%= tempResultfees730 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">date:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
java.lang.String typedate732 = preapprovedPayment_Charge715mtemp.getDate();
        String tempResultdate732 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedate732));
        %>
        <%= tempResultdate732 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">invoice:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
java.lang.String typeinvoice734 = preapprovedPayment_Charge715mtemp.getInvoice();
        String tempResultinvoice734 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeinvoice734));
        %>
        <%= tempResultinvoice734 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">sender:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country_ISO:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Charge715mtemp.getSender();
if(tebece0 != null){
java.lang.String typecountry_ISO738 = tebece0.getCountry_ISO();
        String tempResultcountry_ISO738 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry_ISO738));
        %>
        <%= tempResultcountry_ISO738 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">name:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Charge715mtemp.getSender();
if(tebece0 != null){
java.lang.String typename740 = tebece0.getName();
        String tempResultname740 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename740));
        %>
        <%= tempResultname740 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Charge715mtemp.getSender();
if(tebece0 != null){
java.lang.String typeemail742 = tebece0.getEmail();
        String tempResultemail742 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail742));
        %>
        <%= tempResultemail742 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">walletID:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Charge715mtemp.getSender();
if(tebece0 != null){
java.lang.String typewalletID744 = tebece0.getWalletID();
        String tempResultwalletID744 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typewalletID744));
        %>
        <%= tempResultwalletID744 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">accountID:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Charge715mtemp.getSender();
if(tebece0 != null){
java.lang.Long typeaccountID746 = tebece0.getAccountID();
        String tempResultaccountID746 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaccountID746));
        %>
        <%= tempResultaccountID746 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">amount:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
java.math.BigDecimal typeamount748 = preapprovedPayment_Charge715mtemp.getAmount();
        String tempResultamount748 = org.eclipse.jst.ws.util.JspUtils.markup(typeamount748.toString());
        %>
        <%= tempResultamount748 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">comment:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
java.lang.String typecomment750 = preapprovedPayment_Charge715mtemp.getComment();
        String tempResultcomment750 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecomment750));
        %>
        <%= tempResultcomment750 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">iD:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
java.lang.Long typeiD752 = preapprovedPayment_Charge715mtemp.getID();
        String tempResultiD752 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeiD752));
        %>
        <%= tempResultiD752 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
java.lang.String typecurrency754 = preapprovedPayment_Charge715mtemp.getCurrency();
        String tempResultcurrency754 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency754));
        %>
        <%= tempResultcurrency754 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">net:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
java.math.BigDecimal typenet756 = preapprovedPayment_Charge715mtemp.getNet();
        String tempResultnet756 = org.eclipse.jst.ws.util.JspUtils.markup(typenet756.toString());
        %>
        <%= tempResultnet756 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">operationName:</TD>
<TD>
<%
if(preapprovedPayment_Charge715mtemp != null){
java.lang.String typeoperationName758 = preapprovedPayment_Charge715mtemp.getOperationName();
        String tempResultoperationName758 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeoperationName758));
        %>
        <%= tempResultoperationName758 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 772:
        gotMethod = true;
        String walletID_133id=  request.getParameter("walletID811");
            java.lang.String walletID_133idTemp = null;
        if(!walletID_133id.equals("")){
         walletID_133idTemp  = walletID_133id;
        }
        String securityToken_134id=  request.getParameter("securityToken813");
            java.lang.String securityToken_134idTemp = null;
        if(!securityToken_134id.equals("")){
         securityToken_134idTemp  = securityToken_134id;
        }
        String preapprovedPaymentID_135id=  request.getParameter("preapprovedPaymentID815");
            java.lang.Long preapprovedPaymentID_135idTemp = null;
        if(!preapprovedPaymentID_135id.equals("")){
         preapprovedPaymentID_135idTemp  = java.lang.Long.valueOf(preapprovedPaymentID_135id);
        }
        String comment_136id=  request.getParameter("comment817");
            java.lang.String comment_136idTemp = null;
        if(!comment_136id.equals("")){
         comment_136idTemp  = comment_136id;
        }
        org.datacontract.schemas._2004._07.OkPayAPI_DataContract.PreapprovedPayment preapprovedPayment_Cancel772mtemp = sampleI_OkPayAPIProxyid.preapprovedPayment_Cancel(walletID_133idTemp,securityToken_134idTemp,preapprovedPaymentID_135idTemp,comment_136idTemp);
if(preapprovedPayment_Cancel772mtemp == null){
%>
<%=preapprovedPayment_Cancel772mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.lang.String typestartDate775 = preapprovedPayment_Cancel772mtemp.getStartDate();
        String tempResultstartDate775 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate775));
        %>
        <%= tempResultstartDate775 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">client:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">country_ISO:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Cancel772mtemp.getClient();
if(tebece0 != null){
java.lang.String typecountry_ISO779 = tebece0.getCountry_ISO();
        String tempResultcountry_ISO779 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecountry_ISO779));
        %>
        <%= tempResultcountry_ISO779 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">name:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Cancel772mtemp.getClient();
if(tebece0 != null){
java.lang.String typename781 = tebece0.getName();
        String tempResultname781 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename781));
        %>
        <%= tempResultname781 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">email:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Cancel772mtemp.getClient();
if(tebece0 != null){
java.lang.String typeemail783 = tebece0.getEmail();
        String tempResultemail783 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail783));
        %>
        <%= tempResultemail783 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">walletID:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Cancel772mtemp.getClient();
if(tebece0 != null){
java.lang.String typewalletID785 = tebece0.getWalletID();
        String tempResultwalletID785 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typewalletID785));
        %>
        <%= tempResultwalletID785 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">accountID:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo tebece0=preapprovedPayment_Cancel772mtemp.getClient();
if(tebece0 != null){
java.lang.Long typeaccountID787 = tebece0.getAccountID();
        String tempResultaccountID787 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaccountID787));
        %>
        <%= tempResultaccountID787 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">invoice:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.lang.String typeinvoice789 = preapprovedPayment_Cancel772mtemp.getInvoice();
        String tempResultinvoice789 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeinvoice789));
        %>
        <%= tempResultinvoice789 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentsDone:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.lang.Integer typepaymentsDone791 = preapprovedPayment_Cancel772mtemp.getPaymentsDone();
        String tempResultpaymentsDone791 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentsDone791));
        %>
        <%= tempResultpaymentsDone791 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">clientPaysFee:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.lang.Boolean typeclientPaysFee793 = preapprovedPayment_Cancel772mtemp.getClientPaysFee();
        String tempResultclientPaysFee793 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeclientPaysFee793));
        %>
        <%= tempResultclientPaysFee793 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableAmount:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.math.BigDecimal typeavailableAmount795 = preapprovedPayment_Cancel772mtemp.getAvailableAmount();
        String tempResultavailableAmount795 = org.eclipse.jst.ws.util.JspUtils.markup(typeavailableAmount795.toString());
        %>
        <%= tempResultavailableAmount795 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">iD:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.lang.Long typeiD797 = preapprovedPayment_Cancel772mtemp.getID();
        String tempResultiD797 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeiD797));
        %>
        <%= tempResultiD797 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">endDate:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.lang.String typeendDate799 = preapprovedPayment_Cancel772mtemp.getEndDate();
        String tempResultendDate799 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeendDate799));
        %>
        <%= tempResultendDate799 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentsAmount:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.math.BigDecimal typepaymentsAmount801 = preapprovedPayment_Cancel772mtemp.getPaymentsAmount();
        String tempResultpaymentsAmount801 = org.eclipse.jst.ws.util.JspUtils.markup(typepaymentsAmount801.toString());
        %>
        <%= tempResultpaymentsAmount801 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">currency:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.lang.String typecurrency803 = preapprovedPayment_Cancel772mtemp.getCurrency();
        String tempResultcurrency803 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecurrency803));
        %>
        <%= tempResultcurrency803 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">title:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.lang.String typetitle805 = preapprovedPayment_Cancel772mtemp.getTitle();
        String tempResulttitle805 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetitle805));
        %>
        <%= tempResulttitle805 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastPaymentDate:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.lang.String typelastPaymentDate807 = preapprovedPayment_Cancel772mtemp.getLastPaymentDate();
        String tempResultlastPaymentDate807 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastPaymentDate807));
        %>
        <%= tempResultlastPaymentDate807 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">merchantWalletID:</TD>
<TD>
<%
if(preapprovedPayment_Cancel772mtemp != null){
java.lang.String typemerchantWalletID809 = preapprovedPayment_Cancel772mtemp.getMerchantWalletID();
        String tempResultmerchantWalletID809 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemerchantWalletID809));
        %>
        <%= tempResultmerchantWalletID809 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 819:
        gotMethod = true;
        String walletID_137id=  request.getParameter("walletID822");
            java.lang.String walletID_137idTemp = null;
        if(!walletID_137id.equals("")){
         walletID_137idTemp  = walletID_137id;
        }
        String securityToken_138id=  request.getParameter("securityToken824");
            java.lang.String securityToken_138idTemp = null;
        if(!securityToken_138id.equals("")){
         securityToken_138idTemp  = securityToken_138id;
        }
        String preapprovedPaymentID_139id=  request.getParameter("preapprovedPaymentID826");
            java.lang.Long preapprovedPaymentID_139idTemp = null;
        if(!preapprovedPaymentID_139id.equals("")){
         preapprovedPaymentID_139idTemp  = java.lang.Long.valueOf(preapprovedPaymentID_139id);
        }
        org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo[] preapprovedPayment_Get_Operations819mtemp = sampleI_OkPayAPIProxyid.preapprovedPayment_Get_Operations(walletID_137idTemp,securityToken_138idTemp,preapprovedPaymentID_139idTemp);
if(preapprovedPayment_Get_Operations819mtemp == null){
%>
<%=preapprovedPayment_Get_Operations819mtemp %>
<%
}else{
        String tempreturnp820 = null;
        if(preapprovedPayment_Get_Operations819mtemp != null){
        java.util.List listreturnp820= java.util.Arrays.asList(preapprovedPayment_Get_Operations819mtemp);
        tempreturnp820 = listreturnp820.toString();
        }
        %>
        <%=tempreturnp820%>
        <%
}
break;
}
} 


catch (Exception p) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(p.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(p.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>