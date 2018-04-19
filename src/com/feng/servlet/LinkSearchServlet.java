package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.feng.biz.impl.LinkBizImpl;

import com.feng.dao.impl.LinkDaoImpl;


import com.feng.entity.Link;


public class LinkSearchServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			String sw = req.getParameter("searchWord");
			System.out.println("searchWord"+sw);
			LinkDaoImpl linkDaoImpl = new LinkDaoImpl();
			Vector<Link> searchs = linkDaoImpl.getLinkSearch(sw);
			req.setAttribute("searchs", searchs);
			
			
			req.getRequestDispatcher("searchLink.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
