<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超市货物管理平台-商品管理</title>
    <!-- CSS -->
    <style rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/style.css"></style>
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/view/productManager/commodity.js"></script>
	<style>
		.form-horizontal .control-label {
		    padding-top: 4px;
		}
	</style>
  </head>
  
  <body>
    <div class="panel panel-default">
    	<div class="panel-body" style="padding-bottom:0px;">
	    	<form class="form-horizontal" id="commodity_search_form">
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
	                 <div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">类别:</label>
	                         <div class="col-sm-8">
	                         	<input type="hidden" name="commodityType" id="commodityType">
	                         	<select class="form-control select2" id="commodityTypeSelect">
	                         	</select>
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">货管员:</label>
	                         <div class="col-sm-8">
	                         	<input type="hidden" name="manager" id="manager">
	                         	<select class="form-control select2" id="managerSelect">
	                         	</select>
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-6 col-md-6">
	                     <div class="form-group">
	                         <label class="col-sm-2 control-label">状态:</label>
	                         <div class="col-sm-10">
	                            <label class="radio-inline"> <input type="radio" name="status" value="1" checked> 在售 </label>
                                <label class="radio-inline"> <input type="radio" name="status" value="2"> 卖出</label>
                                <label class="radio-inline"> <input type="radio" name="status" value="3"> 下架</label>
                                <label class="radio-inline"> <input type="radio" name="status" value=""> 全部</label>
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-6 col-md-6">
	                     <div class="form-group">
	                         <label class="col-sm-2 control-label">热卖:</label>
	                         <div class="col-sm-10">
	                            <label class="radio-inline"> <input type="radio" name="isHot" value="1"> 是 </label>
                                <label class="radio-inline"> <input type="radio" name="isHot" value="0"> 否</label>
                                <label class="radio-inline"> <input type="radio" name="isHot" value="-1" checked> 全部</label>
	                         </div>
	                     </div>
	                 </div>
	    		</div>
	    	</form>
    	</div>
    	<div id="commodity_toolbar" class="btn-group" style="padding:0px 15px;">
            <button id="btn_commodity_query" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-search" aria-hidden="true"></span> 查询
            </button>
            <button id="btn_commodity_reset" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span> 重置
            </button>
            <button id="btn_commodity_up" type="button" class="btn btn-warning">
               <span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span> 上架
            </button>
            <button id="btn_commodity_sell" type="button" class="btn btn-success">
               <span class="glyphicon glyphicon-usd" aria-hidden="true"></span> 出售
            </button>
            <button id="btn_commodity_down" type="button" class="btn btn-warning">
               <span class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span> 下架
            </button>
            
        </div>
        
        <div class="panel-body" style="padding:0px;">
	        <table id="commodityList_table" class="table table-hover table-striped table-bordered" data-toggle="table">
			</table>
        </div>
        
        <!-- modal -->
        <div class="modal fade" id="commodity_modal" tabindex="-1" role="dialog"
              aria-hidden="true">
            <div class="modal-dialog" style="width:400px;height:auto;">
                <div class="modal-content">
                	<form class="form-horizontal" id="commodity_form">
	                	<div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			                <h4 class="modal-title">商品新增</h4>
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
		                             <input type="hidden" class="form-control" name="commodityType" id="modal_commodityType">
		                         	 <select class="form-control select2" id="modal_commodityTypeSelect">
		                         	 </select>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">单价:</label>
		                         <div class="col-sm-9">
		                         	 <div class="input-group">
			                             <span class="input-group-addon">¥</span>
							             <input type="text" name="price" id="modal_price" data-inputmask="'alias':'money'" class="form-control" style="height:28px;">
						             </div>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">会员折扣:</label>
		                         <div class="col-sm-9">
		                         	 <select class="form-control" name="discount" style="height:28px;padding:0 10px;">
		                         	 	<option value="1.00">100%</option>
		                         	 	<option value="0.95">95%</option>
		                         	 	<option value="0.90">90%</option>
		                         	 	<option value="0.85">85%</option>
		                         	 	<option value="0.80">80%</option>
		                         	 	<option value="0.75">75%</option>
		                         	 	<option value="0.70">70%</option>
		                         	 	<option value="0.65">65%</option>
		                         	 	<option value="0.60">60%</option>
		                         	 	<option value="0.55">55%</option>
		                         	 	<option value="0.50">50%</option>
		                         	 </select>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">货管员:</label>
		                         <div class="col-sm-9">
		                             <input type="hidden" class="form-control" name="manager" id="modal_manager">
		                         	 <select class="form-control select2" id="modal_managerSelect">
		                         	 </select>
		                         </div>
		                     </div>
		                     <div class="form-group">
		                         <label class="col-sm-3 control-label">是否热卖:</label>
		                         <div class="col-sm-9">
		                             <label class="radio-inline"> <input type="radio" name="isHot" value="1"> 是 </label>
                                	 <label class="radio-inline"> <input type="radio" name="isHot" value="0" checked> 否</label>
		                         </div>
		                     </div>
			            </div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			                <button type="button" class="btn btn-primary" id="btn_commodity_save">保存</button>
			            </div>
		            </form>
                </div><!-- /.modal-content -->
            </div>
        </div>
        
    </div>
  </body>
</html>
