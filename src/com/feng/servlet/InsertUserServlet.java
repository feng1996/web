package com.feng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.UserBiz;
import com.feng.biz.impl.UserBizImpl;


public class InsertUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		UserBiz userBiz = new UserBizImpl();
		userBiz.insert(userName, pwd);
		request.getRequestDispatcher("DoUser").forward(request, response);
		
	}

}
