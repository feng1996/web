package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feng.biz.FileBiz;
import com.feng.biz.impl.FileBizImpl;
import com.feng.dao.impl.FileDaoImpl;
import com.feng.entity.FileManage;

public class HotFileServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			
			String fid = req.getParameter("fid");
			System.out.println("fileservlet"+fid);
			FileBizImpl fileBizImpl = new FileBizImpl();
			FileManage hotFile = fileBizImpl.findFileByID(fid);
			
			FileDaoImpl fileDaoImpl = new FileDaoImpl();
			Vector<FileManage> hotFiles = fileDaoImpl.getHotFile();
			req.setAttribute("hotFiles", hotFiles);
			req.setAttribute("hotFile", hotFile);
			HttpSession session=req.getSession();
			session.setAttribute("hotFiles",hotFiles);
			req.getRequestDispatcher("ShowHome").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
