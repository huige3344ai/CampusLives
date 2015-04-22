<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dbo.ConnectionManager" %>
<%@page import="com.dbo.point.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <base href="<%=basePath%>"/>
    
    <title>校园服务网站</title>
	
	

<link rel="stylesheet" href="css/main_view.css" type="text/css"></link>  </head>
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
 
    	        
     			
     			 <div id= "CustomBody" align="center">
     			  <table width="990" border="0" cellspacing="0" cellpadding="0">
     			 <tr>
     			 <td width="200" align="center"><span style="font-size:18px">景观管理</span></td>
     			 <td><a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointNavigation.jsp">教学设施</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointS.jsp">运动休闲</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointF.jsp">校园景观</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/background/Selete.jsp">景观管理</a></td>
     			 </tr>
     			 </table>
     			 
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
     			 
     			  
     			 
     			 <fieldset>
     			 <legend>景点基本信息</legend>
     			 <table>
     			
     			<%
     			 request.setCharacterEncoding("utf-8");
     			 response.setCharacterEncoding("utf-8");
     			 //vector
     			 PointDaoImpl p = new PointDaoImpl();
     			 List<Point> point = p.findAll();
     			 
     			 
     			 for(int index=0 ;index<point.size();index++){
     			 
     			 String num = point.get(index).getNum();
     			 String name = point.get(index).getName();
     			 String Information = point.get(index).getInformation();
     			 String Images = point.get(index).getImages();
     			  %>
     			  <table width="600"height="100">
     			  	<tr>
     			  		<td width="100"height="auto">编号:
     			  		<%=num%>
     			  		</td>
      			  		<td width="150"height="auto">景观名字：
     			  		<%=name%>
     			  		</td>   
     			  		<td width="300"height="auto">简介:
     			  		<%=Information%>
     			  		</td>
      			  		<td>图片地址:
     			  		<%=Images%>
     			  		</td>  			  		
     			  	</tr>
     			  </table>
     			  
     			  <% 
     			  
     			 } 			 
	%>
     			 
     			 </table>
     			 <form action="PointDeleteServlet" method="post" id="form">
     			 <table>
     			  <tr>
     			 <td>
     			 <input name="num" type="text" ></input>
     			 <input name="hi" type="submit" value="删除" ></input></td><td>
     			 <input name="hi" type="reset" value="清空" ></input></td><td>
     			 </td>
     			 </tr>
     			 </table>
     			 </form>
     			 </fieldset>
     			 
     			 <a href=http://localhost:8080/CampusLives/page/PointView/background/PointAdd.jsp>
    返回添加信息页面</a>   
    <a href=http://localhost:8080/CampusLives/page/PointView/background/PointSearch.jsp>进入信息查询页面</a>
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

