<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超市货物管理平台-库存管理</title>
    <!-- CSS -->
    <style rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/style.css"></style>
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/view/productManager/storage.js"></script>
	<style>
		.form-horizontal .control-label {
		    padding-top: 4px;
		}
	</style>
  </head>
  
  <body>
    <div class="panel panel-default">
    	<div class="panel-body" style="padding-bottom:0px;">
	    	<form class="form-horizontal" id="storage_search_form">
	    		<div class="row">
	    			<div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">名称:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="storageName" id="storageName" style="height:28px;">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-6 col-md-6">
	                     <div class="form-group">
	                         <label class="col-sm-2 control-label">售罄:</label>
	                         <div class="col-sm-10">
	                            <label class="radio-inline"> <input type="radio" name="soldOut" value="1"> 是 </label>
                                <label class="radio-inline"> <input type="radio" name="soldOut" value="0"> 否</label>
                                <label class="radio-inline"> <input type="radio" name="soldOut" value="-1" checked> 全部</label>
	                         </div>
	                     </div>
	                 </div>
	    		</div>
	    	</form>
    	</div>
    	<div id="storage_toolbar" class="btn-group" style="padding:0px 15px;">
            <button id="btn_storage_query" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-search" aria-hidden="true"></span> 查询
            </button>
            <button id="btn_storage_reset" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span> 重置
            </button>
            <button id="btn_storage_add" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 新增
            </button>
            <button id="btn_storage_delete" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 删除
            </button>
        </div>
        
        <div class="panel-body" style="padding:0px;">
	        <table id="storageList_table" class="table table-hover table-striped table-bordered" data-toggle="table">
			</table>
        </div>
        
        <!-- storage modify modal -->
        <div class="modal fade" id="storage_modify_modal" tabindex="-1" role="dialog"
              aria-hidden="true">
            <div class="modal-dialog" style="width:400px;height:auto;">
                <div class="modal-content">
                	<form class="form-horizontal" id="storage_form">
	                	<div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			                <h4 class="modal-title">新增仓库</h4>
			            </div>
			            <div class="modal-body">
			            	 <div class="form-group">
		                         <label class="col-sm-3 control-label">仓库名称:</label>
		                         <div class="col-sm-9">
		                             <input type="text" class="form-control" name="storageName" placeholder="请输入仓库名称">
		                         </div>
		                     </div>
			            </div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			                <button type="button" class="btn btn-primary" id="btn_storage_save">保存</button>
			            </div>
		            </form>
                </div>
           	</div>
        </div>
        
        <!-- storage detail modal -->
        <div class="modal fade" id="storage_detail_modal" tabindex="-1" role="dialog"
              aria-hidden="true">
            <div class="modal-dialog" style="width:780px;height:auto;">
                <div class="modal-content">
                	<div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                <h4 class="modal-title">库存详情</h4>
		            </div>
		            <div class="modal-body">
		            	<table id="storDetList_table" class="table table-hover table-striped table-bordered" data-toggle="table">
						</table>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		                <button type="button" class="btn btn-primary" id="btn_storage_up">上架</button>
		            </div>
                </div>
           	</div>
        </div>
    </div>
  </body>
</html>
