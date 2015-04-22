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
	
	

  <link rel="stylesheet" href="css/lostandfindmain.css" type="text/css"></link>
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
 <div id="contents">               
        <div id="usermessage"> 
        <div id = "headphoto"><img src="images/head sculpture.jpg"></div>
     <center> <%= session.getAttribute("uname") %></center>
        <div id ="service">
             <fieldset > 
       <legend align="center" ><h3>可选服务</h3></legend>
        <form action ="page/foreground/lostandfind/find.jsp" method = "post">
        <center> <input type = "submit" style="width:200px;height:40px;"  value ="拾到物登记" name = "find"/></center>
        </form>
        
         <form action ="page/foreground/lostandfind/lost.jsp" method = "post">
      <center>   <input type = "submit" style="width:200px;height:40px;"  value ="失物登记" name = "lost"/></center>
        </form>
        
         <form action ="page/foreground/lostandfind/searchfind.jsp" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="拾到物搜寻" name = "searchfind"/></center>
        </form>
        
       <form action ="page/foreground/lostandfind/searchlost.jsp" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="失物搜寻" name = "searchlost"/></center>
        </form>

       <form action ="page/foreground/lostandfind/personal.jsp" method = "post">
     <center>  <input type = "submit" style="width:200px;height:40px;"  value ="个人发布记录" name = "personal"/></center>
        </form>
        </fieldset>
        </div>
        </div><div id="findandlost">
               <br>
           <br>
          <fieldset >
<legend align="center" ><h2>失物登记</h2></legend>
<form action ="lostservlet" method = "post"> 
<h3>失物名称：<input type = "text" name="lostname" style="width:300px;height:30px;"/> </h3>
<br>
<br>
<h3>失者姓名：<input type = "text" name="lostername" style="width:300px;height:30px;"/> </h3>
<br>
<br>
<h3>失物详细信息：（不超过100字）<input type="text" name="description"  style="width: 100%; height: 100px"/></h3>
<br>
<br>
<h3>失者地址：<input type = "text" name="address" style="width:100%;height:30px;"/> </h3>
<br>
<br>
<h3>失者电话：<input type = "text" name="tel" style="width:300px;height:30px;"/> </h3>
<br>
<br>
<br>
<br><input type="text" name="promulgator" readonly="readonly"  value="<%= session.getAttribute("uname") %>"/>
<center> 
<input type = "submit" style="width:200px;height:40px;"  value ="递交信息" name = "submit"/></center></form>
  </fieldset>
        
        
        
        
        
        
        
        
        
        
        </div>    
                
                
                
                
         </div>       
     				
         </div>
         
            
         
         <div id="footer">
         	<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
         	<br/>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
         	</div>
         </div>
  </div>
  </body>
</html>
