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
		.spinner {  
		  width: 200px;  
		}  
		.spinner input {  
		  text-align: right;  
		}  
		.input-group-btn-vertical {  
		  position: relative;  
		  white-space: nowrap;  
		  width: 1%;  
		  vertical-align: middle;  
		  display: table-cell;  
		}  
		.input-group-btn-vertical > .btn {  
		  display: block;  
		  float: none;  
		  width: 100%;  
		  max-width: 100%;  
		  padding: 8px;  
		  margin-left: -1px;  
		  position: relative;  
		  border-radius: 0;  
		}  
		.input-group-btn-vertical > .btn:first-child {  
		  border-top-right-radius: 4px;  
		}  
		.input-group-btn-vertical > .btn:last-child {  
		  margin-top: -2px;  
		  border-bottom-right-radius: 4px;  
		}  
		.input-group-btn-vertical i{  
		  position: absolute;  
		  top: 0;  
		  left: 4px;  
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
	                         <label class="col-sm-4 control-label">商品名:</label>
	                         <div class="col-sm-8">
	                             <input type="text" class="form-control" name="purCommodityName" id="purCommodityName" style="height:28px;">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">仓库:</label>
	                         <div class="col-sm-8">
	                            <input type="hidden" name="purStorageId" id="purStorageId">
	                         	<select class="form-control select2" id="purStorageSelect">
	                         	</select>
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-6 col-md-6">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">供应商:</label>
	                         <div class="col-sm-8">
	                         	<input type="hidden" name="purSupplierId" id="purSupplierId">
	                         	<select class="form-control select2" id="purSupplierSelect">
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
		                             <input type="text" class="form-control" name="purCommodityName" placeholder="请输入商品名称">
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">商品类别:</label>
		                         <div class="col-sm-9">
		                             <input type="hidden" class="form-control" name="purCommodityType" id="m_purCommodityType">
		                         	 <select class="form-control select2" id="m_purCommodityTypeSelect">
		                         	 </select>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">仓库:</label>
		                         <div class="col-sm-9">
		                             <input type="hidden" class="form-control" name="purStorageId" id="m_purStorageId">
		                         	 <select class="form-control select2" id="m_purStorageSelect">
		                         	 </select>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">供应商:</label>
		                         <div class="col-sm-9">
		                             <input type="hidden" class="form-control" name="purSupplierId" id="m_purSupplierId">
		                         	 <select class="form-control select2" id="m_purSupplierSelect">
		                         	 </select>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">成本价/件:</label>
		                         <div class="col-sm-9">
		                         	 <div class="input-group">
			                             <span class="input-group-addon">¥</span>
							             <input type="text" name="purchasePrice" data-inputmask="'alias':'money'" class="form-control">
						             </div>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">采购数量:</label>
		                         <div class="col-sm-9">
		                              <div class="input-group spinner">  
								    	 <input type="text" class="form-control" name="purchaseAmount" value="0">  
								    	 <div class="input-group-btn-vertical">  
								      		<button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>  
								      		<button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>  
								    	 </div>  
									  </div> 
		                         </div>
		                     </div>
			            </div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			                <button type="button" class="btn btn-primary" id="btn_purchase_save">保存入库</button>
			            </div>
		            </form>
                </div><!-- /.modal-content -->
            </div>
        </div>
        
    </div>
  </body>
</html>
