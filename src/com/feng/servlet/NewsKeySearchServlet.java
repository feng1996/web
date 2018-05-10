package com.feng.servlet;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.dao.impl.PubDaoImpl;
import com.feng.entity.PubManage;

import net.sf.json.JSONArray;

public class NewsKeySearchServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			String keyword = req.getParameter("keyword");
			keyword = URLDecoder.decode(keyword,"UTF-8");
			System.out.println("keyword"+keyword);
			PubDaoImpl pubDaoImpl = new PubDaoImpl();
			List<String> listData = pubDaoImpl.getNewsKeyword(keyword);
		
			  //返回json格式
			  System.out.println(JSONArray.fromObject(listData));
			  //JSONArray.fromObject(listData);
			  resp.getWriter().write(JSONArray.fromObject(listData).toString());
			 }

			
			
		
		

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
