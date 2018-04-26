package com.feng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.impl.PubBizImpl;
import com.feng.entity.PubManage;


public class EditPubServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pid = request.getParameter("id");
		System.out.println("editservlet"+pid);
		PubBizImpl pubBizImpl = new PubBizImpl();
		PubManage pub = pubBizImpl.findPubByID(pid);
		request.setAttribute("pub", pub);
		request.getRequestDispatcher("edit.jsp").forward(request, response);
		
	}

}
