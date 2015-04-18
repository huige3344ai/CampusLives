<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>正在注销......</title>
    
<style type="text/css">
.body{background:url("../images/login/homebg.png") repeat center top;}
</style>

  </head>
  
  <body style="background:#D6E4FF;">
    <div id="logout" style=" text-align:center;">
    	<h3>您已成功推出本系统，两秒钟后跳转到登陆页!!!</h3>
    	  <%
   response.setHeader("refresh", "2; URL = /CampusLives/page/foreground/login.jsp");  // 定时跳转
   session.removeAttribute("email");
   session.removeAttribute("password");
   session.invalidate(); // 注销 session 
  		  %>
 		<h3>如果没有自动跳转，请点击<a href="/CampusLives/page/foreground/login.jsp">这里</a></h3>
    	
    </div>
  </body>
</html>
