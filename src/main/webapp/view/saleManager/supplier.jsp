<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超市货物管理平台-供应商管理</title>
    <!-- CSS -->
    <style rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/style.css"></style>
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/view/saleManager/supplier.js"></script>
	<style>
		.form-horizontal .control-label {
		    padding-top: 4px;
		}
	</style>
  </head>
  
  <body>
    <div class="panel panel-default">
    	<div class="panel-body" style="padding-bottom:0px;">
	    	<form class="form-horizontal" id="supplier_search_form">
	    		<div class="row">
	    			<div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">名称:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="supplierName" id="supplierName" style="height:28px;">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">地区:</label>
	                         <div class="col-sm-8">
	                         	<input type="hidden" name="areaId" id="areaId">
	                         	<select class="form-control select2" id="areaSelect">
	                         	</select>
	                         </div>
	                     </div>
	                 </div>
	    		</div>
	    	</form>
    	</div>
    	<div id="supplier_toolbar" class="btn-group" style="padding:0px 15px;">
            <button id="btn_supplier_query" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-search" aria-hidden="true"></span> 查询
            </button>
            <button id="btn_supplier_reset" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span> 重置
            </button>
            <button id="btn_supplier_add" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 新增
            </button>
        </div>
        
        <div class="panel-body" style="padding:0px;">
	        <table id="supplierList_table" class="table table-hover table-striped table-bordered" data-toggle="table">
			</table>
        </div>
        
        <!-- modal -->
        <div class="modal fade" id="supplier_modal" tabindex="-1" role="dialog"
              aria-hidden="true">
            <div class="modal-dialog" style="width:440px;height:auto;">
                <div class="modal-content">
                	<form class="form-horizontal" id="supplier_form">
	                	<div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			                <h4 class="modal-title">供应商新增</h4>
			            </div>
			            <div class="modal-body">
   							<div class="form-group">
		                         <label class="col-sm-3 control-label">供应商名称:</label>
		                         <div class="col-sm-9">
		                             <input type="text" class="form-control" name="supplierName" style="height:28px;" placeholder="请输入供应商名称">
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">所在地区:</label>
		                         <div class="col-sm-9">
		                             <input type="hidden" class="form-control" name="areaId" id="modal_areaId">
		                         	 <select class="form-control select2" id="modal_areaSelect">
		                         	 </select>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">联系方式:</label>
		                         <div class="col-sm-9">
		                             <input type="text" class="form-control" name="tel" style="height:28px;" placeholder="请输入联系方式">
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">详细地址:</label>
		                         <div class="col-sm-9">
		                             <textarea name="address" style="width:100%;height:50px;border-radius:5px;"></textarea>
		                         </div>
		                     </div>
			            </div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			                <button type="button" class="btn btn-primary" id="btn_supplier_save">保存</button>
			            </div>
		            </form>
                </div><!-- /.modal-content -->
            </div>
        </div>
        
    </div>
  </body>
</html>
