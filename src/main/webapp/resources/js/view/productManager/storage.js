/**
 * store.js
 */

$(function(){
	
	//加载表格数据
	$('#storageList_table').bootstrapTable({
//        method: 'post',
        contentType: "application/x-www-form-urlencoded",
        url: base + "/storage/queryPage.html",
        toolbar: '#storage_toolbar',//工具按钮用哪个容器
        striped: true, 
        dataField: "data",//修改后端分页集合键值rows为data
        queryParamsType:'limit',//查询参数组织方式
        queryParams: queryParams,//传递参数（*）
        sidePagination: "client", //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,//初始化加载第一页，默认第一页
        pagination:true,//是否分页
        pageSize:10,//单页记录数
        pageList:[5,10,20,30],
        showRefresh:false,//刷新按钮
        clickToSelect: true,
//        toolbarAlign:'right',
//        buttonsAlign:'right',
        height: $(window).height()-300,
        columns:[
            {
                title:'全选',
                field:'select',
                checkbox:true,//复选框
                width:30,
                align:'center',
                valign:'middle'
            }, {
            	title:'序号',
            	field:'_rowNum',
            	width:20,
            	align:'center',
            	formatter: function (value, row, index) {  
                    return index+1;  
                }  
            }, {
                title:'storageId',
                field:'storageId',
                visible:false
            }, {
                title:'仓库名称',
                field:'storageName',
                width:130,
                sortable:true
            }, {
            	title:'库存数量',
            	field:'amount'
            }, {
                title:'首次入库时间',
                field:'firstInTime',
                formatter: dateFormatter
            }, {
                title:'最近入库时间',
                field:'latestInTime',
                formatter: dateFormatter
            }, {
                title:'售罄',
                field:'soldOut',
                width:50,
                align:'center',
                formatter: soldOutFormatter
            }, {
                title:'详情',
                field:'_detail',
                width:50,
                align:'center',
                formatter:detailFormatter
            }
        ],
        locale:'zh-CN'//中文支持
    })
    
    //请求服务数据时所传参数
    function queryParams(params){
        return{
        	limit: params.limit,//页面大小（每页最多显示多少条数据）
            offset: params.offset,//请求当前页起始数
            storageName: $('#storageName').val(),
            soldOut: $('input[name="soldOut"]:checked').val()
        }
    }
	
	function refreshStorageListTable(){
		$('#storageList_table').bootstrapTable('refresh');
	}
	
	function refreshStorDetListTable(){
		$('#storDetList_table').bootstrapTable('refresh');
	}
	
	//查询按钮事件
    $('#btn_storage_query').click(function(){
    	refreshStorageListTable();
    });
    
    $('#btn_storage_reset').click(function(){
    	//表单值重置
    	$('#storage_search_form')[0].reset();
    });
    
    //新增按钮事件
    $('#btn_storage_add').click(function(){
    	
    	$('#storage_modify_modal').modal('show');
    });
    
    $('#btn_storage_save').click(function() {
    	var params = $('#storage_form').serialize();
    	$.ajax({
    		type: 'POST',
    		url: base + '/storage/addStorage.html',
    		data: params,
    		success: function(data) {
    			if(data.success) {
    				toastr.success(data.message);
    				$('#storage_modify_modal').modal('hide');
    				refreshStorageListTable();
    			}else {
    				toastr.warning(data.message);
    			}
    		},
    		dataType: 'json'
		});
    });
    
    $('#btn_up_save').click(function() {
    	var params = $('#commodity_up_form').serialize();
    	console.log(params);
    	$.ajax({
    		type: 'POST',
    		url: base + '/commodity/commodityUp.html',
    		data: params,
    		success: function(data) {
    			if(data.success) {
    				toastr.success(data.message);
    				$('#amount_change_modal').modal('hide');
    				refreshStorDetListTable();
    				refreshStorageListTable();
    			}else {
    				toastr.warning(data.message);
    			}
    		},
    		dataType: 'json'
		});
    });
    
    //删除按钮事件
    $('#btn_storage_delete').click(function(){
    	var rows = $('#storageList_table').bootstrapTable('getSelections');
	    if(rows.length == 0) {
	    	toastr.warning('您尚未选择任何记录!');
	      	return;
	    }else {
	      	var array = [];
	      	$.each(rows, function(index, row) {
	      		array.push(row.storageId);
	      	});
	      	var ids = array.join(",");
	      	$.ajax({
	      		type: 'POST',
	      		url: base + '/storage/deleteStorage.html',
	      		data: {ids: ids},
	      		success: function(data) {
	      			if(data.success) {
	      				toastr.success(data.message);
	      				refreshStorageListTable();
	      			}else {
	      				toastr.warning(data.message);
	      			}
	      		},
	      		dataType: 'json'
	  		});
	    }
    });

    //模态框居中
    $('#storage_modify_modal').on('show.bs.modal', function (e) {
    	$(this).css('display', 'block');  
    	
        var modalHeight = $(window).height()/2 - $('#storage_modify_modal .modal-dialog').height()/2;  
        $(this).find('.modal-dialog').css({  
            'margin-top': modalHeight  
        });  
    });
    
    $('#storage_detail_modal').on('show.bs.modal', function (e) {
    	$(this).css('display', 'block');  
    	
        var modalHeight = $(window).height()/2 - $('#storage_detail_modal .modal-dialog').height()/2;  
        $(this).find('.modal-dialog').css({  
            'margin-top': modalHeight  
        });  
    });
    
    $('#amount_change_modal').on('show.bs.modal', function (e) {
    	$(this).css('display', 'block');  
    	
        var modalHeight = $(window).height()/2 - $('#amount_change_modal .modal-dialog').height()/2;  
        $(this).find('.modal-dialog').css({  
            'margin-top': modalHeight  
        });  
    });
    
});

function soldOutFormatter(value,row,index) {
	if(value==true){
        return '<i class="fa fa-check" style="cursor:pointer;color:red" title="售罄"></i>';
    }else if(value==false){
        return '<i class="fa fa-times" style="cursor:pointer;color:green" title="未售罄"></i>';
    }else{
        return ''
    }
}

function detailFormatter(value,row,index) {
	
	return '<i onclick="showStorageDetail(' + row.storageId + ')" class="glyphicon glyphicon-list" style="cursor:pointer;color:purple;" title="查看详情"></i>';
}

function showStorageDetail(id) {
	$('#storageList_table').bootstrapTable('uncheckAll');
	$('#storDetList_table').bootstrapTable('destroy');
	
	$('#storDetList_table').bootstrapTable({
		url: base + "/purchase/queryByStorageId.html",
		striped: true, 
        dataField: "data",
        queryParams: function() {
        	return {storageId: id}
        },
		sidePagination: "client",
		pageNumber: 1,
        pagination:true,
        pageSize:5,
        pageList:[5,10,20],
        showRefresh:false,//刷新按钮
        clickToSelect: true,
        height: 400,
        columns:[
	        {
	            title:'全选',
	            field:'select',
	            checkbox:true,//复选框
	            width:30,
	            align:'center',
	            valign:'middle'
	        }, {
	         	title:'序号',
	         	field:'_rowNum',
	         	width:20,
	         	align:'center',
	         	formatter: function (value, row, index) {  
	                 return index+1;  
	            }  
	        }, {
                title:'purchaseId',
                field:'purchaseId',
                visible:false
            }, {
            	title:'purStorageId',
            	field:'purStorageId',
            	visible:false
            }, {
            	title:'存放仓库',
                field:'purStorageName',
                width:100,
            }, {
                title:'商品名称',
                field:'purCommodityName',
                width:130,
                sortable:true
            }, {
            	title:'purCommodityType',
            	field:'purCommodityType',
            	visible:false
            }, {
            	title:'商品类别',
            	field:'purCommodityTypeName',
            	width:100
            }, {
                title:'purSupplierId',
                field:'purSupplierId',
                visible:false
            }, {
                title:'供应商',
                field:'purSupplierName'
            }, {
            	title:'剩余数量',
            	field:'purchaseAmount'
            }, {
                title:'操作',
                field:'_oper',
                width:50,
                align:'center',
                formatter:storDetOperateFormatter
            }
        ],
		locale:'zh-CN'//中文支持
	});
	$('#storage_detail_modal').modal('show');
}

function storDetOperateFormatter(value,row,index) {
	
	return '<i onclick="doUp(' + row.purchaseId + ',' + row.purchaseAmount + ')" class="glyphicon glyphicon-arrow-up" style="cursor:pointer;color:purple;" title="上架"></i>';
}

function doUp(id, amount) {
	$('#storDetList_table').bootstrapTable('uncheckAll');
	
	$('#upId').val(id);
	
	$('.spinner .btn:first-of-type').on('click', function() {
		if((parseInt($('.spinner input').val(), 10) + 1) <= amount) {
			$('.spinner input').val( parseInt($('.spinner input').val(), 10) + 1); 
		}
	});  
	$('.spinner .btn:last-of-type').on('click', function() {
		if((parseInt($('.spinner input').val(), 10) - 1) >= 0){
			$('.spinner input').val( parseInt($('.spinner input').val(), 10) - 1);  
		}
	});  
	
	$('#amount_change_modal').modal('show');
}

