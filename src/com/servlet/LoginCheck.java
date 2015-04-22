package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Login;
import com.dbo.user.User;

public class LoginCheck extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginCheck() {
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

		//doPost(request,response);

		
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
		String  user_name = request.getParameter("email");
		String password = request.getParameter("password");		
		Login login = new Login();
		String jud = login.checkLogin(user_name,password);
		//System.out.print(jud);
		if(jud.equals("success")){
			session.setAttribute("email", user_name);
			session.setAttribute("password", password);
			session.setAttribute("uname", login.getUname(user_name));
			session.setAttribute("isAdmin", login.getIsAm(user_name));
			response.sendRedirect("/CampusLives/page/foreground/main.jsp");
			
		}else{
			request.setAttribute("message","false");
			request.getRequestDispatcher("/page/foreground/login.jsp").forward(request, response);
		}
	}


}
