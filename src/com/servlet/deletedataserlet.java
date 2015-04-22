package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbo.useDao;

public class deletedataserlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		if(request.getParameter("lost_id")!=null){
			int lostid=Integer.parseInt(request.getParameter("lost_id").toString());
			
			  if(useDao.DeleteData("lost_message",lostid)){
				  response.sendRedirect("page/foreground/lostandfind/deletesuccess.jsp");
			}else{
				response.sendRedirect("checkservlet");
			}
	}
		
		if(request.getParameter("find_id")!=null){
			int findid=Integer.parseInt(request.getParameter("find_id").toString());
			
			  if(useDao.DeleteData("find_message",findid)){
				  response.sendRedirect("page/foreground/lostandfind/deletesuccess.jsp");
			}else{
				response.sendRedirect("checkservlet");
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}



}
