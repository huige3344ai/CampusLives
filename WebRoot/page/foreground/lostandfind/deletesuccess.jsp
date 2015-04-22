<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deletesuccess.jsp' starting page</title>
    

  </head>
  
  <body>
    <fieldset >
 				<center><h1>删除成功，请点击按钮返回！</h1></center>
                <form action ="checkservlet" method = "post">
                  <center> <input type = "submit" style="width:200px;height:40px;"  value ="返回操作界面" name = "submit"/></center>
                  </form>
    	</fieldset> <br>
  </body>
</html>
