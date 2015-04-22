package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbo.point.Point;
import com.dbo.point.PointDao2;

public class PointAddServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PointAddServlet() {
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
		response.setCharacterEncoding("UTF-8");
		
		if(request.getParameter("name")!=null){
			
			String num=request.getParameter("num").toString();
		
			String name=request.getParameter("name").toString();
		
			String Information=request.getParameter("Information").toString();
		
			String Images=request.getParameter("Images").toString();
			

		    if(PointDao2.InsertData(num, name, Information, Images)){
		    	request.getRequestDispatcher("page/PointView/background/PointShow.jsp").forward(request, response);
		    	
		    }
		    else {
		    	request.getRequestDispatcher("page/PointView/background/PointAdd.jsp").forward(request, response);
		    	
		    }
		}
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

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
