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
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/login/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/login/css/style.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/login/css/animate-custom.css" />
	<!-- JS -->
	<script type="text/javascript" src="<%=basePath%>resources/js/login.js"></script>

  </head>
  
  <body>
     <div class="container">
           <!-- Codrops top bar -->
           <header>
               <h1>Login and Registration Form <span>with HTML5 and CSS3</span></h1>
			<nav class="codrops-demos">
				<span>Click <strong>"Join us"</strong> to see the form switch</span>
				<a href="index.html" class="current-demo">Demo 1</a>
				<a href="index2.html">Demo 2</a>
				<a href="index3.html">Demo 3</a>
			</nav>
           </header>
           <section>				
               <div id="container_demo" >
                   <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                   <a class="hiddenanchor" id="toregister"></a>
                   <a class="hiddenanchor" id="tologin"></a>
                   <div id="wrapper">
                       <div id="login" class="animate form">
                           <form  action="#" autocomplete="on"> 
                               <h1>Log in</h1> 
                               <p> 
                                   <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                   <input id="username" name="username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                               </p>
                               <p> 
                                   <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                   <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                               </p>
                               <p class="keeplogin"> 
								<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
								<label for="loginkeeping">Keep me logged in</label>
							</p>
                               <p class="login button"> 
                                   <input type="submit" value="Login" /> 
							</p>
                               <p class="change_link">
								Not a member yet ?
								<a href="#toregister" class="to_register">Join us</a>
							</p>
                           </form>
                       </div>

                       <div id="register" class="animate form">
                           <form  action="#" autocomplete="on"> 
                               <h1> Sign up </h1> 
                               <p> 
                                   <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                   <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" />
                               </p>
                               <p> 
                                   <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                   <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                               </p>
                               <p> 
                                   <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                   <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                               </p>
                               <p> 
                                   <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                   <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                               </p>
                               <p class="signin button"> 
								<input type="submit" value="Sign up"/> 
							</p>
                               <p class="change_link">  
								Already a member ?
								<a href="#tologin" class="to_register"> Go and log in </a>
							</p>
                           </form>
                       </div>
					
                   </div>
               </div>  
           </section>
       </div>
  </body>
</html>
