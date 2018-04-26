package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.impl.FileBizImpl;
import com.feng.dao.impl.FileDaoImpl;
import com.feng.entity.FileManage;
import com.feng.entity.Page;


public class ShowDownloadServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			FileBizImpl fileBizImpl = new FileBizImpl();
			FileDaoImpl fileDaoImpl = new FileDaoImpl();
			Vector<FileManage> files = fileDaoImpl.getFile();
			req.setAttribute("files", files);
			int currentPage=1;
	        int count=8;
	        String value = req.getParameter("page");
	        if(value!=null&&!"".equals(value)){         
	            currentPage = Integer.parseInt(value);
	        }
	        Page page  = fileBizImpl.findPage(currentPage, count);
	        System.out.println("files"+files.size());
	        req.setAttribute("page", page);
	        req.getRequestDispatcher("DownLoad.jsp?page="+currentPage).forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
