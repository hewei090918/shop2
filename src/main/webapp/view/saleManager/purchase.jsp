<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超市货物管理平台-采购管理</title>
    <!-- CSS -->
    <style rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/style.css"></style>
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/view/saleManager/purchase.js"></script>
	<style>
		.form-horizontal .control-label {
		    padding-top: 4px;
		}
	</style>
  </head>
  
  <body>
    <div class="panel panel-default">
    	<div class="panel-body" style="padding-bottom:0px;">
	    	<form class="form-horizontal" id="purchase_search_form">
	    		<div class="row">
	    			<div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">名称:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="commodityName" id="commodityName" style="height:28px;">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">编码:</label>
	                         <div class="col-sm-8">
	                         	<input type="text" class="form-control" name="commodityCode" id="commodityCode" style="height:28px;">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-6 col-md-6">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">供应商:</label>
	                         <div class="col-sm-8">
	                         	<input type="hidden" name="supplierId" id="supplierId">
	                         	<select class="form-control select2" id="supplierSelect">
	                         	</select>
	                         </div>
	                     </div>
	                 </div>
	    		</div>
	    	</form>
    	</div>
    	<div id="purchase_toolbar" class="btn-group" style="padding:0px 15px;">
            <button id="btn_purchase_query" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-search" aria-hidden="true"></span> 查询
            </button>
            <button id="btn_purchase_reset" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span> 重置
            </button>
            <button id="btn_purchase_buy" type="button" class="btn btn-success">
               <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> 采购
            </button>
        </div>
        
        <div class="panel-body" style="padding:0px;">
	        <table id="purchaseList_table" class="table table-hover table-striped table-bordered" data-toggle="table">
			</table>
        </div>
        
        <!-- modal -->
        <div class="modal fade" id="purchase_modal" tabindex="-1" role="dialog"
              aria-hidden="true">
            <div class="modal-dialog" style="width:400px;height:auto;">
                <div class="modal-content">
                	<form class="form-horizontal" id="purchase_form">
	                	<div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			                <h4 class="modal-title">商品采购</h4>
			            </div>
			            <div class="modal-body">
   							<div class="form-group">
		                         <label class="col-sm-3 control-label">商品名称:</label>
		                         <div class="col-sm-9">
		                             <input type="text" class="form-control" name="commodityName" style="height:28px;" placeholder="请输入商品名称">
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">商品类别:</label>
		                         <div class="col-sm-9">
		                             <input type="hidden" class="form-control" name="commodityType" id="modal_commodityType0">
		                         	 <select class="form-control select2" id="modal_commodityTypeSelect0">
		                         	 </select>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">供应商:</label>
		                         <div class="col-sm-9">
		                             <input type="hidden" class="form-control" name="supplierId" id="modal_supplierId">
		                         	 <select class="form-control select2" id="modal_supplierSelect">
		                         	 </select>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">成本价:</label>
		                         <div class="col-sm-9">
		                         	 <div class="input-group">
			                             <span class="input-group-addon">¥</span>
							             <input type="text" name="price" id="modal_costPrice" data-inputmask="'alias':'money'" class="form-control" style="height:28px;">
						             </div>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">采购数量:</label>
		                         <div class="col-sm-9">
		                             <div class="input-group number-spinner">
                                         <span class="input-group-btn data-dwn">
                                            <button class="btn btn-default btn-info" data-dir="dwn"><span class="glyphicon glyphicon-minus"></span></button>
                                         </span>
                                         <input type="text" class="form-control text-center" name="purchaseNum" value="0" min="0" style="height:28px;">
                                         <span class="input-group-btn data-up">
			                             	<button class="btn btn-default btn-info" data-dir="up"><span class="glyphicon glyphicon-plus"></span></button>
		                            	 </span>
                                     </div>
		                         </div>
		                     </div>
			            </div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			                <button type="button" class="btn btn-primary" id="btn_purchase_save">保存</button>
			            </div>
		            </form>
                </div><!-- /.modal-content -->
            </div>
        </div>
        
    </div>
  </body>
</html>
