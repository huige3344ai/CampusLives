<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'activityapply.jsp' starting page</title>

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
   <form action="ActivityServlet" method="post">
        <table align="center" >
        <thead > <td></td><td><b>填写活动报名信息</b></td></thead>
        
             <tbody >
              <%  
               request.setCharacterEncoding("utf-8");
               response.setCharacterEncoding("utf-8");
               
	                 String ac_id1=(String)request.getParameter("v1");
	                String ac_name1=(String)request.getParameter("v2");
				 if (ac_name1!= null) { 
				
				ac_name1 = new String(request.getParameter("v2").getBytes("iso8859-1"),"utf-8"); 
				                                   
				                                     
				} 
				
				request.setAttribute("flag_apply_lov", 2);
                
               %>
             <tr>
                  <td>活动id：</td><td><input type="text" name="ac_id" value="<%=ac_id1%>"/></td> 
               
            </tr>
              <tr>
                  <td>活动名：</td><td><input type="text" name="ac_name" value="<%=ac_name1%>"/></td>  
                
               
            </tr>
              <tr>
                 <td>用户id：</td><td><input type="text" name="u_id" /></td>
               
            </tr>
            <tr>
                  <p> <td>用户姓名：</td><td><input type="text" name="u_name" /></td> </p> 
            </tr>
             <tr>
                  <p> <td>联系方式：</td><td><input type="text" name="u_tel" /></td> </p> 
            </tr>
            
            <tr >
                  <p align="center"> <td ></td>
                       <td><input type="submit" name="submitofapply" value="报名"/>
                            <input type="reset" name="resetofapply" value="重置"/>
                            <% String return_apply="return_apply"; %>
                                <a href="LoginServlet?return_of_add=<%=return_apply %>">返回</a>
                      </td>
                  </p> 
            </tr>
            
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
   
  <!-- mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm -->
  
  <!-- mmmmmmmmmmmmm -->
  
</html>
