/**
 * role.js
 */

$(function(){
	
	//加载表格数据
	$('#roleList_table').bootstrapTable({
//        method: 'post',
        contentType: "application/x-www-form-urlencoded",
        url: base + "/role/queryPage.html",
        toolbar: '#role_toolbar',//工具按钮用哪个容器
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
                title:'roleId',
                field:'roleId',
                visible:false
            }, {
                title:'角色名',
                field:'roleName',
                width:120,
                sortable:true
            }, {
                title:'管理员',
                field:'isAdmin',
                width:60,
                align:'center',
                formatter:adminFormatter
            }, {
                title:'描述',
                field:'roleDesc'
            }, {
                title:'操作',
                field:'_oper',
                width: 60,
                align:'center',
                formatter:roleOperateFormatter
            }
        ],
        locale:'zh-CN'//中文支持
    })
    
    //请求服务数据时所传参数
    function queryParams(params){
        return{
        	limit: params.limit,//页面大小（每页最多显示多少条数据）
            offset: params.offset,//请求当前页起始数
            roleName: $('#roleName').val(),
            isAdmin: $('input[name="isAdmin"]:checked').val()
        }
    }
	
	function refreshTable(){
		$('#roleList_table').bootstrapTable('refresh');
	}
	
	//查询按钮事件
    $('#btn_role_query').click(function(){
    	refreshTable();
    });
    
    $('#btn_role_reset').click(function(){
    	//表单值重置
    	$('#role_search_form')[0].reset();
    });
    
    //新增按钮事件
    $('#btn_role_add').click(function(){
        
    });
    
    //删除按钮事件
    $('#btn_role_delete').click(function(){
        var rows = $('#roleList_table').bootstrapTable('getSelections');
        console.log(rows);
        if(rows.length == 0) {
        	toastr.warning('您尚未选择任何记录!');
        	return;
        }else {
        	var array = [];
        	$.each(rows, function(index, row) {
        		array.push(row.userId);
        	});
        	var ids = array.join(",");
        	$.ajax({
        		type: 'POST',
        		url: base + '/role/deleteRole.html',
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

function adminFormatter(value,row,index) {
	if(value==true){
        return '是';
    }else if(value==false){
        return '否';
    }else{
        return ''
    }
}

function roleOperateFormatter(value,row,index) {
	return '<i onclick="showRoleDetail(' + index + ')" class="glyphicon glyphicon-pencil" style="cursor:pointer;color:purple;" title="修改"></i>';
}

function showRoleDetail(index) {
	console.log(index);
}


