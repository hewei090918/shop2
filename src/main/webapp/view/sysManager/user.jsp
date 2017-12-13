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
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/view/sysManager/user.js"></script>
  </head>
  
  <body>
    <div class="panel panel-default">
    	<div class="panel-body">
	    	<form class="form-horizontal" id="search_form" action="">
	    		<div class="row">
	    			<div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">用户名:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">姓名:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-4 col-md-4">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">部门:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-2 col-md-2 text-center">
	                 	<button type="button" class="btn btn-primary" id="search_button"><i class="fa fa-search"></i> 查询</button>
	                 </div>
	    		</div>
	    	</form>
    	</div>
    	<div class="panel-toolbar">
             <button class="btn btn-primary" data-toggle="modal" id="create_button"><i class="fa fa-plus"></i> 新建用户
             </button>
        </div>
        <div class="panel-body">
            <table class="table table-hover table-striped table-bordered" id="list_table">
                <thead>
                <tr>
                    <th class="text-right">序号</th>
                    <th>用户名</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>部门</th>
                    <th>职务</th>
                    <th>角色</th>
                    <th>出生日期</th>
                    <th class="text-center">锁定</th>
                    <th class="text-center">操作</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
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
