package com.feng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feng.biz.PubBiz;
import com.feng.biz.impl.PubBizImpl;


public class InsertPubServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pubTitle = request.getParameter("pubTitle");
		String pubType = request.getParameter("pubType");
		HttpSession session = request.getSession();
		String pubUser = (String)session.getAttribute("name");
		String pubTime = request.getParameter("pubTime");
		String pubContent = request.getParameter("pubContent");
		PubBiz pubBiz = new PubBizImpl();
		pubBiz.insert(pubTitle, pubType, pubUser, pubTime, pubContent);
		request.getRequestDispatcher("DoPub").forward(request, response);
		
	}

}
