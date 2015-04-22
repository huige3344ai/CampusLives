<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dbo.ConnectionManager" %>
<%@page import="com.dbo.point.*" %>
<%@ page import="java.util.*" %> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <base href="<%=basePath%>"/>
    
    <title>校园服务网站</title>
	
	

<link rel="stylesheet" href="css/main_view.css" type="text/css"></link>  

  
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
     			       
     			 <table width ="300" height="150">
     			 <tr><td>&nbsp</td><td>&nbsp</td></tr>
     			 <tr><td>&nbsp</td><td>&nbsp</td></tr>
     			 <tr>
     			 <td><a href="http://localhost:8080/CampusLives/page/PointView/background/PointSearch.jsp"><img src="images/P1.jpg" width="250" height="125"></img>
     			 </a></td>
     			 <td><a href="http://localhost:8080/CampusLives/page/PointView/background/PointAdd.jsp"><img src="images/P2.jpg" width="250" height="125"></img>
     			 </a></td>
     			 </tr>
     			 <tr>
     			 <td><a href="http://localhost:8080/CampusLives/page/PointView/background/PointSearch	.jsp"><img src="images/P3.jpg" width="250" height="125"></img>
     			 </a></td>
     			 <td><a href="http://localhost:8080/CampusLives/page/PointView/background/PointShow.jsp"><img src="images/P4.jpg" width="250" height="125"></img>
     			 </a></td>
     			 </tr>
     			 </table>
     			 
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
