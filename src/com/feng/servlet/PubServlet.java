package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feng.biz.impl.PubBizImpl;
import com.feng.dao.impl.PubDaoImpl;
import com.feng.entity.PubManage;

public class PubServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			
			String pid = req.getParameter("pid");
			System.out.println("pubservlet"+pid);
			PubBizImpl pubBizImpl = new PubBizImpl();
			PubManage pub = pubBizImpl.findPubByID(pid);
			
			PubDaoImpl pubDaoImpl = new PubDaoImpl();
			Vector<PubManage> pubs = pubDaoImpl.getPub();
			req.setAttribute("pubs", pubs);
			req.setAttribute("pub", pub);
		
			req.getRequestDispatcher("DoPub.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
