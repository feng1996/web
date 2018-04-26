package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.impl.PubBizImpl;
import com.feng.dao.impl.PubDaoImpl;
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
			
			int currentPage=1;
	        int count=8;
	        String value = req.getParameter("page");
	        if(value!=null&&!"".equals(value)){         
	            currentPage = Integer.parseInt(value);
	        }
	        String pubType = "政策法规";
	        Page page  = pubBizImpl.findPolicyPage(currentPage, count,pubType);
	        System.out.println("policy"+pubs.size());
	        req.setAttribute("page", page);
	        req.getRequestDispatcher("PolicyRegulation.jsp?page="+currentPage).forward(req, resp);
			
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
