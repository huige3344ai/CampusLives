<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<jsp:useBean id ="insert" scope = "page" class="com.bean.lostmessage"></jsp:useBean>
<jsp:setProperty name ="insert" property="*" />


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>My JSP 'lostsuccess.jsp' starting page</title>
  </head>
  <body>          
  <fieldset >
<legend align="center" ><h1>递交成功</h1></legend>
  <h3>失者姓名：<jsp:getProperty property="lostername" name="insert"/><br></h3>
    <h3>失物名称： <jsp:getProperty property="lostname" name="insert"/><br></h3>
        <h3>失物详细信息：  <jsp:getProperty property="description" name="insert"/><br></h3>
              <h3>失者地址： <jsp:getProperty property="address" name="insert"/><br></h3>
                   <h3>失者电话： <jsp:getProperty property="tel" name="insert"/><br></h3>
                <form action ="checkservlet" method = "post">
                  <center> <input type = "submit" style="width:200px;height:40px;"  value ="返回操作界面" name = "submit"/></center>
                  </form>
    	</fieldset>
  </body>
</html>
