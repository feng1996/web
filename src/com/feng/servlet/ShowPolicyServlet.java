package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.PubBiz;
import com.feng.biz.impl.LinkBizImpl;
import com.feng.biz.impl.PubBizImpl;
import com.feng.dao.impl.LinkDaoImpl;
import com.feng.dao.impl.PubDaoImpl;
import com.feng.entity.Link;
import com.feng.entity.PubManage;

public class ShowPolicyServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			
			PubDaoImpl pubDaoImpl = new PubDaoImpl();
			Vector<PubManage> pubs = pubDaoImpl.getPub();
			req.setAttribute("pubs", pubs);
			req.getRequestDispatcher("PolicyRegulation.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
