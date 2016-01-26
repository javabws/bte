<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error"%>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

   <head>
      <title>The jQuery Example</title>
      <script type = "text/javascript" 
         src = "http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		
      <script type = "text/javascript" language = "javascript">
      var fun,val;
         $(document).ready(function() {
            fun=function(){
               $.ajax( {
                  url:'feeddata.jsp',
                  success:function(data) {
                	  val=data;
                     $('#stage').html(data);
                  }
               });
            };
            setInterval(fun,1000);
         });
         
        function func()
        {
        	
        	document.getElementById("stage1").innerHTML=val.trim();
        }
        function func1()
        {
        	//setInterval(func, 1000);
        	setInterval(returnValue, 1000);
        }
       func1();
        
        function returnValue(){
        	
        //	var urls = "feeddata.jsp";
        	var urls = "testdata.jsp";
        	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        		xmlhttp = new XMLHttpRequest();
        	} else {// code for IE6, IE5
        		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        	}
        	xmlhttp.onreadystatechange = function() {
        		if (xmlhttp.readyState == 4) {
//        			var v=xmlhttp.responseText;
//        			value=v.trim();
        			var xmldoc = xmlhttp.responseXML;
        		val=xmldoc.getElementsByTagName("yvalue")[0].childNodes[0].nodeValue;
        		document.getElementById("stage1").innerHTML+=val;
        		}
        		
        	
        	}
        	//alert(value);
        	xmlhttp.open("POST", urls, false);
        	xmlhttp.send();
        	
        	//return value;
        }
        
      </script>
   </head>
	
   <body>
	
      <p>Click on the button to load result.html file:</p>
		
      <div id = "stage" style = "background-color:blue;">
         STAGE
      </div>
		<div id = "stage1" >
         STAGE1
      </div>
		
   </body>
	
</html>