/**
 * store.js
 */

$(function(){
	
	//初始化下拉框（用于商品类别选择）
	$.ajax({
		url: base + "/commodityType/getList.html",
		success: function(data){
			var data = eval('(' + data + ')');
			$.each(data, function (i, d) {
				d.id = d.typeId;
				d.text = d.typeName;
			});
			
			$('#commodityTypeSelect0').empty();
            $('#commodityTypeSelect0').select2({
            	data: data,
            	language: "zh-CN", //设置提示语言
                width: "100%", //设置下拉框的宽度
                placeholder: '请选择类别',
                allowClear: true
            });
            
            $('#commodityTypeSelect0').val(null).trigger("change");
            
            $("#commodityTypeSelect0").on("select2:select",function(){  
                $("#commodityType0").val($(this).val());  
            });  
            
            $("#commodityTypeSelect0").on("select2:unselect",function(){
                $("#commodityType0").val('');  
            }); 

		}
	});
	
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
            	title:'commodityType',
                field:'commodityType',
                visible:false
            }, {
                title:'商品类别',
                field:'commodityTypeName',
                width:100
            }, {
                title:'售罄',
                field:'soldOut',
                width:50,
                align:'center',
                formatter: soldOutFormatter
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
                title:'详情',
                field:'_detail',
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
            commodityName: $('#commodityName0').val(),
            commodityType: $('#commodityType0').val(),
            soldOut: $('input[name="soldOut"]:checked').val()
        }
    }
	
	function refreshTable(){
		$('#storageList_table').bootstrapTable('refresh');
	}
	
	//查询按钮事件
    $('#btn_storage_query').click(function(){
    	refreshTable();
    });
    
    $('#btn_storage_reset').click(function(){
    	//Hidden值重置
    	$("#commodityType0").val('');
    	//表单值重置
    	$('#storage_search_form')[0].reset();
    	//下拉框重置
    	$('#commodityTypeSelect0').val(null).trigger("change");
    });
    
});

function dateFormatter(value) {
	return new Date(value).Format('yyyy-MM-dd HH:mm:ss');
}

function soldOutFormatter(value,row,index) {
	if(value==true){
        return '<i class="fa fa-check" style="cursor:pointer;color:green" title="售罄"></i>';
    }else if(value==false){
        return '<i class="fa fa-times" style="cursor:pointer;color:red" title="未售罄"></i>';
    }else{
        return ''
    }
}

function operateFormatter(value,row,index) {
	return '<i onclick="showDetail(' + index + ')" class="glyphicon glyphicon-list" style="cursor:pointer;color:purple;" title="查看详情"></i>';
}

function showDetail(index) {
	console.log(index);
}


