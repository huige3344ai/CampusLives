package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbo.useDao;

public class findservlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String namebase="find_message";
		String findername= request.getParameter("findername");//“≈ ß’ﬂ
		String findname= request.getParameter("findname");
		String description= request.getParameter("description");
		String address=request.getParameter("address");
		String tel=request.getParameter("tel");
		String promulgator=request.getParameter("promulgator");
		
		if((findername==null ||findername.length()<=0)||(findname==null ||findname.length()<=0)||(description==null ||description.length()<=0)||(address==null ||address.length()<=0)||(tel==null ||tel.length()<=0)){
			response.sendRedirect("page/foreground/lostandfind/find.jsp");
		}
		else if(useDao.InsertData(namebase,"findername", "findname", "description", "address","tel","promulgator",findername, findname, description, address, tel, promulgator)){
			request.getRequestDispatcher("page/foreground/lostandfind/findsuccess.jsp").forward(request, response);
		}
		else {
			response.sendRedirect("page/foreground/lostandfind/find.jsp");
		}
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

				this.doGet(request, response);
	}

}
