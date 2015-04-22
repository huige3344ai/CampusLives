package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class checkservlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("uname");
		int id=(Integer) session.getAttribute("isAdmin");
		if(id==1){
			response.sendRedirect("page/background/lostandfind/managerlostsearch.jsp");	
		}else
		{
			response.sendRedirect("page/foreground/lostandfind/lost.jsp");
		}
		
	}


	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

				this.doGet(request, response);
	}

}
