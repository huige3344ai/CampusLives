<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dbo.ConnectionManager" %>
<%@page import="com.dbo.point.*" %>
<%@ page import="java.util.*" %> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <base href="<%=basePath%>"/>
    
    <title>校园服务网站</title>
	
	

<link rel="stylesheet" href="css/main_view.css" type="text/css"></link>  
  <script type="text/javascript"">
    
    function validate()
    {
    var num = document.forms[0].num.value;
    var name = document.forms[0].name.value;
    var Information = document.forms[0].Information.value;
    var Images = document.forms[0].Images.value;
    if(id <= 0){
    	alert("编号不能为空，请输入编号！");
    	return false;
    }
    else if(name.length <= 0){
    	alert("景观名不能为空，请输入景观名！");
    	return false;
    }
   
    else{
    	return true;
    }
    	//document.getElementById("form").submit();
    }
    </script>
  
  
  </head>
  <body>
  <div id="container" >
  
         <div id="header">
         	
         	<div class="header_band" >
         	<span>北京理工大学珠海学院</span>
         	</div>
         	
         	<div class="header_title" >
         	<strong><span>校园生活服务网站</span></strong>
         	</div>     
         	</div>
         	
         <div id="body">
         
    	         <div id="nav">
                       <ul>
                       		<li>
                       				<a href="page/foreground/main.jsp">主页 </a>
                       				
                       		</li>
                       		<li>
                       				<a href="page/PointView/foreground/PointNavigation.jsp">校园美景</a>
                       				
                       		</li>
                       		<li>
                       				<a href="page/foreground/food/FoodNetwork.jsp">校园美食</a>
                       				
                       		</li>
                       		<li>
                       				<a href="checkservlet">失物招领</a>
                       				
                       				
                       		</li>
                       		<li>
                       				<a href="LoginServlet">爱心活动</a>
                       				
                       		</li>
                       		
                        	<li>
                       				<a href="JudgeIsAdmin">投诉建议</a>
                       				 
                       		</li> 
                       		                           		
                       		<li>
                       				
                       				<a href="page/foreground/regist.jsp" >修改密码</a>
                       				 
                       		</li>

                       		
                       </ul>
                <div class = "user">
                        
                 <%=session.getAttribute("uname")%>,<a href="page/foreground/logout.jsp">注销</a>
                	                		
                 </div>   
                </div>
 
    	        
     			 <div id= "CustomBody"align="center">
     			  <table width="990" border="0" cellspacing="0" cellpadding="0">
     			 <tr>
     			 <td width="200" align="center"><span style="font-size:18px">景观管理</span></td>
     			 <td><a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointNavigation.jsp">教学设施</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointS.jsp">运动休闲</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointF.jsp">校园景观</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/background/Selete.jsp">景观管理</a></td>
     			 </tr>
     			 </table>
     			 <HR>
     			 <div id ="SideBody">
     			 <div class="SideBody_up">
     			 <table>
     			 <tr><td>welcome</td></tr>
     			 <tr><td>
     			 <img src="images/lake1.jpg" width="185px" height="150px">
     			 </td></tr>
     			 </table>
     			 </div>
     			 <div class="SideBody_down">
     			 <form>
     			 <fieldset>
     			 <legend>管理员基本信息</legend>
     			 <table>
     			 <tr><td>&nbsp</td></tr>
     			 <tr><td>&nbsp</td></tr>
     			 <tr><td>&nbsp</td></tr>
     			 <tr><td>
     			 <input name="hi" type="button" value="个人信息" onClick="window.location.href='#' ">
     			 </input>
     			 </td></tr>
     			 <tr><td>
     			 <input name="hi" type="button" value="权限信息" onClick="window.location.href='#' ">
     			 </input>
     			 </td></tr>
     			 <tr><td>
     			 <input name="hi" type="button" value="技术支持" onClick="window.location.href='#' ">
     			 </input>
     			 </td></tr>
     			 </table>
     			 </fieldset>
     			 </form>
     			 </div>
     			 </div>
     			 <div id="MainBody">
     			 <h3>景观管理</h3>
     			       
     			 <form action="PointAddServlet"method="post" id="form" >
     			 <fieldset>
     			 <legend>景点基本信息</legend>
     			 <table>
     			 <tr><td>&nbsp</td></tr>
     			 <tr><td>&nbsp</td></tr>
     			 <tr><td>&nbsp</td></tr>
     			 <tr><td>
     			 景点编号：
     			 </td>
     			 <td><input name="num" value="" type="text" style="width:450px; height:auto; ">
     			 </input></td>
     			 </tr>
     			 <tr><td>
     			 景点名称：
     			 </td>
     			 <td><input name="name" type="text" style="width:450px; height:auto; ">
     			 </input></td>
     			 </tr>
     			 <tr><td>
     			 景点名称：
     			 </td>
     			 <td>
     			 <input type="text" name = "Information"  style="width:450px; height:300px; ">
     			 </input>
     			 </td></tr>
     			 <tr><td>
     			 图片地址：
     			 </td>
     			 <td><input name="Images" type="text" style="width:450px; height:auto; ">
     			 </input></td>
     			 </tr>
     			 </table>
     			 <table>
     			  <tr>
     			 <td>
     			 <input name="hi" type="submit" value="添加" ></input></td><td>
     			 <input name="hi" type="reset" value="清空" ></input>
     			 </td>
     			 </tr>
     			 </table>
     			 </fieldset>
     			 </form>
     			 </div>
         </div>
         
            
         
         <div id="footer" align="center">
         	<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
         	<br/>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
         	</div>
         </div>
  </div>
  </div>
  </body>
</html>

