<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
  <base href="<%=basePath%>"/>
   <%@page import ="com.dbo.*"
   import="java.sql.*"%>
    
    <title>校园美食</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


	<style type="text/css">a:link,a:visited{ text-decoration:none;  /*超链接无下划线*/}a:hover{ text-decoration:underline;  /*鼠标放上去有下划线*/}</style>
	
  		
  	
  <link rel="stylesheet" href="css/text.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/imageflow.js"></script>
  
  
  </head>
  
 <body>
	<div id="continer">
    	<div class="header_nav">
    			<div class="header_bg">
    	    <div class="header_band" >
         	<span>北京理工大学珠海学院</span>
         	</div>        	
         	<div class="header_title" >
         	<strong><span>校园生活服务网站</span></strong>
         	</div> 
    			</div>
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
 
         	
    	</div>   
    	
    	             
    	<div id="header">
    	         	


                
    	<img alt="head" src="images/food/image.png">
        </div>
        
        
        <div id="text">
        	<h1><strong>北京理工大学珠海学院</strong></h1>
			<p class="STYLE1">北京理工大学珠海学院座落在美丽的珠海市。珠海环境优美，气候宜人，东与香港隔海相望，南与澳门陆路相连，是联合国评定的“最适合人类居住的城市”。</p>
			<p class="STYLE1"> 珠海学院依山傍海，交通便利，京珠高速公路、广珠城际铁路和广东西部沿海高速公路从学院的东北两侧穿过。			  </p>
			<p class="STYLE1">学校占地330多万平方米，绿化面积80%以上，山水相映、鸟语花香，是莘莘学子读书求学的理想之地。</p>
        </div>
        
       	<div id="starsIF" class="imageflow">
		<img src="images/food/1.jpg"  alt="杨颖" />
		<img src="images/food//2.jpg"  alt="霍思燕" />
		<img src="images/food/3.jpg"  alt="马苏" />
		<img src="images/food/4.jpg"  alt="杜淳" />
		<img src="images/food/5.jpg"  alt="冯绍峰" />
		<img src="images/food/6.jpg"  alt="沙溢" />
		<img src="images/food/7.jpg"  alt="廖凡" />
		<img src="images/food/8.jpg"  alt="保剑锋" />
		<img src="images/food/9.jpg"  alt="姚晨" />
		<img src="images/food/10.jpg" alt="井柏然" />
		<img src="images/food/11.jpg" alt="陈楚河" />
		<img src="images/food/12.jpg" alt="李晨" />
		<img src="images/food/13.jpg" alt="段奕宏" />
		<img src="images/food/14.jpg" alt="朱亚文" />
		<img src="images/food/15.jpg" alt="苏有朋" />
		<img src="images/food/16.jpg" alt="张涵予" />
				</div>

        <div id="mianer">
            <div style = "margin-buttom:0px;padding:0;background:white">
        	<p style="color:#5D5D5D; font-size:16px; font-family:'Courier New', Courier, monospace">Restaurant in the school</p>
        	        	<hr style="margin-buttom:0px"/>
        	</div>
        	<h3>Top10</h3>

            <div id="part1">
            	<br style = "line-height:0">
            	
            	
            	<% 
            	request.getAttribute("num");
            	JdbcTemplete a = new JdbcTemplete();
				String sql = "select * from restaurant";
				ResultSet rs = null;
				int num ;
				rs = (ResultSet) a.query1(sql);
				
            	 while(rs.next())	
            	 
            	{
            	num = rs.getInt("num");
            	 %>
            	 
          	
            	<div id = "littepart" >					<img  alt=<%="top"+num%> src=<%=rs.getString("images")%> class = "topimages"><br><br>	
					<a href<%="=page/foreground/food/more.jsp?num="+num%> >
						<p style = "font-size:16px"><b><% out.print(rs.getString("Rname")); %></b></p>	
					</a> <br>
					评论：<% out.print(rs.getString("commemts")); %>	
            	</div> 
            		
            		
            		
            			
            	<%} %>
            	
            <%
            rs.close();
          
          
   

 %>
            </div>
        </div>
      <div id="footer">
                	<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
         	</div>
        </div>
    </div>
</body>
</html>
