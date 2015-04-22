
/*
 *  [check_cancel_apply.jsp]
 *  [delete_activity.jsp]
 *  ��alter_activity.jsp��
 *  
 *  
 *  ��� servlet �Ĺ����� 1.ȡ����2.ɾ����3.�޸Ļ
 *  
 *  
 * */



package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dbo.ConnectionOperation2;

public class ActivityServlet2 extends HttpServlet {
public static int is_delete=0;
	/**
	 * Constructor of the object.
	 */
	public ActivityServlet2() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		boolean b=false;
		 
		//增加报名
		if(request.getParameter("ap_no")!=null){
				int ap_no=Integer.parseInt(request.getParameter("ap_no").toString());
				System.out.print("\n ap_no="+ap_no);
				b=ConnectionOperation2.deleteApply(ap_no);
			
				 /* if(b){
					out.print("cancel apply success.....");
				}else{
					out.print("cancel apply fail.....");
				}*/
				if(b){String a_result="cancel apply success";
				request.setAttribute("a_result", a_result);
				request.getRequestDispatcher("page/foreground/app_add_alter_delet_result.jsp").forward(request, response);
					
				}else{
					String a_result="cancel apply  fail";
					
				request.setAttribute("a_result", a_result);
				request.getRequestDispatcher("page/foreground/app_add_alter_delet_result.jsp").forward(request, response);
				}
		}
		//删除活动
		if(request.getParameter("where")!=null){
		
		     String no=request.getParameter("AC_NO").toString();
            
             b=ConnectionOperation2.deleteActivity(no);
             /*if(b){
     			out.print("delete activity success ");
     		}else{
     			out.print("delete activity  fail ");
     		}*/
             if(b){String a_result="delete activity success";
				request.setAttribute("a_result", a_result);
				request.getRequestDispatcher("page/foreground/app_add_alter_delet_result.jsp").forward(request, response);
					
				}else{
					String a_result="delete activity  fail";
					
				request.setAttribute("a_result", a_result);
				request.getRequestDispatcher("page/foreground/app_add_alter_delet_result.jsp").forward(request, response);
				}
		
		}
		//修改
		if(request.getParameter("ac_no")!=null){
					
		   String no=request.getParameter("ac_no").toString();
		   String id=request.getParameter("ac_id").toString();
		   String name=new String(request.getParameter("ac_name").getBytes("iso8859-1"),"utf-8");
		   String time=new String(request.getParameter("ac_time").getBytes("iso8859-1"),"utf-8");
		   String place=new String(request.getParameter("ac_place").getBytes("iso8859-1"),"utf-8");
		   String p=new String(request.getParameter("p_name").getBytes("iso8859-1"),"utf-8");
		   String tel=new String(request.getParameter("p_tel").getBytes("iso8859-1"),"utf-8");
		   String content=new String(request.getParameter("ac_content").getBytes("iso8859-1"),"utf-8");
		   
String sql="update LoveActivity set ac_id='"+id+"',ac_name='"+name+"' ,ac_time='"+time+"' ,ac_place='"+place+"' ,p_name='"+p+"' ,p_tel='"+tel+"',ac_content='"+content+"' where ac_no='"+no+"'";
            b=ConnectionOperation2.updateActivity(sql);
            System.out.print("alter sql="+sql);
           /* if(b){
    			out.print("update activity success,,,,");
    		}else{
    			out.print("update activity fail,,,,");
    		}*/
            if(b){String a_result="update activity success";
			request.setAttribute("a_result", a_result);
			request.getRequestDispatcher("page/foreground/app_add_alter_delet_result.jsp").forward(request, response);
				
			}else{
				String a_result="update activity  fail";
				
			request.setAttribute("a_result", a_result);
			request.getRequestDispatcher("page/foreground/app_add_alter_delet_result.jsp").forward(request, response);
			}
		
		}

        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
        System.out.print("\n bp="+basePath);
		
		
		
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		doGet(request,response);
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
