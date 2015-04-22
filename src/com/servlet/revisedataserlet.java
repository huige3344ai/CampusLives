package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbo.useDao;

public class revisedataserlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		if(request.getParameter("lostre_id")!=null){
			int id=Integer.parseInt(request.getParameter("lostre_id").toString());
			  if(request.getParameter("lostre_id")!=null){
				  request.setAttribute("id",id);
				  request.getRequestDispatcher("page/foreground/lostandfind/reviselost.jsp").forward(request, response);
			}else{
				response.sendRedirect("checkservlet");
			}
	}
		
		if(request.getParameter("findre_id")!=null){
			int id=Integer.parseInt(request.getParameter("findre_id").toString());
			  if(request.getParameter("findre_id")!=null){
				  request.setAttribute("id",id);
				  request.getRequestDispatcher("page/foreground/lostandfind/revisefind.jsp").forward(request, response);
			}else{
				response.sendRedirect("checkservlet");
			}}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}



}
