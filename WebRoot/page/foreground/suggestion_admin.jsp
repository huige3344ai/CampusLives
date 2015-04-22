<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@ page language="java" import="java.util.*,com.bean.*,com.dbo.*,java.sql.ResultSet" pageEncoding="utf-8"%>
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
					<div class="suggestion">
				
                <table  border='1'cellspacing="0" cellpadding="0" class="suggestion_talbe">
					<tr>
						<td width="100">受理编号</td>
						<td width="100">提交人</td>
						<td width="400">内容</td>
						<td width="100">操作</td>
					</tr>
                	<%
            	    request.setCharacterEncoding("utf-8");
            	    response.setCharacterEncoding("utf-8"); 
            	    ResultSet rs = null;
            	    String result="";
            	     System.out.print("1:"+session.getAttribute("isAdmin")); 
            	    String  judge = session.getAttribute("isAdmin").toString();
            	    if(judge.equals("1")){    
            	    System.out.print("2:"+session.getAttribute("isAdmin"));          	  
            	    String sql="select num,sumbit_name,suggestion_textarea from suggestion";	
                	int  num=0;
                	String sumbit_name="";
                	String suggestion_textarea="";
                	JdbcTemplete jt = new JdbcTemplete();
                	rs = (ResultSet) jt.query1(sql);
					while(rs.next()){
					num = rs.getInt("num");
					sumbit_name = rs.getString("sumbit_name");
					suggestion_textarea = rs.getString("suggestion_textarea");
						%>
                	 <tr>                	 
						<td width="100"><%=num %></td>
						<td width="100"><%=sumbit_name %></td>
						<td width="400"><%=suggestion_textarea%></td>
						<td width="100"><a href=<%="/CampusLives/servlet/HandelSuggestion?num="+num %>>处理</a></td>
                	 </tr>
                	 
                	 <% 
                	 	}
                	 	
                	 }else{
                	 result ="非法用户无法获取数据！！！";
                	 }
 					
                	 %>
                </table>
                	                
         
                	</div>
                	
               			<div class="tissue" style="margin-top:-20px;">
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
