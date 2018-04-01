package com.feng.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.PubBiz;
import com.feng.biz.impl.PubBizImpl;
import com.feng.entity.PubManage;


@SuppressWarnings("serial")
public class UpdatePubServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pid = request.getParameter("pid");
		int id = Integer.parseInt(pid);
		System.out.println("updateint"+id);
		String pubTitle = request.getParameter("pubTitle");
		String pubType = request.getParameter("pubType");
		String pubUser = request.getParameter("pubUser");
		String pubTime = request.getParameter("pubTime");
		String pubContent = request.getParameter("pubContent");
		PubBiz pubBiz = new PubBizImpl();
		pubBiz.update(pubTitle, pubType, pubUser, pubTime, pubContent,id);
		request.getRequestDispatcher("DoPub").forward(request, response);
		
	}

}
