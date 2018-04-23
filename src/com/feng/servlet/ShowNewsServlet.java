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

public class ShowNewsServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			PubBizImpl pubBizImpl = new PubBizImpl();
			PubDaoImpl pubDaoImpl = new PubDaoImpl();
			Vector<PubManage> pubs = pubDaoImpl.getNewsPub();
			req.setAttribute("pubs", pubs);
			int currentPage=1;
	        int count=8;
	        String value = req.getParameter("page");
	        if(value!=null&&!"".equals(value)){         
	            currentPage = Integer.parseInt(value);
	        }
	        String pubType = "新闻中心";
	        Page page  = pubBizImpl.findNewsPage(currentPage, count,pubType);
	        System.out.println("news"+pubs.size());
	        req.setAttribute("page", page);
	        req.getRequestDispatcher("NewsCenter.jsp?page="+currentPage).forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
