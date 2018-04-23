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
import com.feng.dao.impl.FileDaoImpl;
import com.feng.dao.impl.LinkDaoImpl;
import com.feng.dao.impl.PubDaoImpl;
import com.feng.entity.FileManage;
import com.feng.entity.Link;
import com.feng.entity.PubManage;

public class ShowHomeServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			PubDaoImpl pubDaoImpl = new PubDaoImpl();
			Vector<PubManage> news = pubDaoImpl.getNewsPubLimit();
			req.setAttribute("news", news);
			
			Vector<PubManage> policys = pubDaoImpl.getPolicyPubLimit();
			req.setAttribute("policys", policys);
			
			Vector<PubManage> sydwzps = pubDaoImpl.getSydwzpPubLimit();
			req.setAttribute("sydwzps", sydwzps);
			
			Vector<PubManage> zgzckss = pubDaoImpl.getZczgksPubLimit();
			req.setAttribute("zgzckss", zgzckss);
			
			Vector<PubManage> bszns = pubDaoImpl.getBsznsPubLimit();
			req.setAttribute("bszns", bszns);
			
			FileDaoImpl fileDaoImpl = new FileDaoImpl();
			Vector<FileManage> files = fileDaoImpl.getFileLimit();
			req.setAttribute("files", files);
			
			LinkDaoImpl linkDaoImpl = new LinkDaoImpl();
			Vector<Link> links = linkDaoImpl.getLink();
			req.setAttribute("links", links);
			
			
			req.getRequestDispatcher("Home.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
