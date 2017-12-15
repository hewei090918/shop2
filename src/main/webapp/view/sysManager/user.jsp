<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超市货物管理平台-用户管理</title>
    <!-- CSS -->
    <style rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/style.css"></style>
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/view/sysManager/user.js"></script>
	<style>
	
	</style>
  </head>
  
  <body>
    <div class="panel panel-default">
    	<div class="panel-body" style="padding-bottom:0px;">
	    	<form class="form-horizontal" id="search_form" action="">
	    		<div class="row">
	    			<div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">用户名:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="username" id="username">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">姓名:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="realname" id="realname">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">部门:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="deptId" id="deptId">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">角色:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="roleId" id="roleId">
	                         </div>
	                     </div>
	                 </div>
	    		</div>
	    	</form>
    	</div>
    	<div id="toolbar" class="btn-group" style="padding:0px 15px;">
            <button id="btn_query" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-search" aria-hidden="true"></span> 查询
            </button>
            <button id="btn_add" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 新增
            </button>
            <button id="btn_delete" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 删除
            </button>
        </div>
        
        <div class="panel-body" style="padding:0px;">
	        <table id="list_table" class="table table-hover table-striped table-bordered" data-toggle="table">
			    
			</table>
        </div>
        
        <!-- modal -->
        <div class="modal fade" id="user_modal" tabindex="-1" role="dialog"
              aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                </div><!-- /.modal-content -->
            </div>
        </div>
    </div>
  </body>
</html>
