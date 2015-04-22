<%@page import="com.dbo.ConnectionManager" %>
<%@page import="com.dbo.point.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
 
    	        
     			 <div id= "CustomBody"align="center">
     			  <table width="990" border="0" cellspacing="0" cellpadding="0">
     			 <tr>
     			 <td width="200" align="center"><span style="font-size:18px">校园景观</span></td>
     			 <td><a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointNavigation.jsp">教学设施</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointS.jsp">运动休闲</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointF.jsp">校园景观</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/background/Selete.jsp">景观管理</a>
     			 </td>
     			 </tr>
     			 </table>
     			 <HR>
     			 
     		
     			  
     			 
     			 <table width="450px" height="200px">
     			 
     			 <tr>
     			 <% 
     			 request.setCharacterEncoding("utf-8");
     			 response.setCharacterEncoding("utf-8");
     			 //vector
     			 PointDaoImpl p = new PointDaoImpl();
     			 List<Point> point = p.findAll();
     			 
     			 
     			 for(int index=0 ;index<point.size();index++){
     			 
     			 String name = point.get(index).getName();
     			 String Information = point.get(index).getInformation();
     			 String Images =point.get(index).getImages();
     			 System.out.println("Img*:"+Images);
     			 
     			 %><td>
     			 <div onmouseover="this.style.background='#4FC5F7';" onmouseout="this.style.background='#FFF';" class=CustomBody_type>
     			 
     			 <table width="100%" height ="300px"border="0" cellspacing="0" cellpadding="0"><tr>
     			 <td>
     			 <a href="#" title=" 图书馆">
     			 <img src="<%=Images %>"width="450px" height="200px"border="0"></a></td>
     			 </tr>
     			 <tr>
     			 <td height="22" align="center" valign="middle" style="font-weight:bold"><%=name%></td>
     			 </tr>
     			 <tr>
     			 <td height="44" align="left" valign="middle" >
     			 <%=Information%>   			 
     			 </tr>
     			 </table>
     			 </div>
     			 </td>
     			 <% 
     			 if(index==1||index==3){
     			 %>
     			 </tr>
     			 
     			 <tr>
     			 <%
     				 }
     			 }
     			  %>
     			
     			 
     			 </table>


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

