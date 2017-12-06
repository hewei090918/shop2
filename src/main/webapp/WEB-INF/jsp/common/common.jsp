<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<!-- 以图标的方式区别网站，图标会在浏览器标题前面展示 -->
    <link type="image/x-icon" rel="Shortcut Icon" href="<%=basePath%>resources/images/shop.ico"/>
	<%-- <link rel="icon" href="<%=basePath%>resources/images/shop.ico"> --%>
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/plugins/bootstrap/3.3.6/css/bootstrap.min.css">
	<!-- Bootstrap Validator CSS -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/plugins/bootstrapValidator/dist/css/bootstrapValidator.min.css">
	
	<!-- jQuery -->
	<script type="text/javascript" src="<%=basePath%>resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script type="text/javascript" src="<%=basePath%>resources/plugins/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!-- Bootstrap Validator JS -->
	<script type="text/javascript" src="<%=basePath%>resources/plugins/bootstrapValidator/dist/js/bootstrapValidator.js"></script>
	
  </head>
  
  <body>
  </body>
</html>
