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
	                             <input type="text" class="form-control" name="commodityName" id="commodityName0" style="height:28px;">
	                         </div>
	                     </div>
	                 </div>
	                 <div class="col-sm-3 col-md-3">
	                     <div class="form-group">
	                         <label class="col-sm-4 control-label">类别:</label>
	                         <div class="col-sm-8">
	                         	<input type="hidden" name="commodityType" id="commodityType0">
	                         	<select class="form-control select2" id="commodityTypeSelect0">
	                         	</select>
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
            <!-- <button id="btn_storage_delete" type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 删除
            </button> -->
        </div>
        
        <div class="panel-body" style="padding:0px;">
	        <table id="storageList_table" class="table table-hover table-striped table-bordered" data-toggle="table">
			</table>
        </div>
        
    </div>
  </body>
</html>
