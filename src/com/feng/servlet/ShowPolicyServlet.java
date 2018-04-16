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
import com.feng.entity.Page;
import com.feng.entity.PubManage;

public class ShowPolicyServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			
			PubDaoImpl pubDaoImpl = new PubDaoImpl();
			PubBizImpl pubBizImpl = new PubBizImpl();
			Vector<PubManage> pubs = pubDaoImpl.getPolicyPub();
			req.setAttribute("pubs", pubs);
			
			int currentPage=8;
	        int count=2;
	        String value = req.getParameter("page");
	        if(value!=null&&!"".equals(value)){         
	            currentPage = Integer.parseInt(value);
	        }

	        Page page  = pubBizImpl.findPage(currentPage, count);
	        req.setAttribute("page", page);
	        req.getRequestDispatcher("PolicyRegulation.jsp?page="+currentPage).forward(req, resp);
			
			//req.getRequestDispatcher("PolicyRegulation.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
