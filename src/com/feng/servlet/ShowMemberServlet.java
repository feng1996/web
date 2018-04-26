package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.feng.dao.impl.MemberDaoImpl;
import com.feng.entity.Member;


public class ShowMemberServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			
			MemberDaoImpl memberDaoImpl = new MemberDaoImpl();
			Vector<Member> members = memberDaoImpl.getMember();
			req.setAttribute("members", members);
			req.getRequestDispatcher("MemberCenter.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
