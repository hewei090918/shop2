/**
 * product.js
 */

$(function(){
	
	//初始化下拉框（用于商品类别选择）
	bindTypeSelect('commodityTypeSelect', 'commodityType');
	
	//初始化下拉框（用于货物管理员选择）
	bindUserSelect('managerSelect', 'manager');
	
	//加载表格数据
	$('#commodityList_table').bootstrapTable({
//        method: 'post',
        contentType: "application/x-www-form-urlencoded",
        url: base + "/commodity/queryPage.html",
        toolbar: '#commodity_toolbar',//工具按钮用哪个容器
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
        height: $(window).height()-340,
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
                title:'commodityId',
                field:'commodityId',
                visible:false
            }, {
                title:'商品编码',
                field:'commodityCode',
                width:130
            }, {
                title:'商品名称',
                field:'commodityName',
                width:130,
                sortable:true
            }, {
            	title:'commodityType',
                field:'commodityType',
                visible:false
            }, {
                title:'商品类别',
                field:'commodityTypeName',
                width:100,
                visible:false
            }, {
                title:'状态',
                field:'status',
                width:50,
                align:'center',
                formatter: statusFormatter
            }, {
                title:'热卖',
                field:'isHot',
                width:50,
                align:'center',
                formatter: isHotFormatter
            }, {
                title:'单价',
                field:'price',
                width:80,
                formatter: priceFormatter
            }, {
                title:'会员价',
                field:'discountPrice',
                width:80,
                formatter: discountPriceFormatter
            }, {
                title:'manager',
                field:'manager',
                visible:false
            }, {
                title:'货管员',
                field:'managerName',
                width:80
            }, {
                title:'上架时间',
                field:'upTime',
                formatter: dateFormatter
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
            commodityName: $('#commodityName').val(),
            commodityCode: $('#commodityCode').val(),
            commodityType: $('#commodityType').val(),
            status: $('input[name="status"]:checked').val(),
            isHot: $('input[name="isHot"]:checked').val(),
            manager: $('#manager').val()
        }
    }
	
	function refreshTable(){
		$('#commodityList_table').bootstrapTable('refresh');
	}
	
	//查询按钮事件
    $('#btn_commodity_query').click(function(){
    	refreshTable();
    });
    
    $('#btn_commodity_reset').click(function(){
    	//Hidden值重置
    	$("#commodityType").val('');
    	$("#manager").val('');
    	//表单值重置
    	$('#commodity_search_form')[0].reset();
    	//下拉框重置
    	$('#commodityTypeSelect').val(null).trigger("change");
    	$('#managerSelect').val(null).trigger("change");
    });
    
    //新增按钮事件
    $('#btn_commodity_add').click(function(){
    	bindTypeSelect('_commodityTypeSelect', '_commodityType');
    	bindUserSelect('_managerSelect', '_manager');
    	
        $('#commodity_modal').modal('show');
    });
    
    //模态框居中
    $('#commodity_modal').on('show.bs.modal', function (e) {
    	$(this).css('display', 'block');  
    	
        var modalHeight = $(window).height()/2 - $('#commodity_modal .modal-dialog').height()/2;  
        $(this).find('.modal-dialog').css({  
            'margin-top': modalHeight  
        });  
    });  
    
    //删除按钮事件
    $('#btn_commodity_delete').click(function(){
        var rows = $('#commodityList_table').bootstrapTable('getSelections');
//        console.log(rows);
        if(rows.length == 0) {
        	toastr.warning('您尚未选择任何记录!');
        	return;
        }else {
        	var array = [];
        	$.each(rows, function(index, row) {
        		array.push(row.commodityId);
        	});
        	var ids = array.join(",");
        	$.ajax({
        		type: 'POST',
        		url: base + '/commodity/deleteCommodity.html',
        		data: {ids: ids},
        		success: function(data) {
        			if(data.success) {
        				toastr.success(data.message);
        				refreshTable();
        			}else {
        				toastr.warning(data.message);
        			}
        		},
        		dataType: 'json'
    		});
        }
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

function bindUserSelect(selectId, hiddenId) {
	$.ajax({
		url: base + "/user/getList.html",
		success: function(data){
			var data = eval('(' + data + ')');
			$.each(data, function (i, d) {
				d.id = d.userId;
				d.text = d.realname;
			});
			
			$('#' + selectId).empty();
            $('#' + selectId).select2({
            	data: data,
            	language: "zh-CN", //设置提示语言
                width: "100%", //设置下拉框的宽度
                placeholder: '请选择货管员',
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
	return new Date(value).Format('yyyy-MM-dd HH:mm:ss');
}

function statusFormatter(value,row,index) {
	if(value==true){
        return '<i class="fa fa-arrow-up" style="cursor:pointer;color:green" title="在售"></i>';
    }else if(value==false){
        return '<i class="fa fa-arrow-down" style="cursor:pointer;color:red" title="卖出"></i>';
    }else{
        return ''
    }
}

function isHotFormatter(value,row,index) {
	if(value==true){
        return '<i class="fa fa-fire" style="cursor:pointer;color:red" title="热卖"></i>';
    }else if(value==false){
        return '<i class="fa fa-fire" style="cursor:pointer;color:grey"></i>';
    }else{
        return ''
    }
}

function priceFormatter(value,row,index) {
	return '<i class="fa fa-jpy"></i> ' + value;
}

function discountPriceFormatter(value,row,index) {
	return '<i class="fa fa-jpy" style="color:purple"></i> ' + '<span style="color:purple">' + value + '</span>';
}

function operateFormatter(value,row,index) {
	return '<i onclick="showDetail(' + index + ')" class="glyphicon glyphicon-pencil" style="cursor:pointer;color:purple;" title="修改"></i>';
}

function showDetail(index) {
	console.log(index);
}


