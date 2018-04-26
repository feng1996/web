package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.dao.impl.PubDaoImpl;
import com.feng.entity.PubManage;

public class HallSearchServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			String sw = req.getParameter("searchWord");
			System.out.println("searchWord"+sw);
			PubDaoImpl pubDaoImpl = new PubDaoImpl();
			Vector<PubManage> searchs = pubDaoImpl.getHallSearch(sw);
			req.setAttribute("searchs", searchs);
			
			
			req.getRequestDispatcher("searchHall.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
