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
	<!-- 图标引入 -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/fontawesome/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/fontawesome/font-awesome-ie7.min.css">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/vendor/bootstrap/3.3.6/css/bootstrap.min.css">
	<!-- Bootstrap select -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
	<!-- Bootstrap treeview -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/vendor/bootstrap-treeview/dist/css/bootstrap-treeview.min.css">
	<!-- Bootstrap table -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/vendor/bootstrap-table/dist/css/bootstrap-table.min.css">
	<!-- Bootstrap Validator CSS -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/vendor/bootstrapValidator/dist/css/bootstrapValidator.min.css">
	<!-- Select2 -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/vendor/select2/dist/css/select2.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/vendor/select2-bootstrap-theme/dist/select2-bootstrap.css">
	
	<!-- jQuery -->
	<script type="text/javascript" src="<%=basePath%>resources/vendor/jquery/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script type="text/javascript" src="<%=basePath%>resources/vendor/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!-- Bootstrap select -->
	<script type="text/javascript" src="<%=basePath%>resources/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>resources/vendor/bootstrap-select/dist/js/i18n/defaults-zh_CN.min.js"></script>
	<!-- Bootstrap treeview -->
	<script type="text/javascript" src="<%=basePath%>resources/vendor/bootstrap-treeview/dist/js/bootstrap-treeview.js"></script>
	<!-- Bootstrap table -->
	<script type="text/javascript" src="<%=basePath%>resources/vendor/bootstrap-table/dist/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>resources/vendor/bootstrap-table/dist/js/bootstrap-table-zh-CN.min.js"></script>
	<!-- Bootstrap Validator JS -->
	<script type="text/javascript" src="<%=basePath%>resources/vendor/bootstrapValidator/dist/js/bootstrapValidator.js"></script>
	<!-- Select2 -->
	<script type="text/javascript" src="<%=basePath%>resources/vendor/select2/dist/js/select2.js"></script>
	<script type="text/javascript" src="<%=basePath%>resources/vendor/select2/dist/js/i18n/zh-CN.js"></script>
	
	<script type="text/javascript">
		//获取项目路径
	    var base = "<%=path%>" ; 
	</script>
  </head>
  
  <body>
  </body>
</html>
