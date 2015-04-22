package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Login;

public class ExchagePasswrodSerlvet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ExchagePasswrodSerlvet() {
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

		doPost(request,response);
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

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		HttpSession session  =  request.getSession();
		String user_name =  (String) session.getAttribute("email");
		String password = (String)session.getAttribute("password");
		
		String password_sumbit = request.getParameter("password");
		String password_ex = request.getParameter("password_correct");
		Login exChagePassword = new Login();		
		String result = "";
		if(password_sumbit.equals(password_ex)){
			
			request.setAttribute("message","not_different");
			request.getRequestDispatcher("/page/foreground/regist.jsp").forward(request, response);
			
		}else if(password_sumbit!=password_ex&&password_sumbit.equals(password)){
			result = exChagePassword.exChagePassword(user_name, password_ex);
			if(result.equals("success")){
				session.removeAttribute("email");
				session.removeAttribute("password");
				request.setAttribute("message","success_ex");
				request.getRequestDispatcher("/page/foreground/login.jsp").forward(request, response);		
			}
		}else{
			result = "false";
			request.setAttribute("message", result);
			request.getRequestDispatcher("/page/foreground/regist.jsp").forward(request, response);
			System.out.print(result);
			
		}
		
		
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
