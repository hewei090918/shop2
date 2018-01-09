/**
 * supplier.js
 */

$(function(){
	//初始化下拉框（用于地区选择）
	bindAreaSelect('areaSelect', 'areaId');
	
	//加载表格数据
	$('#supplierList_table').bootstrapTable({
//        method: 'post',
        contentType: "application/x-www-form-urlencoded",
        url: base + "/supplier/queryPage.html",
        toolbar: '#supplier_toolbar',//工具按钮用哪个容器
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
                title:'supplierId',
                field:'supplierId',
                visible:false
            }, {
                title:'供应商名称',
                field:'supplierName',
                width:220,
                sortable:true
            }, {
                title:'联系方式',
                field:'tel',
                width:150
            }, {
            	title:'areaId',
                field:'areaId',
                visible:false
            }, {
                title:'所在地区',
                field:'areaName',
                width:80
            }, {
                title:'详细地址',
                field:'address'
            }, {
                title:'操作',
                field:'_oper',
                width:50,
                align:'center',
                formatter:supplierOperateFormatter
            }
        ],
        locale:'zh-CN'//中文支持
    })
    
    //请求服务数据时所传参数
    function queryParams(params){
        return{
        	limit: params.limit,//页面大小（每页最多显示多少条数据）
            offset: params.offset,//请求当前页起始数
            supplierName: $('#supplierName').val(),
            areaId: $('#areaId').val()
        }
    }
	
	function refreshTable(){
		$('#supplierList_table').bootstrapTable('refresh');
	}
	
	//查询按钮事件
    $('#btn_supplier_query').click(function(){
    	refreshTable();
    });
    
    $('#btn_supplier_reset').click(function(){
    	//Hidden值重置
    	$("#areaId").val('');
    	//表单值重置
    	$('#supplier_search_form')[0].reset();
    	//下拉框重置
    	$('#areaSelect').val(null).trigger("change");
    });
    
    //新增按钮事件
    $('#btn_supplier_add').click(function(){
    	bindAreaSelect('modal_areaSelect', 'modal_areaId');
    	
        $('#supplier_modal').modal('show');
    });
    
    //模态框居中
    $('#supplier_modal').on('show.bs.modal', function (e) {
    	$(this).css('display', 'block');  
    	
        var modalHeight = $(window).height()/2 - $('#supplier_modal .modal-dialog').height()/2;  
        $(this).find('.modal-dialog').css({  
            'margin-top': modalHeight  
        });  
    });  
    
    $('#btn_supplier_save').click(function(){
    	var params = $('#supplier_form').serialize();
    	$.ajax({
    		type: 'POST',
    		url: base + '/supplier/addSupplier.html',
    		data: params,
    		success: function(data) {
    			if(data.success) {
    				toastr.success(data.message);
    				$('#supplier_modal').modal('hide');
    				refreshTable();
    			}else {
    				toastr.warning(data.message);
    			}
    		},
    		dataType: 'json'
		});
    });
    
});

function bindAreaSelect(selectId, hiddenId) {
	$.ajax({
		url: base + "/area/getList.html",
		success: function(data){
			var data = eval('(' + data + ')');
			$.each(data, function (i, d) {
				d.id = d.areaId;
				d.text = d.areaName;
			});
			
			$('#' + selectId).empty();
            $('#' + selectId).select2({
            	data: data,
            	language: "zh-CN", //设置提示语言
                width: "100%", //设置下拉框的宽度
                placeholder: '请选择地区',
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

function supplierOperateFormatter(value,row,index) {
	
	return '<i onclick="showSupplierDetail(' + index + ')" class="glyphicon glyphicon-pencil" style="cursor:pointer;color:purple;" title="修改"></i>';
}

function showSupplierDetail(index) {
	console.log(index);
}


