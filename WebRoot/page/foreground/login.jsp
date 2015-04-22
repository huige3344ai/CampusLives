<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>"/>
<title>登录</title>
<script type="text/javascript" src="js/main_login.js"></script>
<link rel="stylesheet" href="css/login.css" type="text/css"></link>

</head>
<body >
<div class="dataEye">
	<div class="loginbox">

		<div class="login-content">
			<div class="loginbox-title">
				<h3>登录</h3>
			</div>
			<form id="signupForm" action="/CampusLives/servlet/LoginCheck" method="post">
			
			<div class="row">
				<label class="field" id="text_user"  >用户名</label>
				<input type="text" class="input-text-user input-click" name="email" id="email">
			</div>
			<div class="row">
				<label class="field" id="text_password">密码</label>
				<input type="password" class="input-text-password input-click" name="password" id="password" >
			</div>
			<div class="row btnArea">
				<input class="login-btn"  type="submit" value="登录"  onClick="return validateLogin()" style="cursor:auto"></input>
			</div>

			</form>
			<div class="tissue">
				<%	
				String result = (String)request.getAttribute("message");				
				if(result=="false"){
				result="密码或者用户名不正确";
				}else if(result=="success_ex"){
				result="修改密码成功，请重新登录";				
				}else if(result=="logout")
				{
				result="您已经退出登录，请重新登录！！！";
				}else{
				result="输入用户名或者密码";
				}
				%>
				<%=result%>
			</div>
		</div>

	</div>
	
<div id="footer">



</div>

</div>

</body>
</html>
