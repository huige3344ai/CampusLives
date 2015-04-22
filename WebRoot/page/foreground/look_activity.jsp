<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'look_activity.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/activityapply.css">

  </head>
  
  
  <!-- 0000000 -->
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
     				
        </div>
         <!-- sssssssssssssssssssssssssssssssssssssss -->
         <div class="c_apply">
   <%
        			  request.setCharacterEncoding("utf-8");
        			  response.setCharacterEncoding("utf-8");
        			  
        			  String ac_id=request.getParameter("ac_id").toString();
        			  String ac_name=new String(request.getParameter("ac_name").getBytes("iso8859-1"),"utf-8");
        			   String ac_content=new String(request.getParameter("ac_content").getBytes("iso8859-1"),"utf-8");
        			   
        			  
        			  
        			 %>
   			
      <form>
         <table align="center" >
           <thead > <td></td><td><b><%=ac_name %></b></td></thead>
        			
             <tbody >
              	  <tr><td>活动ID</td>  <td><input type="button"   id="ac_id" value="<%=ac_id %>" /></td>   </tr> 
               	  <tr>
               	  <td colspan="2">
               	    <textarea rows="10" cols="50" > 
               	       <%=ac_content%>
               	    </textarea>
               	  </td>
               	  </tr>
               	  <tr><td> <% String return_look="return_look"; %>
                                <a href="LoginServlet?return_of_look=<%=return_look %>">返回</a>
                      </td></tr>
              
          </tbody>
          
         </table>
         
        </form>
     </div>
              <!--ssssssssssssssssssssssss -->
   
         <div id="footer">
         	<div class="footer_title">
         	<p>Copyright 2014 ZFSOFT All Rights Reserved. 标准版V1.0.0E-mail：888888@gmail.com</p>
         	<br/>
			<p>地址：广东省珠海市唐家湾金凤路6号 北京理工大学珠海学院 联系电话：13800138000</p>
         	</div>
         </div>
  </div>
  
	
   
  </body>
  <!-- 0000000 -->
  
  
</html>
