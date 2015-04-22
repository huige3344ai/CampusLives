<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
<style type="text/css">
.body{background:url("../images/login/homebg.png") repeat center top;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
  </head>
  
  <body style="background:#D6E4FF;">
    <div id="logout" style=" text-align:center;">
    	
    	  <%
      request.setCharacterEncoding("utf-8");
	  response.setCharacterEncoding("utf-8");  
      response.setHeader("refresh","2000;URL = /CampusLives/LoginServlet");  //=========
      String a_result= request.getAttribute("a_result").toString();
  		  %>
  		  <h3><%=a_result %></h3>
 		<h3>如果没有自动跳转，请点击<a href="/CampusLives/page/foreground/love_activity.jsp">这里</a></h3>
    	
    </div>
  </body>
</html>
