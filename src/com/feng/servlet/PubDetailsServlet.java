package com.feng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.feng.biz.impl.PubBizImpl;
import com.feng.entity.PubManage;

public class PubDetailsServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			String pid = req.getParameter("pid");
			PubBizImpl pubBizImpl = new PubBizImpl();
			PubManage pub = pubBizImpl.findPubByID(pid);
			req.setAttribute("pub", pub);
			req.getRequestDispatcher("pubDetails.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
