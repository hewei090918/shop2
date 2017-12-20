<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>超市货物管理平台</title>
    <jsp:include page="../common/common.jsp" />
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/main.css">
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/main.js"></script>
	<style>
		a{color:#8c7777;}
		a:hover{text-decoration:none;color:#F68A1E;}
        .panel-group{overflow: auto;}
        .leftMenu{margin:10px;margin-top:5px;}
        .leftMenu .panel-heading{font-size:14px;padding-left:20px;height:36px;line-height:36px;color:white;position:relative;cursor:pointer;}/*转成手形图标*/
        .leftMenu .panel-heading span{position:absolute;right:10px;top:12px;}
        .leftMenu .list-group-item:hover{background:#C4E3F3;border:1px solid #1E90FF;}
        .leftMenu .menu-item-left{padding: 2px; background: transparent; border:1px solid transparent;border-radius: 6px;}
        .container .jumbotron, .container-fluid .jumbotron {padding-right: 2px;padding-left: 2px;padding-top: 2px;}
    </style>
  </head>
  
  <body>
  	<div class="container">
   	<nav class="navbar navbar-default">
   		<div class="container-fluid">
	    	<div class="navbar-header">
	      		<a class="navbar-brand" href="#">
	        		<img alt="Brand" src="<%=basePath%>resources/images/logo.png" width="25" height="25">
	      		</a>
	    	</div>
	    	<div class="collapse navbar-collapse">
	    		<h3 class="navbar-text"> 超市货物管理平台 </h3>
	    		<p class="navbar-text navbar-right">欢迎您： <span>admin</span> &nbsp;&nbsp;
	    		<a href="#" class="glyphicon glyphicon-off" title="退出"></a></p>
	    	</div>
	  	</div>
   	</nav>
    <div class="row">
    	<div class="col-md-2">
    		<div class="panel-group table-responsive" role="tablist">
    			<div class="panel panel-primary leftMenu">
    				<!-- 利用data-target指定要折叠的分组列表 -->
                    <div class="panel-heading" id="productManager" data-toggle="collapse" data-target="#listGroup1" role="tab" >
                        <h4 class="panel-title"> 商品管理 <span class="glyphicon glyphicon-chevron-up right"></span></h4>
                    </div>
                    <!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
                    <div id="listGroup1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="productManager">
                    	<ul class="list-group">
                    		<!-- 利用data-target指定URL -->
                    		<li id="store" class="list-group-item" data-target="<%=basePath%>view/productManager/store.jsp" onclick="add(this);">
                              <button class="menu-item-left">
                                  <span class="glyphicon glyphicon-inbox"></span>  库存管理
                              </button>
                            </li>
                            <li id="product" class="list-group-item"  data-target="<%=basePath%>view/productManager/product.jsp" onclick="add(this);">
                              <button class="menu-item-left">
                                  <span class="glyphicon glyphicon-gift"></span>  商品管理
                              </button>
                            </li>
                    	</ul>
                    </div>
    			</div>
    			<div class="panel panel-primary leftMenu">
    				<!-- 利用data-target指定要折叠的分组列表 -->
                    <div class="panel-heading" id="saleManager" data-toggle="collapse" data-target="#listGroup2" role="tab" >
                        <h4 class="panel-title"> 销售管理 <span class="glyphicon glyphicon-chevron-up right"></span></h4>
                    </div>
                    <!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
                    <div id="listGroup2" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="saleManager">
                    	<ul class="list-group">
                    		<li id="supplier" class="list-group-item" data-target="<%=basePath%>view/saleManager/supplier.jsp" onclick="add(this);">
                              <button class="menu-item-left">
                                  <span class="glyphicon glyphicon-phone-alt"></span>  供应商管理
                              </button>
                            </li>
                    		<li id="purchase" class="list-group-item" data-target="<%=basePath%>view/saleManager/purchase.jsp" onclick="add(this);">
                              <button class="menu-item-left">
                                  <span class="glyphicon glyphicon-shopping-cart"></span>  采购管理
                              </button>
                            </li>
                            <li id="member" class="list-group-item"  data-target="<%=basePath%>view/saleManager/member.jsp" onclick="add(this);">
                              <button class="menu-item-left">
                                  <span class="glyphicon glyphicon-credit-card"></span>  会员管理
                              </button>
                            </li>
                            <li id="order" class="list-group-item"  data-target="<%=basePath%>view/saleManager/order.jsp" onclick="add(this);">
                              <button class="menu-item-left">
                                  <span class="glyphicon glyphicon-tasks"></span>  订单管理
                              </button>
                            </li>
                    	</ul>
                    </div>
    			</div>
    			<div class="panel panel-primary leftMenu">
    				<div class="panel-heading" id="sysManager" data-toggle="collapse" data-target="#listGroup3" role="tab" >
                        <h4 class="panel-title"> 系统管理 <span class="glyphicon glyphicon-chevron-up right"></span></h4>
                    </div>
                    <div id="listGroup3" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="sysManager">
                    	<ul class="list-group">
                          	<li id="user" class="list-group-item" data-target="<%=basePath%>view/sysManager/user.jsp" onclick="add(this);">
                            	<button class="menu-item-left">
                                	<span class="glyphicon glyphicon-user"></span>  员工管理
                            	</button>
                          	</li>
                          	<li id="dept" class="list-group-item" data-target="<%=basePath%>view/sysManager/dept.jsp" onclick="add(this);">
                            	<button class="menu-item-left">
                                	<span class="glyphicon glyphicon-earphone"></span>  部门管理
                            	</button>
                          	</li>
                          	<li id="role" class="list-group-item" data-target="<%=basePath%>view/sysManager/role.jsp" onclick="add(this);">
                            	<button class="menu-item-left">
                                	<span class="glyphicon glyphicon-lock"></span>  角色管理
                            	</button>
                          	</li>
                        </ul>
                    </div>
    			</div>
    		</div>
    	</div>
    	<div class="col-md-10">
    		<div class="jumbotron">
    			<!-- 导航区 -->
    			<ul class="nav nav-tabs" role="tablist">
    				
    			</ul>
			  	<!-- 面板区 -->  
			  	<div class="tab-content" style="width:100%;">
			  		 
			  	</div>
			</div>
    	</div>
    </div>
    </div>
    <script>
        $(function(){
            $(".panel-heading").click(function(e){
                /*切换折叠指示图标*/
                $(this).find("span").toggleClass("glyphicon-chevron-down");
                $(this).find("span").toggleClass("glyphicon-chevron-up");
            });
            
            var item = {'id':'main','name':'首页','closable':false};
    		closableTab.addTab(item);
        });
        
    	function add(li){
    		var id = $(li).attr('id');
    		var name = $(li).children('button')[0].innerText.trim();
    		var uri = $(li).attr('data-target');
    		var item = {'id':id,'name':name,'url':uri,'closable':true};
    		closableTab.addTab(item);
    	}
    </script>
  </body>
</html>
