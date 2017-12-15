/**
 * user.js
 */

$(function(){
	//加载表格数据
	$('#list_table').bootstrapTable({
        method: 'post',
        url: base + "/user/query.html",
        toolbar: '#toolbar',//工具按钮用哪个容器
        striped: true, 
        queryParamsType:'limit',//查询参数组织方式
        queryParams: queryParams,//传递参数（*）
        sidePagination: "server", //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,//初始化加载第一页，默认第一页
        pagination:true,//是否分页
        pageSize:10,//单页记录数
        pageList:[5,10,20,30],
        showRefresh:false,//刷新按钮
        clickToSelect: true,
        toolbarAlign:'right',
        buttonsAlign:'right',
        height: $(window).height() -280,
        columns:[
            {
                title:'全选',
                field:'select',
                checkbox:true,//复选框
                width:25,
                align:'center',
                valign:'middle'
            }, {
                title:'userId',
                field:'userId',
                visible:false
            }, {
                title:'用户名',
                field:'username',
                visible:true
            }, {
                title:'姓名',
                field:'realname',
                sortable:true
            }, {
                title:'性别',
                field:'gender'
            }, {
                title:'出生日期',
                field:'birthday',
            }, {
                title:'联系方式',
                field:'phone',
            }, {
                title:'职务',
                field:'professionId',
            }, {
                title:'部门',
                field:'deptId'
            }, {
                title:'角色',
                field:'roleId'
            }, {
                title:'锁定',
                field:'locked',
                align:'center',
                formatter:lockedFormatter
            }, {
                title:'操作',
                field:'_oper',
                align:'center',
                formatter:operateFormatter
            }
        ],
        locale:'zh-CN'//中文支持
    })
    
    //请求服务数据时所传参数
    function queryParams(params){
        return{
        	limit: params.limit,//每页多少条数据（页面大小）
            offset: params.offset,//请求第几页（页码）
            username: $('#username').val(),
            realname: $('#realname').val(),
            deptId: $('#deptId').val(),
            roleId: $('#roleId').val()
        }
    }
	
    function lockedFormatter(value,row,index){
        if(value==0){
            return '<i class="fa fa-lock" style="color:red"></i>'
        }else if(value==1){
            return '<i class="fa fa-unlock" style="color:green"></i>'
        }else{
            return 'error'
        }
    }
    
    function operateFormatter(value,row,index) {
		
	}
    
});