/**
 * purchase.js
 */

$(function(){
	
	//初始化下拉框（用于仓库选择）
	bindStorageSelect('purStorageSelect', 'purStorageId');
	//初始化下拉框（用于供应商选择）
	bindSupplierSelect('purSupplierSelect', 'purSupplierId');
	
	//加载表格数据
	$('#purchaseList_table').bootstrapTable({
//        method: 'post',
        contentType: "application/x-www-form-urlencoded",
        url: base + "/purchase/queryPage.html",
        toolbar: '#purchase_toolbar',//工具按钮用哪个容器
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
                width:150
            }, {
                title:'成本价/件',
                field:'purchasePrice',
                width:90,
                formatter: priceFormatter
            }, {
                title:'采购数量',
                field:'purchaseAmount',
                width:90,
                align:'center'
            }, {
                title:'purStorageId',
                field:'purStorageId',
                visible:false
            }, {
                title:'仓库',
                field:'purStorageName'
            }, {
                title:'purSupplierId',
                field:'purSupplierId',
                visible:false
            }, {
                title:'供应商',
                field:'purSupplierName'
            }, {
                title:'操作',
                field:'_oper',
                width:50,
                align:'center',
                formatter:operateFormatter
            }
        ],
        locale:'zh-CN'//中文支持
    })
    
    //请求服务数据时所传参数
    function queryParams(params){
        return{
        	limit: params.limit,//页面大小（每页最多显示多少条数据）
            offset: params.offset,//请求当前页起始数
            purCommodityName: $('#purCommodityName').val(),
            purStorageId: $('#purStorageId').val(),
            purSupplierId: $('#purSupplierId').val()
        }
    }
	
	function refreshTable(){
		$('#purchaseList_table').bootstrapTable('refresh');
	}
	
	//查询按钮事件
    $('#btn_purchase_query').click(function(){
    	refreshTable();
    });
    
    $('#btn_purchase_reset').click(function(){
    	//Hidden值重置
    	$("#purStorageId").val('');
    	$("#purSupplierId").val('');
    	//表单值重置
    	$('#purchase_search_form')[0].reset();
    	//下拉框重置
    	$('#purStorageSelect').val(null).trigger("change");
    	$('#purSupplierSelect').val(null).trigger("change");
    });
    
    //购买按钮事件
    $('#btn_purchase_buy').click(function(){
    	bindTypeSelect('m_purCommodityTypeSelect', 'm_purCommodityType');
    	bindStorageSelect('m_purStorageSelect', 'm_purStorageId');
    	bindSupplierSelect('m_purSupplierSelect', 'm_purSupplierId');
    	
    	$('.spinner .btn:first-of-type').on('click', function() {  
    		$('.spinner input').val( parseInt($('.spinner input').val(), 10) + 1);  
    	});  
    	$('.spinner .btn:last-of-type').on('click', function() {
    		if((parseInt($('.spinner input').val(), 10) - 1) >= 0){
    			$('.spinner input').val( parseInt($('.spinner input').val(), 10) - 1);  
    		}
    	});  
    	
        $('#purchase_modal').modal('show');
    });
    
    //模态框居中
    $('#purchase_modal').on('show.bs.modal', function (e) {
    	$(this).css('display', 'block');  
    	
        var modalHeight = $(window).height()/2 - $('#purchase_modal .modal-dialog').height()/2;  
        $(this).find('.modal-dialog').css({  
            'margin-top': modalHeight  
        });  
    });  
    
    $('#btn_purchase_save').click(function(){
    	var params = $('#purchase_form').serialize();
    	$.ajax({
    		type: 'POST',
    		url: base + '/purchase/addPurchase.html',
    		data: params,
    		success: function(data) {
    			if(data.success) {
    				toastr.success(data.message);
    				$('#purchase_modal').modal('hide');
    				refreshTable();
    			}else {
    				toastr.warning(data.message);
    			}
    		},
    		dataType: 'json'
		});
    });
    
});

function bindTypeSelect(selectId, hiddenId) {
	$.ajax({
		url: base + "/commodityType/getList.html",
		success: function(data){
			var data = eval('(' + data + ')');
			$.each(data, function (i, d) {
				d.id = d.typeId;
				d.text = d.typeName;
			});
			
			$('#' + selectId).empty();
            $('#' + selectId).select2({
            	data: data,
            	language: "zh-CN", //设置提示语言
                width: "100%", //设置下拉框的宽度
                placeholder: '请选择类别',
                allowClear: true
            });
            
            $('#' + selectId).val(null).trigger("change");
            
            $("#" + selectId).on("select2:select",function(){  
                $("#" + hiddenId).val($(this).val());  
            });  
            
            $("#" + selectId).on("select2:unselect",function(){
                $("#" + hiddenId).val('');  
            }); 

		}
	});
}

function bindStorageSelect(selectId, hiddenId) {
	$.ajax({
		url: base + "/storage/getList.html",
		success: function(data){
			var data = eval('(' + data + ')');
			$.each(data, function (i, d) {
				d.id = d.storageId;
				d.text = d.storageName;
			});
			
			$('#' + selectId).empty();
            $('#' + selectId).select2({
            	data: data,
            	language: "zh-CN", //设置提示语言
                width: "100%", //设置下拉框的宽度
                placeholder: '请选择仓库',
                allowClear: true
            });
            
            $('#' + selectId).val(null).trigger("change");
            
            $("#" + selectId).on("select2:select",function(){  
                $("#" + hiddenId).val($(this).val());  
            });  
            
            $("#" + selectId).on("select2:unselect",function(){
                $("#" + hiddenId).val('');  
            }); 

		}
	});
}

function bindSupplierSelect(selectId, hiddenId) {
	$.ajax({
		url: base + "/supplier/getList.html",
		success: function(data){
			var data = eval('(' + data + ')');
			$.each(data, function (i, d) {
				d.id = d.supplierId;
				d.text = d.supplierName;
			});
			
			$('#' + selectId).empty();
            $('#' + selectId).select2({
            	data: data,
            	language: "zh-CN", //设置提示语言
                width: "100%", //设置下拉框的宽度
                placeholder: '请选择供应商',
                allowClear: true
            });
            
            $('#' + selectId).val(null).trigger("change");
            
            $("#" + selectId).on("select2:select",function(){  
                $("#" + hiddenId).val($(this).val());  
            });  
            
            $("#" + selectId).on("select2:unselect",function(){
                $("#" + hiddenId).val('');  
            }); 

		}
	});
}

function dateFormatter(value) {
	if(value)
		return new Date(value).Format('yyyy-MM-dd HH:mm:ss');
	else
		return '';
}

function statusFormatter(value,row,index) {
	console.log(value);
	if(value == 1){
        return '<i class="fa fa-support" style="cursor:pointer;color:green" title="在售"></i>';
    }else if(value == 2){
        return '<i class="fa fa-arrow-down" style="cursor:pointer;color:red" title="卖出"></i>';
    }else if(value == 3){
        return '<i class="fa fa-tags" style="cursor:pointer;color:grey" title="下架"></i>'
    }else{
    	return '';
    }
}

function priceFormatter(value,row,index) {
	return '<i class="fa fa-jpy"></i>' + value;
}

function operateFormatter(value,row,index) {
	return '<i onclick="showDetail(' + index + ')" class="glyphicon glyphicon-pencil" style="cursor:pointer;color:purple;" title="修改"></i>';
}

function showDetail(index) {
	console.log(index);
}

