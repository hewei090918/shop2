/**
 * dept.js
 */

$(function(){
	
	$('#tt').treegridData({
        id: 'deptId',
        parentColumn: 'parentId',
        type: "GET", //请求数据的ajax类型
        url: base + '/dept/query.html',   //请求数据的ajax的url
        ajaxParams: {}, //请求数据的ajax的data属性
        expandColumn: null,//在哪一列上面显示展开按钮
        striped: true,   //是否各行渐变色
        bordered: true,  //是否显示边框
        expandAll: false,  //是否全部展开
        columns: [
            {
                title: '部门名称',
                field: 'deptName'
            }, {
                title: '部门编码',
                field: 'deptCode'
            }, {
            	title: '部门描述',
            	field: 'deptDesc'
            }
        ]
    });
	
});