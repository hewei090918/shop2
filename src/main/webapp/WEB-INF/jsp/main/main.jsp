<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超市货物管理平台</title>
    <jsp:include page="../common/common.jsp" />
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/main.css">
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/main.js"></script>

  </head>
  
  <body>
    welcome to main page.<br>
  </body>
</html>
