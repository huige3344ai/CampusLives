<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>修改密码</title>

  <link rel="stylesheet" href="css/login.css" type="text/css"></link>
  <script type="text/javascript" src="js/main_regist.js"></script>
  
  </head>
  
  <body>
    <div class="dataEye">
	<div class="loginbox">

		<div class="login-content">
			<div class="loginbox-title">
				<h3>修改密码</h3>
			</div>
			<form id="signupForm" action="/CampusLives/servlet/ExchagePasswrodSerlvet" method="post">
			<div class="login-error"></div>
			<div class="row">
				<%
				String uid = (String)session.getAttribute("email");
				if(uid==null){
				response.sendRedirect("/CampusLives/page/foreground/logout.jsp");
				}
				%>
				<label class="field" id="text_user"  ></label>
				<input type="text" class="input-text-user input-click" name="email" id="email" value="<%=session.getAttribute("email")%>">
			</div>
			<div class="row">
				<label class="field" id="text_password" >旧密码</label>
				<input type="password" class="input-text-password input-click" name="password" id="password" >
			</div>
			<div class="row">
				<label class="field" id="text_password_1" >新密码</label>
				<input type="password" class="input-text-password input-click" name="password_correct" id="password_1" >
			</div>			
			<div class="row btnArea">
				<input class="login-btn"  type="submit" value="确认修改"  onClick="return validateLogin()"></input>
			</div>
			<div class="row btnArea">
				<input class="login-btn_cancel"  type="submit" value="取消修改"  onClick="javascript:window.history.back();"></input>
			</div>			
			<div class="tissue">
				<%	
				String result = (String)request.getAttribute("message");
				if(result=="false"){
				result="旧密码不正确！！！";
				}else{
				result="注意:新旧密码不能一致";
				}
				%>
				<%=result%>
			</div>
			</form>
		</div>

	</div>
	
<div id="footer">

</div>

</div>
  </body>
</html>
