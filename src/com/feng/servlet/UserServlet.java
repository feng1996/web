package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feng.biz.impl.UserBizImpl;
import com.feng.dao.impl.UserDaoImpl;
import com.feng.entity.User;

public class UserServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			
			String id = req.getParameter("id");
			System.out.println("userservlet"+id);
			UserBizImpl userBizImpl = new UserBizImpl();
			User user = userBizImpl.findUserByID(id);
			
			UserDaoImpl userDaoImpl = new UserDaoImpl();
			Vector<User> users = userDaoImpl.getUser();
			req.setAttribute("users", users);
			req.setAttribute("user", user);
			
			req.getRequestDispatcher("DoUser.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
