package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbo.useDao;

public class lostservlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String database="lost_message";
		String lostername= request.getParameter("lostername");//“≈ ß’ﬂ
		String lostname= request.getParameter("lostname");
		String description= request.getParameter("description");
		String address=request.getParameter("address");
		String tel=request.getParameter("tel");
		String promulgator=request.getParameter("promulgator");

		if((lostername==null ||lostername.length()<=0)||(lostname==null ||lostname.length()<=0)||(description==null ||description.length()<=0)||(address==null ||address.length()<=0)||(tel==null ||tel.length()<=0)){
			response.sendRedirect("page/foreground/lostandfind/lost.jsp");
		}
		else if(useDao.InsertData(database,"lostername", "lostname","description","address", "tel","promulgator",lostername, lostname, description, address, tel, promulgator)){
			request.getRequestDispatcher("page/foreground/lostandfind/lostsuccess.jsp").forward(request, response);
		}
		else{
			response.sendRedirect("page/foreground/lostandfind/lost.jsp");}
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

				this.doGet(request, response);
	}

}
