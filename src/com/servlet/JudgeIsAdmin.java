package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class JudgeIsAdmin extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		int id=(Integer) session.getAttribute("isAdmin");
	    if(id!=0&&id==1){ 
	    	System.out.print(":"+id);
	    response.sendRedirect("/CampusLives/page/foreground/suggestion_admin.jsp");
   
	    }else{
	    	
	    	response.sendRedirect("/CampusLives/page/foreground/suggest.jsp");	
	    	
	    }   
		
	}

}
