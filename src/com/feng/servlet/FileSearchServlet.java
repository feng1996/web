package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.dao.impl.FileDaoImpl;
import com.feng.entity.FileManage;

public class FileSearchServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			String sw = req.getParameter("searchWord");
			System.out.println("searchWord"+sw);
			FileDaoImpl fileDaoImpl = new FileDaoImpl();
			Vector<FileManage> searchs = fileDaoImpl.getFileSearch(sw);
			req.setAttribute("searchs", searchs);
			
			
			req.getRequestDispatcher("searchFile.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
