package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feng.biz.PubBiz;
import com.feng.biz.impl.LinkBizImpl;
import com.feng.biz.impl.PubBizImpl;
import com.feng.dao.impl.LinkDaoImpl;
import com.feng.dao.impl.PubDaoImpl;
import com.feng.entity.Link;
import com.feng.entity.PubManage;

public class LinkServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			
			String lid = req.getParameter("lid");
			System.out.println("linkservlet"+lid);
			LinkBizImpl linkBizImpl = new LinkBizImpl();
			Link link = linkBizImpl.findLinkByID(lid);
			
			LinkDaoImpl linkDaoImpl = new LinkDaoImpl();
			Vector<Link> links = linkDaoImpl.getLink();
			req.setAttribute("links", links);
			req.setAttribute("link", link);
			String Id="3";
			HttpSession session=req.getSession();
			session.setAttribute("Id",Id);
			req.getRequestDispatcher("Manager.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
