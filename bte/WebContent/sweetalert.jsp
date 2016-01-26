<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sweet Alert</title>
<link rel="stylesheet" href="example.css">
  <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>

  <!-- This is what you need -->
  <script src="sweetalert/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="sweetalert/sweetalert.css">
  
</head>
<body>
<ul class="examples">

	<li class="message">
		<div class="ui">
			<p>A basic message</p>
			<button>Try me!</button>
		</div>
	</li>
	</ul>
	<script type="text/javascript">
  document.querySelector('ul.examples li.message button').onclick = function(){
		swal("Hello....");
	};
  </script>
</body>
</html>