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

  <link rel="stylesheet" href="css/main.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/imageflow_main.js"></script>
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
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
               
               
                <div class=suggest_nav>                
                	<div class="suggest_nav_l">
                		<div class="suggest_nav_r">
                			<h3>投诉和建议</h3>
                		</div>
                	</div>
                </div>	
                
                <div id ="suggest">

                <form action="/CampusLives/servlet/SuggestServlet" method="post">
                
                <div class="your_name">
                <label class="name_label">怎么称呼你？</label><br/>
                <input  class="your_name_input" type="text" name="sumbit_name" value="<%=session.getAttribute("uname")%>"></input>
                </div>
                
                <div class="your_suggest">
                <label class="suggest_label">你的建议有啥就说啥，反正我们不会改才怪！！！</label>
                 <textarea  class="suggest_input"  name="suggestion_textarea" ></textarea>
                </div>
 		
                	<input class="sumbit_button" type="submit" value="提交" style="cursor:auto"/>
                	
                	
                </form>
               			<div class="tissue">
				<%	
				String result = (String)request.getAttribute("suggestion_tissue");				
				if(result=="true"){
				result="提交成功，等待管理员回复！";
				}else{
				result="";
				}
				%>
				<%=result%>
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
