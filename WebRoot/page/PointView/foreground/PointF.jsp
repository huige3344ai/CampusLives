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
     			 <tr><td width="200" align="center"><span style="font-size:18px">校园景观</span></td>
     			 <td>
     			<a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointNavigation.jsp">教学设施</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointS.jsp">运动休闲</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/foreground/PointF.jsp">校园景观</a>|
     			 <a href="http://localhost:8080/CampusLives/page/PointView/background/Selete.jsp">景观管理</a>
     			 </td>
     			 </tr></table>
     			 <HR>
     			 <%
     			 request.setCharacterEncoding("utf-8");
     			 response.setCharacterEncoding("utf-8");
     			 String sql="select * from Point where num='1'";//
     			 int news=0;
     			 //vector
     			 PointDaoImpl p = new PointDaoImpl();
     			 List<Point> point = p.findAll();
     			 
     			 
     			 for(int index=0 ;index<1;index++){
     			 
     			 String name = point.get(index).getName();
     			 String Information = point.get(index).getInformation();
     			 String Images = point.get(index).getImages();
     			  %>
     			 <p ><%=name%><br><br></p>
     			 <table>
     			 <tr><td>
     			 <img src="<%=Images %>"' alt='none' border=0 width="900px" height="350px"></td>
        		<tr><td>
        		<p><%=Information%>
        		</td></tr></table>
        		 
     			  <% 
     			  
     			 } 			 
	%>
	
	
	
        		<table  width="100%" border="0" align="center" cellpadding="3" cellspacing="1" >
        		<tr><td>
        		<marquee  behavior=alternate ONMOUSEOUT="this.scrollDelay=1" ONMOUSEOVER="this.scrollDelay=600"  scrollamount=1  SCROLLDELAY=1  border=0  scrolldelay=70  width="100%"  align=middle>
        		<a href='#ecms' onclick='GotoPhPage(1);' title='读书岛-月牙湖'>
        		<img src="images/lake1.jpg" alt='读书岛-月牙湖' border=0 width="300px" height="150px"></a>&nbsp;
        		<a href='#ecms' onclick='GotoPhPage(2);' title='学风碑'>
        		<img src="images/lake2.jpg"'alt='学风碑' border=0 width="300px" height="150px"></a>&nbsp;
        		<a href='#ecms' onclick='GotoPhPage(3);'title=''>
        		<img src="images/lake3.jpg"' alt='none' border=0 width="300px" height="150px"></a>
        		&nbsp;<a href='#ecms' onclick='GotoPhPage(4);' title='摄于'></a>
        		</marquee>
        		</td></tr>
        		</table></td></tr>	
        		<tr><td><a href="http://xiao-pc:8080/CampusLives/page/PointView/foreground/PointF.jsp">上一个</a>
        		<a href="http://xiao-pc:8080/CampusLives/page/PointView/foreground/PointS.jsp">下一个</a></centre></td></tr>
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

