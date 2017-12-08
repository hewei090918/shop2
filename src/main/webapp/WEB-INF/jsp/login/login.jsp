<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页</title>
    <jsp:include page="../common/common.jsp" />
    
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/login/css/login.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/login/css/style.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/login/css/animate-custom.css" />
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/login.js"></script>

  </head>
  
  <body>
     <div class="container">
           <!-- Codrops top bar -->
           <header>
               <h1><span>超市货物信息管理平台</span></h1>
			<nav class="codrops-demos">
			</nav>
           </header>
           <section>				
               <div id="container_demo">
                   <div id="wrapper">
                       <div id="login" class="animate form">
                           <form action="<%=path%>/access/login.html" autocomplete="on"> 
                               <h1>用户登录</h1> 
                               <p> 
                                   <label for="username" class="uname" data-icon="u" > 用户名或邮箱 </label>
                                   <input id="username" name="username" required="required" type="text" placeholder="username or email"/>
                               </p>
                               <p> 
                                   <label for="password" class="pwd" data-icon="p"> 密码 </label>
                                   <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                               </p>
                               <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping"/> 
									<label for="loginkeeping">记住我</label>
							   </p>
                               <p class="login button">  
                               		<input type="submit" value="登录" /> 
							   </p>
                               		<p class="change_link">
							   </p>
                           </form>
                       </div>
                   </div>
               </div>  
           </section>
       </div>
  </body>
</html>
