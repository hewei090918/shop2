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
        dataField: "data",//修改后端分页集合键值rows为data
        queryParamsType:'limit',//查询参数组织方式
        queryParams: queryParams,//传递参数（*）
        sidePagination: "server", //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,//初始化加载第一页，默认第一页
        pagination:true,//是否分页
        pageSize:10,//单页记录数
        pageList:[5,10,20,30],
        showRefresh:false,//刷新按钮
        clickToSelect: true,
//        toolbarAlign:'right',
//        buttonsAlign:'right',
        height: $(window).height() -300,
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
                field:'gender',
                align:'center',
                formatter:genderFormatter
            }, {
                title:'出生日期',
                field:'birthday',
                formatter:dateFormatter
            }, {
                title:'联系方式',
                field:'phone'
            }, {
                title:'职务',
                field:'professionName'
            }, {
            	title:'deptId',
                field:'deptId',
                visible:false
            }, {
                title:'部门',
                field:'deptName'
            }, {
            	title:'roleId',
                field:'roleId',
                visible:false
            }, {
                title:'角色',
                field:'roleName'
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
	
	//查询按钮事件
    $('#btn_query').click(function(){
        $('#list_table').bootstrapTable('refresh', {url: base + '/user/query.html'});
    })
    
});

//转换时间格式
Date.prototype.Format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1, //月份 
        "d+": this.getDate(), //日 
        "H+": this.getHours(), //小时 
        "m+": this.getMinutes(), //分 
        "s+": this.getSeconds(), //秒 
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
        "S": this.getMilliseconds() //毫秒 
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}

function dateFormatter(value) {
	return new Date(value).Format('yyyy-MM-dd');
}

function genderFormatter(value,row,index) {
	if(value==true){
        return '<i class="fa fa-male" style="color:green"></i>';
    }else if(value==false){
        return '<i class="fa fa-female" style="color:purple"></i>';
    }else{
        return ''
    }
}

function lockedFormatter(value,row,index) {
    if(value==true){
        return '<i class="fa fa-lock" style="color:red"></i>';
    }else if(value==false){
        return '<i class="fa fa-unlock" style="color:green"></i>';
    }else{
        return ''
    }
}

function operateFormatter(value,row,index) {
	return '<i onclick="showDetail(' + index + ')" class="glyphicon glyphicon-pencil" style="cursor:pointer;"></i>';
}

function showDetail(index) {
	console.log(index);
}


