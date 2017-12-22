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
	                            <label class="radio-inline"> <input type="radio" name="status" value="1"> 在售 </label>
                                <label class="radio-inline"> <input type="radio" name="status" value="0"> 停售</label>
                                <label class="radio-inline"> <input type="radio" name="status" value="-1" checked> 全部</label>
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
            <button id="btn_commodity_add" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 新增
            </button>
            <button id="btn_commodity_delete" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 删除
            </button>
        </div>
        
        <div class="panel-body" style="padding:0px;">
	        <table id="commodityList_table" class="table table-hover table-striped table-bordered" data-toggle="table">
			</table>
        </div>
        
        <!-- modal -->
        <div class="modal fade" id="commodity_modal" tabindex="-1" role="dialog"
              aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                </div><!-- /.modal-content -->
            </div>
        </div>
        
    </div>
  </body>
</html>
