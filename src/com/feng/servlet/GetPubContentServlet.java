package com.feng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.PubBiz;
import com.feng.biz.impl.PubBizImpl;
import com.feng.entity.PubManage;

@WebServlet("/GetPubContentServlet")
public class GetPubContentServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			this.doPost(request, response);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String pubTitle = request.getParameter("pubTitle");
			PubBiz pubBiz = new PubBizImpl();
			PubManage pub = pubBiz.getPubByTitle(pubTitle);
			request.setAttribute("pubTitle",pub.getPubTitle());
			request.setAttribute("pubType",pub.getPubType());
			request.setAttribute("pubUser",pub.getPubUser());
			request.setAttribute("pubTime",pub.getPubTime());
			request.setAttribute("pubContent",pub.getPubContent());
			request.getRequestDispatcher("detail.jsp").forward(request, response);
		}

	}
