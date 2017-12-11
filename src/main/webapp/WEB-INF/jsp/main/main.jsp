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
        /* .leftMenu .menu-item-left:hover{background:#C4E3F3;border:1px solid #1E90FF;} */
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
                        <h4 class="panel-title"> 商品交易 <span class="glyphicon glyphicon-chevron-up right"></span></h4>
                    </div>
                    <!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
                    <div id="listGroup1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="productManager">
                    	<ul class="list-group">
                    		<!-- 利用data-target指定URL -->
                    		<li class="list-group-item" data-target="">
                              <button class="menu-item-left">
                                  <span class="glyphicon glyphicon-inbox"></span>  仓库管理
                              </button>
                            </li>
                            <li class="list-group-item"  data-target="">
                              <button class="menu-item-left">
                                  <span class="glyphicon glyphicon-gift"></span>  商品管理
                              </button>
                            </li>
                    	</ul>
                    </div>
    			</div>
    			<div class="panel panel-primary leftMenu">
    				<div class="panel-heading" id="sysManager" data-toggle="collapse" data-target="#listGroup2" role="tab" >
                        <h4 class="panel-title"> 系统管理 <span class="glyphicon glyphicon-chevron-up right"></span></h4>
                    </div>
                    <div id="listGroup2" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="sysManager">
                    	<ul class="list-group">
                          	<li class="list-group-item" data-target="">
                            	<button class="menu-item-left">
                                	<span class="glyphicon glyphicon-user"></span>  用户管理
                            	</button>
                          	</li>
                          	<li class="list-group-item" data-target="">
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
    		<div class="jumbotron" id="main">
			  <h1>Hello, world!</h1>
			  <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
			  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
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
        });
    </script>
  </body>
</html>
