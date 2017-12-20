<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超市货物管理平台-部门管理</title>
    <!-- CSS -->
    <style rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/style.css"></style>
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/view/sysManager/dept.js"></script>
	<style>
		.form-horizontal .control-label {
		    padding-top: 4px;
		    
		}
	</style>
  </head>
  
  <body>
  	<div class="panel panel-default">
  		<div class="panel-body" style="padding-bottom:0px;">
	    	<form class="form-horizontal" id="dept_search_form">
	    		<div class="row">
	    			<div class="col-sm-4 col-md-4">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">部门名称:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="deptName" id="deptName" style="height:28px;">
	                         </div>
	                     </div>
	                 </div>
	    		</div>
	    	</form>
    	</div>
  		<div id="dept_toolbar" class="btn-group" style="padding:0px 15px;">
            <button id="btn_dept_add" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 新增
            </button>
            <button id="btn_dept_delete" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 删除
            </button>
        </div>
        <div class="panel-body" style="padding:15px;">
        	<table id="tt"></table>
        </div>
  		
  	</div>
  </body>
</html>
