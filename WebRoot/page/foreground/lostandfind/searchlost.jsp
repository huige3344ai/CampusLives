<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dbo.useDao"%>
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
<legend align="center" ><h2>失物登记记录</h2></legend>

        <table align="center" border="1">
           <tbody>
                <tr><td width=25>编号</td><td width=75>失物名称</td>  <td width=75>失者姓名</td>   <td width=225>物品描述</td>    <td width=100>失者地址</td> <td width=100>失者电话</td>  <td width=50>发布者</td></tr> 

     <%
              request.setCharacterEncoding("utf-8");
              response.setCharacterEncoding("utf-8");
              
             String sql="select * from lost_message";/////////////////////////
	       Vector V=(Vector)useDao.queryData(sql);//vector
	       Iterator it=V.iterator();

	       while(it.hasNext()){

	          Vector v=(Vector)it.next();

	           %>
	           <tr>
	           
	      <td>
	      <label ><%=v.get(0).toString() %></label></td>
            <td><label ><%=v.get(1).toString() %></label></td>
            <td><label ><%=v.get(2).toString() %></label></td>
            <td><label ><%=v.get(3).toString() %></label></td>
            <td><label ><%=v.get(4).toString() %></label></td>
            <td><label ><%=v.get(5).toString() %></label></td>
            <td><label ><%=v.get(6).toString() %></label></td>
             <%
              }
	         
	           
            %>
            </tr>
          </tbody>
         </table>

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
